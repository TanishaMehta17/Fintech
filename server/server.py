from flask import Flask,jsonify,request
import datetime
import jwt
from flask_cors import CORS
import csv
fields=["customer_id","timestamp","event","scheme"]

app=Flask(__name__)
CORS(app)

##Home_loan
@app.route('/home_loan',methods=['POST'])
def home_loan():

   # token=request.headers.get('token')

   # if not token:
        #return jsonify({'message':'token is missing'}), 401

    try:
        #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('Password')
        token=request.header.get('token')
        if Password=='0000':
            print("Password varified")
        data=request.get_json()
        print(data)
        print(datetime.datetime.now())
        return jsonify({'message': 'Your home loan is accepted ,you will get the loan soon '}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401
    


##Gold loan 

@app.route('/gold_loan',methods=['POST'])
def gold_loan():

   # token=request.headers.get('token')

   # if not token:
        #return jsonify({'message':'token is missing'}), 401

    try:
        #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('Password')
        if Password=='0000':
            print("Password varified")
        data=request.get_json()
        print(data)
        print(datetime.datetime.now())
        return jsonify({'message': 'Your Gold loan is accepted ,you will get the loan soon '}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401
    


    ##education loan 
@app.route('/education_loan',methods=['POST'])
def education_loan():
   # token=request.headers.get('token')

   # if not token:
        #return jsonify({'message':'token is missing'}), 401

    try:
        #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('Password')
        if Password=='0000':
            print("Password varified")
        data=request.get_json()
        print(data)
        print(datetime.datetime.now())
        return jsonify({'message': 'Your education loan is accepted ,you will get the loan soon '}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401
    


##car loan
@app.route('/car_loan',methods=['POST'])
def car_loan():
   # token=request.headers.get('token')

   # if not token:
        #return jsonify({'message':'token is missing'}), 401

    try:
        #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('Password')
        if Password=='0000':
            print("Password varified")
        data=request.get_json()
        print(data)
        print(datetime.datetime.now())
        return jsonify({'message': 'Your Car loan is accepted ,you will get the loan soon '}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401

## netfelx
@app.route('/netflix',methods=['POST'])
def netflix():
    token=request.headers.get('token')

    if not token:
        return jsonify({'message':'token is missing'}), 401

    try:
        #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('pin')
        
        if Password=='1134':
            print("Password varified")
            data=request.get_json()
            print(data)
            print(datetime.datetime.now())
            data["customer_id"]="sdvasfdbadfbe"
            data["timestamp"]=datetime.datetime.now()
            with open("data.csv","a") as file:
                writer=csv.DictWriter(file,fieldnames=fields)
                writer.writerow(data)
            return jsonify({'message': 'Your payment has been transferred successfully'}), 200
        else:
            return jsonify({'message': 'Invalid Pin try again!'}), 400
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401
    


## disney + hostar
@app.route('/Disney_hotstar',methods=['POST'])
def disney():
   # token=request.headers.get('token')

   # if not token:
        #return jsonify({'message':'token is missing'}), 401

    try:
        #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('Password')
        if Password=='0000':
            print("Password varified")
        data=request.get_json()
        print(data)
        print(datetime.datetime.now())
        return jsonify({'message': 'Your payment has been transferred successfully '}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401
    



## spotify
@app.route('/spotify',methods=['POST'])
def spotify():
   # token=request.headers.get('token')

   # if not token:
        #return jsonify({'message':'token is missing'}), 401

    try:
        #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('Password')
        if Password=='0000':
            print("Password varified")
        data=request.get_json()
        print(data)
        print(datetime.datetime.now())
        return jsonify({'message': 'Your payment has been transferred successfully '}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401
    

    

    
##Water bill
@app.route('/water_bill',methods=['POST'])
def water_bill():
   # token=request.headers.get('token')

   # if not token:
        #return jsonify({'message':'token is missing'}), 401

    try:
        #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('Password')
        if Password=='0000':
            print("Password varified")
        data=request.get_json()
        print(data)
        print(datetime.datetime.now())
        return jsonify({'message': 'Your home water bill is paid '}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401
    

##internet bill
@app.route('/internet_bill',methods=['POST'])
def internet_bill():
   # token=request.headers.get('token')

   # if not token:
        #return jsonify({'message':'token is missing'}), 401

    try:
        #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('Password')
        if Password=='0000':
            print("Password varified")
        data=request.get_json()
        print(data)
        print(datetime.datetime.now())
        return jsonify({'message': 'Your home internet bill is paid '}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401
    

##electricity
@app.route('/electricity_bill',methods=['POST'])
def electricity_bill():
   # token=request.headers.get('token')

   # if not token:
        #return jsonify({'message':'token is missing'}), 401

    try:
        #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('Password')
        if Password=='0000':
            print("Password varified")
        data=request.get_json()
        print(data)
        print(datetime.datetime.now())
        return jsonify({'message': 'Your home electricity bill is paid '}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401

## transfer the bank to bank 
@app.route('/bank_to_bank_sbi',methods=['POST'])
def bank_to_bank():
   # token=request.headers.get('token')

   # if not token:
        #return jsonify({'message':'token is missing'}), 401

    try:
        #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('Password')
        if Password=='0000':
            print("Password varified")
        data=request.get_json()
        print(data)
        print(datetime.datetime.now())
        return jsonify({'message': 'Your payment is succeccfull '}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401

##icici
# @app.route('/bank_to_bank_icici',methods=['POST'])
# def bank_to_bank():
#    # token=request.headers.get('token')

#    # if not token:
#         #return jsonify({'message':'token is missing'}), 401

#     try:
#         #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
#         Password=request.headers.get('Password')
#         if Password=='0000':
#             print("Password varified")
#         data=request.get_json()
#         print(data)
#         print(datetime.datetime.now())
#         return jsonify({'message': 'Your payment is succeccfull '}), 200
#     except jwt.ExpiredSignatureError:
#         return jsonify({'message': 'token is expired'}), 401
#     except jwt.InvalidTokenError:
#         return jsonify({'message': 'Invalid token'}), 401


# @app.route('/bank_to_bank_india ',methods=['POST'])
# def bank_to_bank():
#    # token=request.headers.get('token')

#    # if not token:
#         #return jsonify({'message':'token is missing'}), 401

#     try:
#         #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
#         Password=request.headers.get('Password')
#         if Password=='0000':
#             print("Password varified")
#         data=request.get_json()
#         print(data)
#         print(datetime.datetime.now())
#         return jsonify({'message': 'Your payment is succeccfull '}), 200
#     except jwt.ExpiredSignatureError:
#         return jsonify({'message': 'token is expired'}), 401
#     except jwt.InvalidTokenError:
#         return jsonify({'message': 'Invalid token'}), 401


##recharge 
@app.route('/recharge_vi',methods=['POST'])
def recharge():
   # token=request.headers.get('token')

   # if not token:
        #return jsonify({'message':'token is missing'}), 401

    try:
        #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('Password')
        if Password=='0000':
            print("Password varified")
        data=request.get_json()
        print(data)
        print(datetime.datetime.now())
        return jsonify({'message': 'Your Recharge was successfull'}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401


# @app.route('/recharge_jio',methods=['POST'])
# def recharge():
#    # token=request.headers.get('token')

#    # if not token:
#         #return jsonify({'message':'token is missing'}), 401

#     try:
#         #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
#         Password=request.headers.get('Password')
#         if Password=='0000':
#             print("Password varified")
#         data=request.get_json()
#         print(data)
#         print(datetime.datetime.now())
#         return jsonify({'message': 'Your Recharge was successfull'}), 200
#     except jwt.ExpiredSignatureError:
#         return jsonify({'message': 'token is expired'}), 401
#     except jwt.InvalidTokenError:
#         return jsonify({'message': 'Invalid token'}), 401


# @app.route('/recharge_airtel',methods=['POST'])
# def recharge():
#    # token=request.headers.get('token')

#    # if not token:
#         #return jsonify({'message':'token is missing'}), 401

#     try:
#         #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
#         Password=request.headers.get('Password')
#         if Password=='0000':
#             print("Password varified")
#         data=request.get_json()
#         print(data)
#         print(datetime.datetime.now())
#         return jsonify({'message': 'Your Recharge was successfull is paid '}), 200
#     except jwt.ExpiredSignatureError:
#         return jsonify({'message': 'token is expired'}), 401
#     except jwt.InvalidTokenError:
#         return jsonify({'message': 'Invalid token'}), 401



##donation 

@app.route('/donation_careclub',methods=['POST'])
def donationcareclub():
   # token=request.headers.get('token')

   # if not token:
        #return jsonify({'message':'token is missing'}), 401

    try:
        #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('Password')
        if Password=='0000':
            print("Password varified")
        data=request.get_json()
        print(data)
        print(datetime.datetime.now())
        return jsonify({'message': 'Donated Successfully to care club'}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401


@app.route('/donation_headfoundation',methods=['POST'])
def donationheadfoundation():
   # token=request.headers.get('token')

   # if not token:
        #return jsonify({'message':'token is missing'}), 401

    try:
        #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('Password')
        if Password=='0000':
            print("Password varified")
        data=request.get_json()
        print(data)
        print(datetime.datetime.now())
        return jsonify({'message': 'Donated Successfully to headfoundation'}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401

## card 
# birthday card
@app.route('/birthday_card',methods=['POST'])
def birthdaycard():
   # token=request.headers.get('token')

   # if not token:
        #return jsonify({'message':'token is missing'}), 401

    try:
        #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('Password')
        if Password=='0000':
            print("Password varified")
        data=request.get_json()
        print(data)
        print(datetime.datetime.now())
        return jsonify({'message': 'Birthday card created'}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401






# EID card

@app.route('/eid_card',methods=['POST'])
def eid_card():
   # token=request.headers.get('token')

   # if not token:
        #return jsonify({'message':'token is missing'}), 401

    try:
        #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('Password')
        if Password=='0000':
            print("Password varified")
        data=request.get_json()
        print(data)
        print(datetime.datetime.now())
        return jsonify({'message': 'EID card created'}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401


#marrige
# birthday card

@app.route('/marrige_card',methods=['POST'])
def marrigecard():
   # token=request.headers.get('token')

   # if not token:
        #return jsonify({'message':'token is missing'}), 401

    try:
        #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('Password')
        if Password=='0000':
            print("Password varified")
        data=request.get_json()
        print(data)
        print(datetime.datetime.now())
        return jsonify({'message': 'marrige card created'}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401






#home insurance 

@app.route('/home_insurance',methods=['POST'])
def homeinsurance():
   # token=request.headers.get('token')

   # if not token:
        #return jsonify({'message':'token is missing'}), 401

    try:
        #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('Password')
        if Password=='0000':
            print("Password varified")
        data=request.get_json()
        print(data)
        print(datetime.datetime.now())
        return jsonify({'message': 'EMI paid of home insurance '}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401

# family insurance
@app.route('/family_insurance',methods=['POST'])
def family_insurance():
   # token=request.headers.get('token')

   # if not token:
        #return jsonify({'message':'token is missing'}), 401

    try:
        #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('Password')
        if Password=='0000':
            print("Password varified")
        data=request.get_json()
        print(data)
        print(datetime.datetime.now())
        return jsonify({'message': 'EMI paid of Family insurance '}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401



# health insurance
@app.route('/health_insurance',methods=['POST'])
def health_insurance():
   # token=request.headers.get('token')

   # if not token:
        #return jsonify({'message':'token is missing'}), 401

    try:
        #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('Password')
        if Password=='0000':
            print("Password varified")
        data=request.get_json()
        print(data)
        print(datetime.datetime.now())
        return jsonify({'message': 'EMI paid of health insurance '}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401


# KYC
@app.route('/kyc_pan',methods=['POST'])
def kyc_pan():
   # token=request.headers.get('token')

   # if not token:
        #return jsonify({'message':'token is missing'}), 401

    try:
        #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('Password')
        if Password=='0000':
            print("Password varified")
        data=request.get_json()
        print(data)
        print(datetime.datetime.now())
        return jsonify({'message': 'KYC will be update thorught pan'}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401


# voter id 
@app.route('/kyc_voterid',methods=['POST'])
def kyc_voterid():
   # token=request.headers.get('token')

   # if not token:
        #return jsonify({'message':'token is missing'}), 401

    try:
        #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('Password')
        if Password=='0000':
            print("Password varified")
        data=request.get_json()
        print(data)
        print(datetime.datetime.now())
        return jsonify({'message': 'KYC will be  update thorught voter id'}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401


# dv kyc 
@app.route('/kyc_dv',methods=['POST'])
def kyc_dv():
   # token=request.headers.get('token')

   # if not token:
        #return jsonify({'message':'token is missing'}), 401

    try:
        #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('Password')
        if Password=='0000':
            print("Password varified")
        data=request.get_json()
        print(data)
        print(datetime.datetime.now())
        return jsonify({'message': 'KYC will be update thorught driving licence'}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401

# adharcard
@app.route('/Kyc_adharcard',methods=['POST'])
def Kyc_adharcard():
   # token=request.headers.get('token')

   # if not token:
        #return jsonify({'message':'token is missing'}), 401

    try:
        #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('Password')
        if Password=='0000':
            print("Password varified")
        data=request.get_json()
        print(data)
        print(datetime.datetime.now())
        return jsonify({'message': 'KYC will be update thorught Adharcard'}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401

# phone number  
@app.route('/kyc_phone_number',methods=['POST'])
def phone_number_kyc():
   # token=request.headers.get('token')

   # if not token:
        #return jsonify({'message':'token is missing'}), 401

    try:
        #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('Password')
        if Password=='0000':
            print("Password varified")
        data=request.get_json()
        print(data)
        print(datetime.datetime.now())
        return jsonify({'message': 'KYC will be update thorught phone numbet'}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401









# FD
@app.route('/fd',methods=['POST'])
def fd():
   # token=request.headers.get('token')

   # if not token:
        #return jsonify({'message':'token is missing'}), 401

    try:
        #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('Password')
        if Password=='0000':
            print("Password varified")
        data=request.get_json()
        print(data)
        print(datetime.datetime.now())
        return jsonify({'message': 'FD create successfully'}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401




# rD
@app.route('/rd',methods=['POST'])
def rd():
   # token=request.headers.get('token')

   # if not token:
        #return jsonify({'message':'token is missing'}), 401

    try:
        #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('Password')
        if Password=='0000':
            print("Password varified")
        data=request.get_json()
        print(data)
        print(datetime.datetime.now())
        return jsonify({'message': 'RD create successfully'}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401




# APY
@app.route('/apy',methods=['POST'])
def apy():
   # token=request.headers.get('token')

   # if not token:
        #return jsonify({'message':'token is missing'}), 401

    try:
        #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('Password')
        if Password=='0000':
            print("Password varified")
        data=request.get_json()
        print(data)
        print(datetime.datetime.now())
        return jsonify({'message': 'APY  appplication create successfully'}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401
#fasttag
@app.route('/fast_tag',methods=['POST'])
def fast_tag():
   # token=request.headers.get('token')

   # if not token:
        #return jsonify({'message':'token is missing'}), 401

    try:
        #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('Password')
        if Password=='0000':
            print("Password varified")
        data=request.get_json()
        print(data)
        print(datetime.datetime.now())
        return jsonify({'message': 'Fast tag create successfully'}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401
    
    #person to person
@app.route('/person_to_person',methods=['POST'])
def person_to_person():
   # token=request.headers.get('token')

   # if not token:
        #return jsonify({'message':'token is missing'}), 401

    try:
        #data =jwt.decode(token,app.config['SECRET_KEY'],algorithms=['HS256'])
        Password=request.headers.get('Password')
        if Password=='0000':
            print("Password varified")
        data=request.get_json()
        print(data)
        print(datetime.datetime.now())
        return jsonify({'message': 'Payment successfully'}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401


app.run(port=5000)