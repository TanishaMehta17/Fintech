from flask import Flask,jsonify,request
from flask_bcrypt import Bcrypt
import datetime
import jwt
from flask_cors import CORS
import csv
from secrets import token_hex
from pymongo.mongo_client import MongoClient
from pymongo.server_api import ServerApi
from twilio.rest import Client
import _asyncio

account_sid = 'AC0b9e34f54953501d64bbd38cf8512485'
auth_token = '5b6ba9183b4864626489a5ca5fd1dc35'


uri = "mongodb+srv://nikhilmishra1710:8Zu21EFFj9i7H-4@cluster0.l1azsq8.mongodb.net/?retryWrites=true&w=majority"
client = MongoClient(uri, server_api=ServerApi('1'))
try:
    client.admin.command('ping')
    db=client.get_database('users')
    print("Pinged your deployment. You successfully connected to MongoDB!")
except Exception as e:
    print(e)
    
fields=["customer_id","timestamp","event","scheme"]

app=Flask(__name__)
app.config['SECRET_KEY']=token_hex()
bcrypt = Bcrypt(app)
CORS(app)

def write_file(data):
    with open("data.csv","a",newline='') as file:
        writer=csv.DictWriter(file,fieldnames=fields)
        writer.writerow(data)

def addTransactiondetails(data):
    db.transactions.insert_one(data)

@app.route('/register', methods=['POST'])
def register():
    data = request.get_json()
    print(data)
    data["password"] = bcrypt.generate_password_hash(request.headers.get('password')).decode('utf-8')
    data["pin"] = bcrypt.generate_password_hash(str(request.headers.get("pin"))).decode('utf-8')
    temp=token_hex()
    data["cid"]=temp
    print(data)
    db.users.insert_one(data)
    return jsonify({'message': 'User created successfully'}), 201

@app.route('/login',methods=["POST"])
def login():
    try:
        auth = request.headers.get("username")
        auth_pwd=request.headers.get("password")
        data=request.get_json()
        user=db.users.find_one({'name':auth},{'_id':0})
        
        if not user or not bcrypt.check_password_hash(user["password"], str(auth_pwd)):
            return jsonify({'message': 'Invalid username or password'}), 400

        token = jwt.encode({'id': user["cid"], 'pin':user["pin"], 'exp': datetime.datetime.now() + datetime.timedelta(hours=1)},
                            app.config['SECRET_KEY'], algorithm='HS256')
        print("gddd")
        data["customer_id"]=user["cid"]
        data["timestamp"]=str(datetime.datetime.now())
        write_file(data)

        return jsonify({'token': token}), 200
    except Exception as e:
        print(e)


def sendOTP(mobile):
    client = Client(account_sid, auth_token)
    verification = client.verify.v2.services('VA81c6f1840c525317f7dcd615a3defb9e').verifications.create(to=mobile, channel='sms')

def checkOTP(mobile,code):
    client = Client(account_sid, auth_token)
    verification_check = client.verify.v2.services('VA81c6f1840c525317f7dcd615a3defb9e').verification_checks.create(to=mobile, code=code)
    print(verification_check.status)
    if (verification_check.status=="approved"):
        return True
    else:
        return False

@app.route('/check_details',methods=["POST"])
def check_details():
    data = request.get_json()
    print(data)
    try:
        user=db.users.find_one({'username':data["name"]},{'_id':0})
        email=db.users.find_one({'email':data['email']},{'_id':0})
        print(user,email)
        if not user and not email:
            mobile='+91'+data["mobile"]
            sendOTP(mobile)
            print("Hello")
            return jsonify({'message': 'OTP sent Success'}), 200
        else:
            return jsonify({"message":"Username and email id already exist"}), 400
    except Exception as e:
        print(e)
        return jsonify({"message":"Some Error occured"}), 404
        
@app.route('/verify_user',methods=["POST"])
def verify_user():
    data=request.get_json()
    otp=request.headers.get("otp")
    print(data,otp)
    mob='+91'+data["mobile"]
    if checkOTP(mob,otp):
        return jsonify({'message': 'OTP verification Successful'}), 200
    else:
        return jsonify({'message': 'OTP verification Unsuccessful'}), 400

@app.route('/payment_interface',methods=["POST"])
def payment_interface():
    token=request.headers.get('token')

    if not token:
        return jsonify({'message':'token is missing'}), 401

    try:
        data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('pin')
        if bcrypt.check_password_hash(str(data["pin"]), Password):
            data2=request.get_json()
            data2["customer_id"]=data["id"]
            data2["timestamp"]=str(datetime.datetime.now())
            write_file(data2)
            addTransactiondetails(data2)
            
            return jsonify({'message': 'Your payment has been transferred successfully'}), 200
        else:
            return jsonify({'message': 'Invalid Pin try again!'}), 400
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401




app.run(port=5000)
