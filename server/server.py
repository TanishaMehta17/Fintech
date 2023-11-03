from flask import Flask,jsonify,request
from flask_bcrypt import Bcrypt
import datetime
import jwt
from flask_cors import CORS
import csv
from secrets import token_hex
from pymongo.mongo_client import MongoClient
from pymongo.server_api import ServerApi

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
    data = {'username':request.headers.get("username"),'email':request.headers.get("email")}
    print(data)
    data["password"] = bcrypt.generate_password_hash(request.headers.get('password')).decode('utf-8')
    data["pin"] = bcrypt.generate_password_hash(request.headers.get("pin")).decode('utf-8')
    temp=token_hex()
    data["cid"]=temp
    db.users.insert_one(data)
    return jsonify({'message': 'User created successfully'}), 201

@app.route('/login',methods=["POST"])
def login():
    auth = request.headers.get("username")
    auth_pwd=request.headers.get("password")
    data=request.get_json()
    user=db.users.find_one({'username':auth},{'_id':0})

    if not user or not bcrypt.check_password_hash(user["password"], auth_pwd):
        return jsonify({'message': 'Invalid username or password'}), 400

    token = jwt.encode({'id': user["cid"], 'pin':user["pin"], 'exp': datetime.datetime.now() + datetime.timedelta(hours=1)},
                      app.config['SECRET_KEY'], algorithm='HS256')
    
    data["customer_id"]=user["cid"]
    data["timestamp"]=str(datetime.datetime.now())
    write_file(data)
    
    return jsonify({'token': token}), 200

@app.route('/home_loan',methods=['POST'])
def home_loan():

    token=request.headers.get('token')

    if not token:
        return jsonify({'message':'token is missing'}), 401

    try:
        data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('pin')
        if data["pin"]==Password:
            data2=request.get_json()
            data2["customer_id"]=data["id"]
            data2["timestamp"]=str(datetime.datetime.now())
            with open("data.csv","a") as file:
                writer=csv.DictWriter(file,fieldnames=fields)
                writer.writerow(data2)
            return jsonify({'message': 'Your payment has been transferred successfully'}), 200
        else:
            return jsonify({'message': 'Invalid Pin try again!'}), 400
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401

@app.route('/gold_loan',methods=['POST'])
def gold_loan():

    token=request.headers.get('token')

    if not token:
        return jsonify({'message':'token is missing'}), 401

    try:
        data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('pin')
        if data["pin"]==Password:
            data2=request.get_json()
            data2["customer_id"]=data["id"]
            data2["timestamp"]=str(datetime.datetime.now())
            with open("data.csv","a") as file:
                writer=csv.DictWriter(file,fieldnames=fields)
                writer.writerow(data2)
            return jsonify({'message': 'Your payment has been transferred successfully'}), 200
        else:
            return jsonify({'message': 'Invalid Pin try again!'}), 400
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401

@app.route('/education_loan',methods=['POST'])
def education_loan():
    token=request.headers.get('token')

    if not token:
        return jsonify({'message':'token is missing'}), 401

    try:
        data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('pin')
        if data["pin"]==Password:
            data2=request.get_json()
            data2["customer_id"]=data["id"]
            data2["timestamp"]=str(datetime.datetime.now())
            with open("data.csv","a") as file:
                writer=csv.DictWriter(file,fieldnames=fields)
                writer.writerow(data2)
            return jsonify({'message': 'Your payment has been transferred successfully'}), 200
        else:
            return jsonify({'message': 'Invalid Pin try again!'}), 400
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401
    

@app.route('/car_loan',methods=['POST'])
def car_loan():
    token=request.headers.get('token')

    if not token:
        return jsonify({'message':'token is missing'}), 401

    try:
        data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('pin')
        if data["pin"]==Password:
            data2=request.get_json()
            data2["customer_id"]=data["id"]
            data2["timestamp"]=str(datetime.datetime.now())
            with open("data.csv","a") as file:
                writer=csv.DictWriter(file,fieldnames=fields)
                writer.writerow(data2)
            return jsonify({'message': 'Your payment has been transferred successfully'}), 200
        else:
            return jsonify({'message': 'Invalid Pin try again!'}), 400
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401

@app.route('/netflix',methods=['POST'])
def netflix():
    token=request.headers.get('token')

    if not token:
        return jsonify({'message':'token is missing'}), 401

    try:
        data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('pin')
        if data["pin"]==Password:
            data2=request.get_json()
            data2["customer_id"]=data["id"]
            data2["timestamp"]=str(datetime.datetime.now())
            with open("data.csv","a") as file:
                writer=csv.DictWriter(file,fieldnames=fields)
                writer.writerow(data2)
            return jsonify({'message': 'Your payment has been transferred successfully'}), 200
        else:
            return jsonify({'message': 'Invalid Pin try again!'}), 400
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401


@app.route('/Disney_hotstar',methods=['POST'])
def disney():
    token=request.headers.get('token')

    if not token:
            return jsonify({'message':'token is missing'}), 401

    try:
        data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('pin')
        if data["pin"]==Password:
            data2=request.get_json()
            data2["customer_id"]=data["id"]
            data2["timestamp"]=str(datetime.datetime.now())
            with open("data.csv","a") as file:
                writer=csv.DictWriter(file,fieldnames=fields)
                writer.writerow(data2)
            return jsonify({'message': 'Your payment has been transferred successfully'}), 200
        else:
            return jsonify({'message': 'Invalid Pin try again!'}), 400
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401

@app.route('/spotify',methods=['POST'])
def spotify():
    token=request.headers.get('token')

    if not token:
        return jsonify({'message':'token is missing'}), 401

    try:
        data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('pin')
        if data["pin"]==Password:
            data2=request.get_json()
            data2["customer_id"]=data["id"]
            data2["timestamp"]=str(datetime.datetime.now())
            with open("data.csv","a") as file:
                writer=csv.DictWriter(file,fieldnames=fields)
                writer.writerow(data2)
            return jsonify({'message': 'Your payment has been transferred successfully'}), 200
        else:
            return jsonify({'message': 'Invalid Pin try again!'}), 400
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401

@app.route('/water_bill',methods=['POST'])
def water_bill():
    token=request.headers.get('token')

    if not token:
        return jsonify({'message':'token is missing'}), 401

    try:
        data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('pin')
        if data["pin"]==Password:
            data2=request.get_json()
            data2["customer_id"]=data["id"]
            data2["timestamp"]=str(datetime.datetime.now())
            with open("data.csv","a") as file:
                writer=csv.DictWriter(file,fieldnames=fields)
                writer.writerow(data2)
            return jsonify({'message': 'Your payment has been transferred successfully'}), 200
        else:
            return jsonify({'message': 'Invalid Pin try again!'}), 400
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401

@app.route('/payment_interface',methods=["POST"])
def payment_interface():
    token=request.headers.get('token')

    if not token:
        return jsonify({'message':'token is missing'}), 401

    try:
        data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('pin')
        if data["pin"]==Password:
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

@app.route('/internet_bill',methods=['POST'])
def internet_bill():
    token=request.headers.get('token')

    if not token:
        return jsonify({'message':'token is missing'}), 401

    try:
        data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('pin')
        if data["pin"]==Password:
            data2=request.get_json()
            data2["customer_id"]=data["id"]
            data2["timestamp"]=str(datetime.datetime.now())
            with open("data.csv","a") as file:
                writer=csv.DictWriter(file,fieldnames=fields)
                writer.writerow(data2)
            return jsonify({'message': 'Your payment has been transferred successfully'}), 200
        else:
            return jsonify({'message': 'Invalid Pin try again!'}), 400
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401

@app.route('/electricity_bill',methods=['POST'])
def electricity_bill():
    token=request.headers.get('token')

    if not token:
        return jsonify({'message':'token is missing'}), 401

    try:
        data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('pin')
        if data["pin"]==Password:
            data2=request.get_json()
            data2["customer_id"]=data["id"]
            data2["timestamp"]=str(datetime.datetime.now())
            with open("data.csv","a") as file:
                writer=csv.DictWriter(file,fieldnames=fields)
                writer.writerow(data2)
            return jsonify({'message': 'Your payment has been transferred successfully'}), 200
        else:
            return jsonify({'message': 'Invalid Pin try again!'}), 400
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401

@app.route('/bank_to_bank',methods=['POST'])
def bank_to_bank():
    token=request.headers.get('token')

    if not token:
        return jsonify({'message':'token is missing'}), 401

    try:
        data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('pin')
        if data["pin"]==Password:
            data2=request.get_json()
            data2["customer_id"]=data["id"]
            data2["timestamp"]=str(datetime.datetime.now())
            with open("data.csv","a") as file:
                writer=csv.DictWriter(file,fieldnames=fields)
                writer.writerow(data2)
            return jsonify({'message': 'Your payment has been transferred successfully'}), 200
        else:
            return jsonify({'message': 'Invalid Pin try again!'}), 400
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401

##recharge 
@app.route('/recharge_vi',methods=['POST'])
def recharge():
    token=request.headers.get('token')

    if not token:
        return jsonify({'message':'token is missing'}), 401

    try:
        data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('pin')
        if data["pin"]==Password:
            data2=request.get_json()
            data2["customer_id"]=data["id"]
            data2["timestamp"]=str(datetime.datetime.now())
            with open("data.csv","a") as file:
                writer=csv.DictWriter(file,fieldnames=fields)
                writer.writerow(data2)
            return jsonify({'message': 'Your payment has been transferred successfully'}), 200
        else:
            return jsonify({'message': 'Invalid Pin try again!'}), 400
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401

##donation 
@app.route('/donation_careclub',methods=['POST'])
def donationcareclub():
    token=request.headers.get('token')

    if not token:
        return jsonify({'message':'token is missing'}), 401

    try:
        data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('pin')
        if data["pin"]==Password:
            data2=request.get_json()
            data2["customer_id"]=data["id"]
            data2["timestamp"]=str(datetime.datetime.now())
            with open("data.csv","a") as file:
                writer=csv.DictWriter(file,fieldnames=fields)
                writer.writerow(data2)
            return jsonify({'message': 'Your payment has been transferred successfully'}), 200
        else:
            return jsonify({'message': 'Invalid Pin try again!'}), 400
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401


@app.route('/donation_headfoundation',methods=['POST'])
def donationheadfoundation():
    token=request.headers.get('token')

    if not token:
        return jsonify({'message':'token is missing'}), 401

    try:
        data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('pin')
        if data["pin"]==Password:
            data2=request.get_json()
            data2["customer_id"]=data["id"]
            data2["timestamp"]=str(datetime.datetime.now())
            with open("data.csv","a") as file:
                writer=csv.DictWriter(file,fieldnames=fields)
                writer.writerow(data2)
            return jsonify({'message': 'Your payment has been transferred successfully'}), 200
        else:
            return jsonify({'message': 'Invalid Pin try again!'}), 400
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401

## card 
# birthday card
@app.route('/birthday_card',methods=['POST'])
def birthdaycard():
    token=request.headers.get('token')

    if not token:
        return jsonify({'message':'token is missing'}), 401

    try:
        data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('pin')
        if data["pin"]==Password:
            data2=request.get_json()
            data2["customer_id"]=data["id"]
            data2["timestamp"]=str(datetime.datetime.now())
            with open("data.csv","a") as file:
                writer=csv.DictWriter(file,fieldnames=fields)
                writer.writerow(data2)
            return jsonify({'message': 'Your payment has been transferred successfully'}), 200
        else:
            return jsonify({'message': 'Invalid Pin try again!'}), 400
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401

# EID card
@app.route('/eid_card',methods=['POST'])
def eid_card():
    token=request.headers.get('token')

    if not token:
        return jsonify({'message':'token is missing'}), 401

    try:
        data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('pin')
        if data["pin"]==Password:
            data2=request.get_json()
            data2["customer_id"]=data["id"]
            data2["timestamp"]=str(datetime.datetime.now())
            with open("data.csv","a") as file:
                writer=csv.DictWriter(file,fieldnames=fields)
                writer.writerow(data2)
            return jsonify({'message': 'Your payment has been transferred successfully'}), 200
        else:
            return jsonify({'message': 'Invalid Pin try again!'}), 400
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401
#marrige
# birthday card

@app.route('/marrige_card',methods=['POST'])
def marrigecard():
    token=request.headers.get('token')

    if not token:
        return jsonify({'message':'token is missing'}), 401

    try:
        data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('pin')
        if data["pin"]==Password:
            data2=request.get_json()
            data2["customer_id"]=data["id"]
            data2["timestamp"]=str(datetime.datetime.now())
            with open("data.csv","a") as file:
                writer=csv.DictWriter(file,fieldnames=fields)
                writer.writerow(data2)
            return jsonify({'message': 'Your payment has been transferred successfully'}), 200
        else:
            return jsonify({'message': 'Invalid Pin try again!'}), 400
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401

#home insurance 

@app.route('/home_insurance',methods=['POST'])
def homeinsurance():
    token=request.headers.get('token')

    if not token:
        return jsonify({'message':'token is missing'}), 401

    try:
        data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('pin')
        if data["pin"]==Password:
            data2=request.get_json()
            data2["customer_id"]=data["id"]
            data2["timestamp"]=str(datetime.datetime.now())
            with open("data.csv","a") as file:
                writer=csv.DictWriter(file,fieldnames=fields)
                writer.writerow(data2)
            return jsonify({'message': 'Your payment has been transferred successfully'}), 200
        else:
            return jsonify({'message': 'Invalid Pin try again!'}), 400
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401

# family insurance
@app.route('/family_insurance',methods=['POST'])
def family_insurance():
    token=request.headers.get('token')

    if not token:
        return jsonify({'message':'token is missing'}), 401

    try:
        data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('pin')
        if data["pin"]==Password:
            data2=request.get_json()
            data2["customer_id"]=data["id"]
            data2["timestamp"]=str(datetime.datetime.now())
            with open("data.csv","a") as file:
                writer=csv.DictWriter(file,fieldnames=fields)
                writer.writerow(data2)
            return jsonify({'message': 'Your payment has been transferred successfully'}), 200
        else:
            return jsonify({'message': 'Invalid Pin try again!'}), 400
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401

# health insurance
@app.route('/health_insurance',methods=['POST'])
def health_insurance():
    token=request.headers.get('token')

    if not token:
        return jsonify({'message':'token is missing'}), 401

    try:
        data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('pin')
        if data["pin"]==Password:
            data2=request.get_json()
            data2["customer_id"]=data["id"]
            data2["timestamp"]=str(datetime.datetime.now())
            with open("data.csv","a") as file:
                writer=csv.DictWriter(file,fieldnames=fields)
                writer.writerow(data2)
            return jsonify({'message': 'Your payment has been transferred successfully'}), 200
        else:
            return jsonify({'message': 'Invalid Pin try again!'}), 400
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401


# KYC
@app.route('/kyc_pan',methods=['POST'])
def kyc_pan():
    token=request.headers.get('token')

    if not token:
        return jsonify({'message':'token is missing'}), 401

    try:
        data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('pin')
        if data["pin"]==Password:
            data2=request.get_json()
            data2["customer_id"]=data["id"]
            data2["timestamp"]=str(datetime.datetime.now())
            with open("data.csv","a") as file:
                writer=csv.DictWriter(file,fieldnames=fields)
                writer.writerow(data2)
            return jsonify({'message': 'Your payment has been transferred successfully'}), 200
        else:
            return jsonify({'message': 'Invalid Pin try again!'}), 400
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401


# voter id 
@app.route('/kyc_voterid',methods=['POST'])
def kyc_voterid():
    token=request.headers.get('token')

    if not token:
        return jsonify({'message':'token is missing'}), 401

    try:
        data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('pin')
        if data["pin"]==Password:
            data2=request.get_json()
            data2["customer_id"]=data["id"]
            data2["timestamp"]=str(datetime.datetime.now())
            with open("data.csv","a") as file:
                writer=csv.DictWriter(file,fieldnames=fields)
                writer.writerow(data2)
            return jsonify({'message': 'Your payment has been transferred successfully'}), 200
        else:
            return jsonify({'message': 'Invalid Pin try again!'}), 400
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401


# dv kyc 
@app.route('/kyc_dv',methods=['POST'])
def kyc_dv():
    token=request.headers.get('token')

    if not token:
        return jsonify({'message':'token is missing'}), 401

    try:
        data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('pin')
        if data["pin"]==Password:
            data2=request.get_json()
            data2["customer_id"]=data["id"]
            data2["timestamp"]=str(datetime.datetime.now())
            with open("data.csv","a") as file:
                writer=csv.DictWriter(file,fieldnames=fields)
                writer.writerow(data2)
            return jsonify({'message': 'Your payment has been transferred successfully'}), 200
        else:
            return jsonify({'message': 'Invalid Pin try again!'}), 400
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401

# adharcard
@app.route('/Kyc_adharcard',methods=['POST'])
def Kyc_adharcard():
    token=request.headers.get('token')

    if not token:
        return jsonify({'message':'token is missing'}), 401

    try:
        data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('pin')
        if data["pin"]==Password:
            data2=request.get_json()
            data2["customer_id"]=data["id"]
            data2["timestamp"]=str(datetime.datetime.now())
            with open("data.csv","a") as file:
                writer=csv.DictWriter(file,fieldnames=fields)
                writer.writerow(data2)
            return jsonify({'message': 'Your payment has been transferred successfully'}), 200
        else:
            return jsonify({'message': 'Invalid Pin try again!'}), 400
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401

# phone number  
@app.route('/kyc_phone_number',methods=['POST'])
def phone_number_kyc():
    token=request.headers.get('token')

    if not token:
        return jsonify({'message':'token is missing'}), 401

    try:
        data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('pin')
        if data["pin"]==Password:
            data2=request.get_json()
            data2["customer_id"]=data["id"]
            data2["timestamp"]=str(datetime.datetime.now())
            with open("data.csv","a") as file:
                writer=csv.DictWriter(file,fieldnames=fields)
                writer.writerow(data2)
            return jsonify({'message': 'Your payment has been transferred successfully'}), 200
        else:
            return jsonify({'message': 'Invalid Pin try again!'}), 400
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401

# FD
@app.route('/fd',methods=['POST'])
def fd():
    token=request.headers.get('token')

    if not token:
        return jsonify({'message':'token is missing'}), 401

    try:
        data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('pin')
        if data["pin"]==Password:
            data2=request.get_json()
            data2["customer_id"]=data["id"]
            data2["timestamp"]=str(datetime.datetime.now())
            with open("data.csv","a") as file:
                writer=csv.DictWriter(file,fieldnames=fields)
                writer.writerow(data2)
            return jsonify({'message': 'Your payment has been transferred successfully'}), 200
        else:
            return jsonify({'message': 'Invalid Pin try again!'}), 400
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401




# rD
@app.route('/rd',methods=['POST'])
def rd():
    token=request.headers.get('token')

    if not token:
        return jsonify({'message':'token is missing'}), 401

    try:
        data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('pin')
        if data["pin"]==Password:
            data2=request.get_json()
            data2["customer_id"]=data["id"]
            data2["timestamp"]=str(datetime.datetime.now())
            with open("data.csv","a") as file:
                writer=csv.DictWriter(file,fieldnames=fields)
                writer.writerow(data2)
            return jsonify({'message': 'Your payment has been transferred successfully'}), 200
        else:
            return jsonify({'message': 'Invalid Pin try again!'}), 400
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401
    
# APY
@app.route('/apy',methods=['POST'])
def apy():
    token=request.headers.get('token')

    if not token:
        return jsonify({'message':'token is missing'}), 401

    try:
        data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('pin')
        if data["pin"]==Password:
            data2=request.get_json()
            data2["customer_id"]=data["id"]
            data2["timestamp"]=str(datetime.datetime.now())
            with open("data.csv","a") as file:
                writer=csv.DictWriter(file,fieldnames=fields)
                writer.writerow(data2)
            return jsonify({'message': 'Your payment has been transferred successfully'}), 200
        else:
            return jsonify({'message': 'Invalid Pin try again!'}), 400
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401
    
#fasttag
@app.route('/fast_tag',methods=['POST'])
def fast_tag():
    token=request.headers.get('token')

    if not token:
        return jsonify({'message':'token is missing'}), 401

    try:
        data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('pin')
        if data["pin"]==Password:
            data2=request.get_json()
            data2["customer_id"]=data["id"]
            data2["timestamp"]=str(datetime.datetime.now())
            with open("data.csv","a") as file:
                writer=csv.DictWriter(file,fieldnames=fields)
                writer.writerow(data2)
            return jsonify({'message': 'Your payment has been transferred successfully'}), 200
        else:
            return jsonify({'message': 'Invalid Pin try again!'}), 400
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401
    
    #person to person
@app.route('/person_to_person',methods=['POST'])
def person_to_person():
    token=request.headers.get('token')

    if not token:
        return jsonify({'message':'token is missing'}), 401

    try:
        data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('pin')
        if data["pin"]==Password:
            data2=request.get_json()
            data2["customer_id"]=data["id"]
            data2["timestamp"]=str(datetime.datetime.now())
            with open("data.csv","a") as file:
                writer=csv.DictWriter(file,fieldnames=fields)
                writer.writerow(data2)
            return jsonify({'message': 'Your payment has been transferred successfully'}), 200
        else:
            return jsonify({'message': 'Invalid Pin try again!'}), 400
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401


app.run(port=5000)
