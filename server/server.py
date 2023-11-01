from flask import Flask,jsonify,request
import datetime
import jwt

app=Flask(__name__)

##Home_loan
@app.route('/Home_loan',methods=['POST'])
def Home_loan():
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
        return jsonify({'message': 'Your home loan is accepted ,you will get the loan soon '}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401
    


##Gold loan 
@app.route('/Gold_loan',methods=['POST'])
def Home_loan():
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
@app.route('/Education loan',methods=['POST'])
def Education_loan():
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
@app.route('/Car loan',methods=['POST'])
def Car_loan():
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
@app.route('/Netflix',methods=['POST'])
def Netflix():
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
        return jsonify({'message': 'Your payment has been transferred successfully'}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401
    


## disney + hostar
@app.route('/Disney + hotstar',methods=['POST'])
def Disney():
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
@app.route('/Spotify',methods=['POST'])
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
@app.route('/water bill',methods=['POST'])
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

@app.route('/water bill',methods=['POST'])
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


@app.route('/electricity bill',methods=['POST'])
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
@app.route('/bank to bank sbi',methods=['POST'])
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
@app.route('/bank to bank icici',methods=['POST'])
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


@app.route('/bank to bank india ',methods=['POST'])
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


##recharge 
@app.route('/recharge vi',methods=['POST'])
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


@app.route('/recharge jio',methods=['POST'])
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


@app.route('/recharge airtel',methods=['POST'])
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
        return jsonify({'message': 'Your Recharge was successfull is paid '}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401



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
        return jsonify({'message': 'Donated Successfully to headfoundation'}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401

## card 
# birthday card

@app.route('/birthday card',methods=['POST'])
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

@app.route('/EID card',methods=['POST'])
def EIDcard():
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

@app.route('/marrige card',methods=['POST'])
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

@app.route('/home insurance',methods=['POST'])
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
@app.route('/family insurance',methods=['POST'])
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
@app.route('/family insurance',methods=['POST'])
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
        return jsonify({'message': 'EMI paid of Family insurance '}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401


# KYC
@app.route('/KYCpan',methods=['POST'])
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
        return jsonify({'message': 'KYC will be update thorught pan'}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401


# voter id 
@app.route('/KYCvoterid',methods=['POST'])
def kycpan():
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
@app.route('/KYCdv',methods=['POST'])
def kycdv():
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
@app.route('/Kycadharcard',methods=['POST'])
def Kycadharcard():
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
@app.route('/KYC',methods=['POST'])
def phonenumberkyc():
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
@app.route('/FD',methods=['POST'])
def FD():
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
@app.route('/RD',methods=['POST'])
def RD():
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
@app.route('/APY',methods=['POST'])
def APY():
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
        return jsonify({'message': 'APY create successfully'}), 200
    except jwt.ExpiredSignatureError:
        return jsonify({'message': 'token is expired'}), 401
    except jwt.InvalidTokenError:
        return jsonify({'message': 'Invalid token'}), 401
