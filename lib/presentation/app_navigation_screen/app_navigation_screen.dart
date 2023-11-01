import 'package:flutter/material.dart';import 'package:tanisha_s_application14/core/app_export.dart';class AppNavigationScreen extends StatelessWidget {const AppNavigationScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: 375.h, child: Column(children: [Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("App Navigation", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 20.h), child: Text("Check your app's UI from the below demo screens of your app.", textAlign: TextAlign.center, style: TextStyle(color: appTheme.blueGray40001, fontSize: 16.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.black90003)])), Expanded(child: SingleChildScrollView(child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [GestureDetector(onTap: () {onTapDashboardprofile(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Dashboard profile", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapAnalytics(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Analytics", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapAnalyticsbropdox(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Analytics bropdox", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapAnalyticslinkedin(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Analytics linkedin", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapAnalyticsapple(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Analytics apple", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapKYC(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("KYC", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapKYCUPGATEPAN(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("KYC UPGATEPAN", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapKYCUPDATEVOTERID(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("KYC UPDATE VOTERID", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapKYCUPDATEDRIVINFLICENCE(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("KYC UPDATE DRIVINF LICENCE", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapKYCUPDATEAADHAR(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("KYC UPDATE AADHAR ", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapKYCUPDATEPHONENO(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("KYC UPDATE PHONE NO", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapFASTAG(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("FAS TAG", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapFASTAGDETAILS(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("FAS TAG DETAILS", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapFASTAGPAYMENT(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("FAS TAG PAYMENT ", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapFD(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("FD ", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapNormalFDPayment(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("normal FD Payment", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapTAXSAVINGFDPayment(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("TAX SAVING FD Payment", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapCUMULATIVEFDPayment(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("CUMULATIVE FD Payment", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapNONCUMULATIVEFDPayment(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("NON-CUMULATIVE FD Payment", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapSENIORCITIZENFDPayment(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("SENIOR CITIZEN FD Payment", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapNEFT(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("NEFT", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapRD(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("RD", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapRDoptions(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("RD options", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapNORMALRDPayment(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("NORMAL  RD Payment", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapSENIOURCITIZENRDPayment(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("  SENIOUR CITIZEN RD Payment", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapAPY(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("APY", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapNetflixpayment(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Netflix payment", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapNETFIIXPaymentamount(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("NETFIIX Payment amount", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapNETFLIX(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("NETFLIX", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapNETFLIXConfirmationSuccessfultransfer(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("NETFLIX Confirmation Successful transfer", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapNETFLIXConfirmationSuccessfultransferOne(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("NETFLIX Confirmation Successful transfer One", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapWaterbillReceipt(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("water bill  Receipt", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapWaterbillViewReceipt(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("water bill View Receipt", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapCharity(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Charity", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapWaterbillPayBill(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("water bill Pay Bill", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapWATERBILLPAYMENT(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("WATER BILL PAYMENT", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapBANKTOBANKTRANSFERConfirmationindian(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("BANK  TO BANK TRANSFER Confirmation indian", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapLoandetailsTabContainer(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Loan details - Tab Container", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapBankTobankTransfer(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Bank To bank Transfer", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapTransferconfirmationBANKTOBANKindian(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Transfer confirmation BANK TO BANK indian ", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapBankTobankTransferamountindian(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Bank To bank Transfer amount indian", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapBanktobankConfirmationSuccessfultransferindian(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("bank to bank Confirmation Successful transfer indian", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapJIORechargeconfirmation(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("JIO Recharge confirmation", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapJioConfirmationSuccessfultransferOne(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("jio Confirmation Successful transfer One", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapJioConfirmationSuccessfultransfer(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("jio Confirmation Successful transfer", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapHomeloandetailpageinformation(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("home loan detail page information", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapHomeLoanpaymentdone(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("home Loan payment done", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapJioMOBILERECHARGE(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("jio MOBILE RECHARGE", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapMainRecharge(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Main Recharge", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapLoanpayment(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Loan payment ", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapMainLoangraph(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("main Loan  graph", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapNEFTBANKSDETAILS(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("NEFT BANKS DETAILS", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapFDPayment(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("FD Payment", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapPASSWORDFORFD(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("PASSWORD FOR FD", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapFDConfirmationSuccessfultransfer(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("FD Confirmation Successful transfer", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapRDPayment(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("RD Payment", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapPASSWORDFORRD(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("PASSWORD FOR RD", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapRDConfirmationSuccessfultransfer(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("RD Confirmation Successful transfer", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapKYCConfirmationSuccessfultransfer(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("KYC Confirmation Successful transfer", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapDISNEYHOTSTARpayment(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("DISNEY +HOTSTAR  payment", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapDISNEYHOSTSTARPayment(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("DISNEY + HOSTSTAR Payment", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapPAYMENTOFDISNEYHOTSTAR(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("PAYMENT OF DISNEY + HOTSTAR", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapDISNEYHOSTARConfirmationSuccessfultransfer(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("DISNEY + HOSTARConfirmation Successful transfer", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapDISNEYHOSTARConfirmationSuccessfultransferrecipt(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("DISNEY + HOSTARConfirmation Successful transfer reci[pt", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapDONATIONPASSWORD(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("DONATION PASSWORD  ", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapCareclubrecipt(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("care club recipt", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapGoldLoanDETAILS(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("gold Loan DETAILS", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapGoldLoanPAYMENT(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("gold Loan PAYMENT", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapGoldloanPasswordpayment(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text(" gold loan Password payment", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapGoldLoanrecipyt(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("gold Loan recipyt", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapTransferconfirmationBANKTOBANKicici(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Transfer confirmation BANK TO BANK  icici", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapBankTobankTransferamounticic(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Bank To bank Transfer amount icic", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapBANKTOBANKTRANSFERConfirmationicic(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("BANK  TO BANK TRANSFER Confirmation icic", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapBanktobankConfirmationSuccessfultransfericici(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("bank to bank Confirmation Successful transfer icici", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapCareDonationDetail(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("care Donation Detail", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapAirtelRechargeconfirmation(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("airtel Recharge confirmation", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapAirtelRECHrge(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text(" airtel RECHrge", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapAirtelConfirmationSuccessfultransferrecipt(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("airtel Confirmation Successful transfer recipt", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapAirtelConfirmationSuccessfultransfer(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("airtel Confirmation Successful transfer", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapInternetbillPayBill(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("inter net bill Pay Bill", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapInternetbillPassword(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("inter net bill Password", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapInternetbillViewReceipt(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("internet bill View Receipt", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapInternetbillReceipt(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("internet bill Receipt", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapTOCHOSETHEMODEOFTRANSFER(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text(" TO CHOSE THE MODE OF TRANSFER", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapSPOTIFYpayment(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("SPOTIFY payment", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapSPOTIFYPaymentOne(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("SPOTIFY Payment One", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapSPOTIFYPAYMENTENTRE(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("SPOTIFY PAYMENT ENTRE", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapSPOTIFYConfirmationSuccessfultransfer(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("SPOTIFY Confirmation Successful transfer", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapSPOTIFYConfirmationSuccessfultransferrecipt(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("SPOTIFY Confirmation Successful transfer recipt", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapEducationLoanrecipt(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("education Loan recipt", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapEducationloanpaymentdetails(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("education loan payment details", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapEDUCATIONLOANPAYMENT(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("EDUCATION LOAN PAYMENT", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapEDUCATIONLOADEDUCATIONLOANPASSWORDPAYMENTPAGE(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("EDUCATION LOAD EDUCATION LOAN PASSWORD PAYMENT PAGE", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapTransferconfirmationBANKTOBANKsbi(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Transfer confirmation BANK TO BANKsbi  ", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapBankTobankTransferamountsbi(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Bank To bank Transfer amountsbi", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapBANKTOBANKTRANSFERConfirmationsbi(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("BANK  TO BANK TRANSFER Confirmationsbi", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapBanktobankConfirmationSuccessfultransfersbi(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("bank to bank Confirmation Successful transfersbi", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapViRechargeconfirmation(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("vi Recharge confirmation", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapVIPAYMENT(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("VI PAYMENT", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapVIConfirmationSuccessfultransferrecipt(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("VI Confirmation Successful transfer recipt", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapVIConfirmationSuccessfultransfer(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("VI Confirmation Successful transfer", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapHeadsdonationDetail(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("heads donation Detail", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapHeadsfoundation(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Heads foundation", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapHeadsfoundationrecipt(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("heads foundation recipt", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapPayBill(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Pay Bill", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapViewelectricalReceipt(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("View electrical  Receipt", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapPayBillAMOUNTelectricity(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Pay Bill AMOUNT electricity", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapELECTRICITYBILLPAYMENT(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("ELECTRICITY BILL PAYMENT ", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapPayBillCONFIGRATIONelectricity(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Pay Bill CONFIGRATION electricity", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapCARLOANPAYMENT(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("CAR LOAN PAYMENT", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapCARLOANPASSWORDPAGE(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("CAR LOAN PASSWORD PAGE", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapCarLoanrecipt(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("car Loan recipt", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapCARLoan(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("CAR Loan", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapOnboardingOne(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("OnboardingOne", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapOnboarding(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Onboarding", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapLogin(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Login", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapSignup(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Signup", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapSetFingerprint(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Set Fingerprint", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapOnboardingTwo(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("OnboardingTwo", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapCardSettings(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Card Settings", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapOptverification(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("opt verification", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapSetFingerprintscanning(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Set Fingerprint scanning", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapScanner(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Scanner", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapProfile(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Profile", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapManageProfile(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Manage Profile", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapSetting(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Setting", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapNotification(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Notification", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapMobileNumberPinChange(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Mobile Number (Pin Change)", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapOtpvarification(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Otp varification", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapPopAddpin(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Pop Add pin", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapDashboard(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Dashboard", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapLogout(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Logout", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapATMLocator(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("ATM Locator", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapComplain(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Complain", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapContact(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Contact", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapBirthdayGiftgiftcardConfirmationSuccessfultransfer(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("birthday Gift gift card Confirmation Successful transfer", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapGiftCardsOne(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Gift  Cards One", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapBirthdayGiftcardsDETAILS(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("birthday Gift  cards DETAILS", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapBirthdayGiftGIFTCARDSConfirmation(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("birthday Gift GIFT CARDS Confirmation", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapBirthdayGiftGIFTCARDConfirmationSuccessfultransferOne(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("birthday Gift GIFT CARD Confirmation Successful transfer One", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapBirthdayGiftGIFTCARDTransferconfirmation(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("birthday Gift GIFT CARD Transfer confirmation", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapMoneyTransfer(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Money Transfer", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapPersontopersonTransfer(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("person to person Transfer", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapPersontopersonTransferamount(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("person to personTransfer amount", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapPersontopersonConfirmation(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("person to person Confirmation", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapMoeroptions(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Moer options", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapHOMEInsuranceInfo(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("HOME Insurance Info ", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapHOMEINSURANCETransferconfirmation(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("HOME INSURANCE Transfer confirmation", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapHomeinsuranceConfirmationSuccessfultransfer(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("home insurance Confirmation Successful transfer", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapHomeinssuranceConfirmationSuccessfultransferrecipt(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("home inssurance Confirmation Successful transfer recipt", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapHOMEInsuranceplans(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("HOME Insurance plans", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapHOMEINSURANCEConfirmation(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("HOME INSURANCE Confirmation", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapEIDgiftSuccessfultransferrecipt(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("EID  gift  Successful transfer recipt", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapEIDGiftcards(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("EID Gift  cards", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapEIDgiftcardTransferconfirmation(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("EID  gift card Transfer confirmation", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapEIDpasswordfortransfareconformation(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("EID  password for transfare conformation", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapEidgiftConfirmationSuccessfultransfer(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("eid gift Confirmation Successful transfer", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapEIDTransferconfirmation(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("EID Transfer confirmation", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapPersontopersonConfirmationSuccessfultransfer(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("person to person Confirmation Successful transfer", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapPersontopersonConfirmationSuccessfultransferrecipt(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("person to person Confirmation Successful transfer recipt", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapGiftcards(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Gift  cards", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapMarrigeTransferconfirmationOne(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("marrige Transfer confirmation One", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapMarrigegiftcardepassword(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("marrige gift carde password", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapMarriagegiftConfirmationSuccessfultransfer(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("marriage gift Confirmation Successful transfer", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapMarrigegiftcardrecipt(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("marrige gift card recipt", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapHealthConfirmationSuccessfultransfer(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Health Confirmation Successful transfer", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapHealthConfirmationSuccessfultransferrecipt(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Health Confirmation Successful transfer recipt", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapHealthInsuranceInfo(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("health Insurance Info ", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapHealthTransferconfirmation(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("health Transfer confirmation", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapHealthInsuranceplans(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Health Insurance plans", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapHealthConfirmation(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("health Confirmation", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapMarrigeTransferconfirmation(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text(" marrige Transfer confirmation", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapFamilyTransferconfirmationINSURANCE(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("family Transfer confirmation INSURANCE", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapFamilyInsurance(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("family Insurance", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapFamilyInsuranceplans(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("family Insurance plans", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapFamilyInsuranceInfo(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("family Insurance Info ", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapFamilyINSURANCEConfirmation(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("family INSURANCE Confirmation", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapFamilyConfirmationSuccessfultransfer(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("family Confirmation Successful transfer", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)]))), GestureDetector(onTap: () {onTapFamilyConfirmationSuccessfultransferrecipt(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("Family Confirmation Successful transfer recipt", textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90003, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40001)])))]))))])))); } 
/// Navigates to the dashboardProfileScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the dashboardProfileScreen.
onTapDashboardprofile(BuildContext context) { Navigator.pushNamed(context, AppRoutes.dashboardProfileScreen); } 
/// Navigates to the analyticsScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the analyticsScreen.
onTapAnalytics(BuildContext context) { Navigator.pushNamed(context, AppRoutes.analyticsScreen); } 
/// Navigates to the analyticsBropdoxScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the analyticsBropdoxScreen.
onTapAnalyticsbropdox(BuildContext context) { Navigator.pushNamed(context, AppRoutes.analyticsBropdoxScreen); } 
/// Navigates to the analyticsLinkedinScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the analyticsLinkedinScreen.
onTapAnalyticslinkedin(BuildContext context) { Navigator.pushNamed(context, AppRoutes.analyticsLinkedinScreen); } 
/// Navigates to the analyticsAppleScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the analyticsAppleScreen.
onTapAnalyticsapple(BuildContext context) { Navigator.pushNamed(context, AppRoutes.analyticsAppleScreen); } 
/// Navigates to the kycScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the kycScreen.
onTapKYC(BuildContext context) { Navigator.pushNamed(context, AppRoutes.kycScreen); } 
/// Navigates to the kycUpgatepanScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the kycUpgatepanScreen.
onTapKYCUPGATEPAN(BuildContext context) { Navigator.pushNamed(context, AppRoutes.kycUpgatepanScreen); } 
/// Navigates to the kycUpdateVoteridScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the kycUpdateVoteridScreen.
onTapKYCUPDATEVOTERID(BuildContext context) { Navigator.pushNamed(context, AppRoutes.kycUpdateVoteridScreen); } 
/// Navigates to the kycUpdateDrivinfLicenceScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the kycUpdateDrivinfLicenceScreen.
onTapKYCUPDATEDRIVINFLICENCE(BuildContext context) { Navigator.pushNamed(context, AppRoutes.kycUpdateDrivinfLicenceScreen); } 
/// Navigates to the kycUpdateAadharScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the kycUpdateAadharScreen.
onTapKYCUPDATEAADHAR(BuildContext context) { Navigator.pushNamed(context, AppRoutes.kycUpdateAadharScreen); } 
/// Navigates to the kycUpdatePhoneNoScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the kycUpdatePhoneNoScreen.
onTapKYCUPDATEPHONENO(BuildContext context) { Navigator.pushNamed(context, AppRoutes.kycUpdatePhoneNoScreen); } 
/// Navigates to the fasTagScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the fasTagScreen.
onTapFASTAG(BuildContext context) { Navigator.pushNamed(context, AppRoutes.fasTagScreen); } 
/// Navigates to the fasTagDetailsScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the fasTagDetailsScreen.
onTapFASTAGDETAILS(BuildContext context) { Navigator.pushNamed(context, AppRoutes.fasTagDetailsScreen); } 
/// Navigates to the fasTagPaymentScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the fasTagPaymentScreen.
onTapFASTAGPAYMENT(BuildContext context) { Navigator.pushNamed(context, AppRoutes.fasTagPaymentScreen); } 
/// Navigates to the fdScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the fdScreen.
onTapFD(BuildContext context) { Navigator.pushNamed(context, AppRoutes.fdScreen); } 
/// Navigates to the normalFdPaymentScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the normalFdPaymentScreen.
onTapNormalFDPayment(BuildContext context) { Navigator.pushNamed(context, AppRoutes.normalFdPaymentScreen); } 
/// Navigates to the taxSavingFdPaymentScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the taxSavingFdPaymentScreen.
onTapTAXSAVINGFDPayment(BuildContext context) { Navigator.pushNamed(context, AppRoutes.taxSavingFdPaymentScreen); } 
/// Navigates to the cumulativeFdPaymentScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the cumulativeFdPaymentScreen.
onTapCUMULATIVEFDPayment(BuildContext context) { Navigator.pushNamed(context, AppRoutes.cumulativeFdPaymentScreen); } 
/// Navigates to the nonCumulativeFdPaymentScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the nonCumulativeFdPaymentScreen.
onTapNONCUMULATIVEFDPayment(BuildContext context) { Navigator.pushNamed(context, AppRoutes.nonCumulativeFdPaymentScreen); } 
/// Navigates to the seniorCitizenFdPaymentScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the seniorCitizenFdPaymentScreen.
onTapSENIORCITIZENFDPayment(BuildContext context) { Navigator.pushNamed(context, AppRoutes.seniorCitizenFdPaymentScreen); } 
/// Navigates to the neftScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the neftScreen.
onTapNEFT(BuildContext context) { Navigator.pushNamed(context, AppRoutes.neftScreen); } 
/// Navigates to the rdScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the rdScreen.
onTapRD(BuildContext context) { Navigator.pushNamed(context, AppRoutes.rdScreen); } 
/// Navigates to the rdOptionsScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the rdOptionsScreen.
onTapRDoptions(BuildContext context) { Navigator.pushNamed(context, AppRoutes.rdOptionsScreen); } 
/// Navigates to the normalRdPaymentScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the normalRdPaymentScreen.
onTapNORMALRDPayment(BuildContext context) { Navigator.pushNamed(context, AppRoutes.normalRdPaymentScreen); } 
/// Navigates to the seniourCitizenRdPaymentScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the seniourCitizenRdPaymentScreen.
onTapSENIOURCITIZENRDPayment(BuildContext context) { Navigator.pushNamed(context, AppRoutes.seniourCitizenRdPaymentScreen); } 
/// Navigates to the apyScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the apyScreen.
onTapAPY(BuildContext context) { Navigator.pushNamed(context, AppRoutes.apyScreen); } 
/// Navigates to the netflixPaymentScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the netflixPaymentScreen.
onTapNetflixpayment(BuildContext context) { Navigator.pushNamed(context, AppRoutes.netflixPaymentScreen); } 
/// Navigates to the netfiixPaymentAmountScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the netfiixPaymentAmountScreen.
onTapNETFIIXPaymentamount(BuildContext context) { Navigator.pushNamed(context, AppRoutes.netfiixPaymentAmountScreen); } 
/// Navigates to the netflixScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the netflixScreen.
onTapNETFLIX(BuildContext context) { Navigator.pushNamed(context, AppRoutes.netflixScreen); } 
/// Navigates to the netflixConfirmationSuccessfulTransferScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the netflixConfirmationSuccessfulTransferScreen.
onTapNETFLIXConfirmationSuccessfultransfer(BuildContext context) { Navigator.pushNamed(context, AppRoutes.netflixConfirmationSuccessfulTransferScreen); } 
/// Navigates to the netflixConfirmationSuccessfulTransferOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the netflixConfirmationSuccessfulTransferOneScreen.
onTapNETFLIXConfirmationSuccessfultransferOne(BuildContext context) { Navigator.pushNamed(context, AppRoutes.netflixConfirmationSuccessfulTransferOneScreen); } 
/// Navigates to the waterBillReceiptScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the waterBillReceiptScreen.
onTapWaterbillReceipt(BuildContext context) { Navigator.pushNamed(context, AppRoutes.waterBillReceiptScreen); } 
/// Navigates to the waterBillViewReceiptScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the waterBillViewReceiptScreen.
onTapWaterbillViewReceipt(BuildContext context) { Navigator.pushNamed(context, AppRoutes.waterBillViewReceiptScreen); } 
/// Navigates to the charityScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the charityScreen.
onTapCharity(BuildContext context) { Navigator.pushNamed(context, AppRoutes.charityScreen); } 
/// Navigates to the waterBillPayBillScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the waterBillPayBillScreen.
onTapWaterbillPayBill(BuildContext context) { Navigator.pushNamed(context, AppRoutes.waterBillPayBillScreen); } 
/// Navigates to the waterBillPaymentScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the waterBillPaymentScreen.
onTapWATERBILLPAYMENT(BuildContext context) { Navigator.pushNamed(context, AppRoutes.waterBillPaymentScreen); } 
/// Navigates to the bankToBankTransferConfirmationIndianScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the bankToBankTransferConfirmationIndianScreen.
onTapBANKTOBANKTRANSFERConfirmationindian(BuildContext context) { Navigator.pushNamed(context, AppRoutes.bankToBankTransferConfirmationIndianScreen); } 
/// Navigates to the loanDetailsTabContainerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the loanDetailsTabContainerScreen.
onTapLoandetailsTabContainer(BuildContext context) { Navigator.pushNamed(context, AppRoutes.loanDetailsTabContainerScreen); } 
/// Navigates to the bankToBankTransferScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the bankToBankTransferScreen.
onTapBankTobankTransfer(BuildContext context) { Navigator.pushNamed(context, AppRoutes.bankToBankTransferScreen); } 
/// Navigates to the transferConfirmationBankToBankIndianScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the transferConfirmationBankToBankIndianScreen.
onTapTransferconfirmationBANKTOBANKindian(BuildContext context) { Navigator.pushNamed(context, AppRoutes.transferConfirmationBankToBankIndianScreen); } 
/// Navigates to the bankToBankTransferAmountIndianScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the bankToBankTransferAmountIndianScreen.
onTapBankTobankTransferamountindian(BuildContext context) { Navigator.pushNamed(context, AppRoutes.bankToBankTransferAmountIndianScreen); } 
/// Navigates to the bankToBankConfirmationSuccessfulTransferIndianScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the bankToBankConfirmationSuccessfulTransferIndianScreen.
onTapBanktobankConfirmationSuccessfultransferindian(BuildContext context) { Navigator.pushNamed(context, AppRoutes.bankToBankConfirmationSuccessfulTransferIndianScreen); } 
/// Navigates to the jioRechargeConfirmationScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the jioRechargeConfirmationScreen.
onTapJIORechargeconfirmation(BuildContext context) { Navigator.pushNamed(context, AppRoutes.jioRechargeConfirmationScreen); } 
/// Navigates to the jioConfirmationSuccessfulTransferOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the jioConfirmationSuccessfulTransferOneScreen.
onTapJioConfirmationSuccessfultransferOne(BuildContext context) { Navigator.pushNamed(context, AppRoutes.jioConfirmationSuccessfulTransferOneScreen); } 
/// Navigates to the jioConfirmationSuccessfulTransferScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the jioConfirmationSuccessfulTransferScreen.
onTapJioConfirmationSuccessfultransfer(BuildContext context) { Navigator.pushNamed(context, AppRoutes.jioConfirmationSuccessfulTransferScreen); } 
/// Navigates to the homeLoanDetailPageInformationScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the homeLoanDetailPageInformationScreen.
onTapHomeloandetailpageinformation(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeLoanDetailPageInformationScreen); } 
/// Navigates to the homeLoanPaymentDoneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the homeLoanPaymentDoneScreen.
onTapHomeLoanpaymentdone(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeLoanPaymentDoneScreen); } 
/// Navigates to the jioMobileRechargeScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the jioMobileRechargeScreen.
onTapJioMOBILERECHARGE(BuildContext context) { Navigator.pushNamed(context, AppRoutes.jioMobileRechargeScreen); } 
/// Navigates to the mainRechargeScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the mainRechargeScreen.
onTapMainRecharge(BuildContext context) { Navigator.pushNamed(context, AppRoutes.mainRechargeScreen); } 
/// Navigates to the loanPaymentScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the loanPaymentScreen.
onTapLoanpayment(BuildContext context) { Navigator.pushNamed(context, AppRoutes.loanPaymentScreen); } 
/// Navigates to the mainLoanGraphScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the mainLoanGraphScreen.
onTapMainLoangraph(BuildContext context) { Navigator.pushNamed(context, AppRoutes.mainLoanGraphScreen); } 
/// Navigates to the neftBanksDetailsScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the neftBanksDetailsScreen.
onTapNEFTBANKSDETAILS(BuildContext context) { Navigator.pushNamed(context, AppRoutes.neftBanksDetailsScreen); } 
/// Navigates to the fdPaymentScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the fdPaymentScreen.
onTapFDPayment(BuildContext context) { Navigator.pushNamed(context, AppRoutes.fdPaymentScreen); } 
/// Navigates to the passwordForFdScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the passwordForFdScreen.
onTapPASSWORDFORFD(BuildContext context) { Navigator.pushNamed(context, AppRoutes.passwordForFdScreen); } 
/// Navigates to the fdConfirmationSuccessfulTransferScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the fdConfirmationSuccessfulTransferScreen.
onTapFDConfirmationSuccessfultransfer(BuildContext context) { Navigator.pushNamed(context, AppRoutes.fdConfirmationSuccessfulTransferScreen); } 
/// Navigates to the rdPaymentScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the rdPaymentScreen.
onTapRDPayment(BuildContext context) { Navigator.pushNamed(context, AppRoutes.rdPaymentScreen); } 
/// Navigates to the passwordForRdScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the passwordForRdScreen.
onTapPASSWORDFORRD(BuildContext context) { Navigator.pushNamed(context, AppRoutes.passwordForRdScreen); } 
/// Navigates to the rdConfirmationSuccessfulTransferScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the rdConfirmationSuccessfulTransferScreen.
onTapRDConfirmationSuccessfultransfer(BuildContext context) { Navigator.pushNamed(context, AppRoutes.rdConfirmationSuccessfulTransferScreen); } 
/// Navigates to the kycConfirmationSuccessfulTransferScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the kycConfirmationSuccessfulTransferScreen.
onTapKYCConfirmationSuccessfultransfer(BuildContext context) { Navigator.pushNamed(context, AppRoutes.kycConfirmationSuccessfulTransferScreen); } 
/// Navigates to the disneyHotstarPaymentScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the disneyHotstarPaymentScreen.
onTapDISNEYHOTSTARpayment(BuildContext context) { Navigator.pushNamed(context, AppRoutes.disneyHotstarPaymentScreen); } 
/// Navigates to the disneyHoststarPaymentScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the disneyHoststarPaymentScreen.
onTapDISNEYHOSTSTARPayment(BuildContext context) { Navigator.pushNamed(context, AppRoutes.disneyHoststarPaymentScreen); } 
/// Navigates to the paymentOfDisneyHotstarScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the paymentOfDisneyHotstarScreen.
onTapPAYMENTOFDISNEYHOTSTAR(BuildContext context) { Navigator.pushNamed(context, AppRoutes.paymentOfDisneyHotstarScreen); } 
/// Navigates to the disneyHostarconfirmationSuccessfulTransferScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the disneyHostarconfirmationSuccessfulTransferScreen.
onTapDISNEYHOSTARConfirmationSuccessfultransfer(BuildContext context) { Navigator.pushNamed(context, AppRoutes.disneyHostarconfirmationSuccessfulTransferScreen); } 
/// Navigates to the disneyHostarconfirmationSuccessfulTransferReciPtScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the disneyHostarconfirmationSuccessfulTransferReciPtScreen.
onTapDISNEYHOSTARConfirmationSuccessfultransferrecipt(BuildContext context) { Navigator.pushNamed(context, AppRoutes.disneyHostarconfirmationSuccessfulTransferReciPtScreen); } 
/// Navigates to the donationPasswordScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the donationPasswordScreen.
onTapDONATIONPASSWORD(BuildContext context) { Navigator.pushNamed(context, AppRoutes.donationPasswordScreen); } 
/// Navigates to the careClubReciptScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the careClubReciptScreen.
onTapCareclubrecipt(BuildContext context) { Navigator.pushNamed(context, AppRoutes.careClubReciptScreen); } 
/// Navigates to the goldLoanDetailsScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the goldLoanDetailsScreen.
onTapGoldLoanDETAILS(BuildContext context) { Navigator.pushNamed(context, AppRoutes.goldLoanDetailsScreen); } 
/// Navigates to the goldLoanPaymentScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the goldLoanPaymentScreen.
onTapGoldLoanPAYMENT(BuildContext context) { Navigator.pushNamed(context, AppRoutes.goldLoanPaymentScreen); } 
/// Navigates to the goldLoanPasswordPaymentScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the goldLoanPasswordPaymentScreen.
onTapGoldloanPasswordpayment(BuildContext context) { Navigator.pushNamed(context, AppRoutes.goldLoanPasswordPaymentScreen); } 
/// Navigates to the goldLoanRecipytScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the goldLoanRecipytScreen.
onTapGoldLoanrecipyt(BuildContext context) { Navigator.pushNamed(context, AppRoutes.goldLoanRecipytScreen); } 
/// Navigates to the transferConfirmationBankToBankIciciScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the transferConfirmationBankToBankIciciScreen.
onTapTransferconfirmationBANKTOBANKicici(BuildContext context) { Navigator.pushNamed(context, AppRoutes.transferConfirmationBankToBankIciciScreen); } 
/// Navigates to the bankToBankTransferAmountIcicScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the bankToBankTransferAmountIcicScreen.
onTapBankTobankTransferamounticic(BuildContext context) { Navigator.pushNamed(context, AppRoutes.bankToBankTransferAmountIcicScreen); } 
/// Navigates to the bankToBankTransferConfirmationIcicScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the bankToBankTransferConfirmationIcicScreen.
onTapBANKTOBANKTRANSFERConfirmationicic(BuildContext context) { Navigator.pushNamed(context, AppRoutes.bankToBankTransferConfirmationIcicScreen); } 
/// Navigates to the bankToBankConfirmationSuccessfulTransferIciciScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the bankToBankConfirmationSuccessfulTransferIciciScreen.
onTapBanktobankConfirmationSuccessfultransfericici(BuildContext context) { Navigator.pushNamed(context, AppRoutes.bankToBankConfirmationSuccessfulTransferIciciScreen); } 
/// Navigates to the careDonationDetailScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the careDonationDetailScreen.
onTapCareDonationDetail(BuildContext context) { Navigator.pushNamed(context, AppRoutes.careDonationDetailScreen); } 
/// Navigates to the airtelRechargeConfirmationScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the airtelRechargeConfirmationScreen.
onTapAirtelRechargeconfirmation(BuildContext context) { Navigator.pushNamed(context, AppRoutes.airtelRechargeConfirmationScreen); } 
/// Navigates to the airtelRechrgeScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the airtelRechrgeScreen.
onTapAirtelRECHrge(BuildContext context) { Navigator.pushNamed(context, AppRoutes.airtelRechrgeScreen); } 
/// Navigates to the airtelConfirmationSuccessfulTransferReciptScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the airtelConfirmationSuccessfulTransferReciptScreen.
onTapAirtelConfirmationSuccessfultransferrecipt(BuildContext context) { Navigator.pushNamed(context, AppRoutes.airtelConfirmationSuccessfulTransferReciptScreen); } 
/// Navigates to the airtelConfirmationSuccessfulTransferScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the airtelConfirmationSuccessfulTransferScreen.
onTapAirtelConfirmationSuccessfultransfer(BuildContext context) { Navigator.pushNamed(context, AppRoutes.airtelConfirmationSuccessfulTransferScreen); } 
/// Navigates to the interNetBillPayBillScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the interNetBillPayBillScreen.
onTapInternetbillPayBill(BuildContext context) { Navigator.pushNamed(context, AppRoutes.interNetBillPayBillScreen); } 
/// Navigates to the interNetBillPasswordScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the interNetBillPasswordScreen.
onTapInternetbillPassword(BuildContext context) { Navigator.pushNamed(context, AppRoutes.interNetBillPasswordScreen); } 
/// Navigates to the internetBillViewReceiptScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the internetBillViewReceiptScreen.
onTapInternetbillViewReceipt(BuildContext context) { Navigator.pushNamed(context, AppRoutes.internetBillViewReceiptScreen); } 
/// Navigates to the internetBillReceiptScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the internetBillReceiptScreen.
onTapInternetbillReceipt(BuildContext context) { Navigator.pushNamed(context, AppRoutes.internetBillReceiptScreen); } 
/// Navigates to the toChoseTheModeOfTransferScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the toChoseTheModeOfTransferScreen.
onTapTOCHOSETHEMODEOFTRANSFER(BuildContext context) { Navigator.pushNamed(context, AppRoutes.toChoseTheModeOfTransferScreen); } 
/// Navigates to the spotifyPaymentScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the spotifyPaymentScreen.
onTapSPOTIFYpayment(BuildContext context) { Navigator.pushNamed(context, AppRoutes.spotifyPaymentScreen); } 
/// Navigates to the spotifyPaymentOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the spotifyPaymentOneScreen.
onTapSPOTIFYPaymentOne(BuildContext context) { Navigator.pushNamed(context, AppRoutes.spotifyPaymentOneScreen); } 
/// Navigates to the spotifyPaymentEntreScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the spotifyPaymentEntreScreen.
onTapSPOTIFYPAYMENTENTRE(BuildContext context) { Navigator.pushNamed(context, AppRoutes.spotifyPaymentEntreScreen); } 
/// Navigates to the spotifyConfirmationSuccessfulTransferScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the spotifyConfirmationSuccessfulTransferScreen.
onTapSPOTIFYConfirmationSuccessfultransfer(BuildContext context) { Navigator.pushNamed(context, AppRoutes.spotifyConfirmationSuccessfulTransferScreen); } 
/// Navigates to the spotifyConfirmationSuccessfulTransferReciptScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the spotifyConfirmationSuccessfulTransferReciptScreen.
onTapSPOTIFYConfirmationSuccessfultransferrecipt(BuildContext context) { Navigator.pushNamed(context, AppRoutes.spotifyConfirmationSuccessfulTransferReciptScreen); } 
/// Navigates to the educationLoanReciptScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the educationLoanReciptScreen.
onTapEducationLoanrecipt(BuildContext context) { Navigator.pushNamed(context, AppRoutes.educationLoanReciptScreen); } 
/// Navigates to the educationLoanPaymentDetailsScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the educationLoanPaymentDetailsScreen.
onTapEducationloanpaymentdetails(BuildContext context) { Navigator.pushNamed(context, AppRoutes.educationLoanPaymentDetailsScreen); } 
/// Navigates to the educationLoanPaymentScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the educationLoanPaymentScreen.
onTapEDUCATIONLOANPAYMENT(BuildContext context) { Navigator.pushNamed(context, AppRoutes.educationLoanPaymentScreen); } 
/// Navigates to the educationLoadEducationLoanPasswordPaymentPageScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the educationLoadEducationLoanPasswordPaymentPageScreen.
onTapEDUCATIONLOADEDUCATIONLOANPASSWORDPAYMENTPAGE(BuildContext context) { Navigator.pushNamed(context, AppRoutes.educationLoadEducationLoanPasswordPaymentPageScreen); } 
/// Navigates to the transferConfirmationBankToBanksbiScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the transferConfirmationBankToBanksbiScreen.
onTapTransferconfirmationBANKTOBANKsbi(BuildContext context) { Navigator.pushNamed(context, AppRoutes.transferConfirmationBankToBanksbiScreen); } 
/// Navigates to the bankToBankTransferAmountsbiScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the bankToBankTransferAmountsbiScreen.
onTapBankTobankTransferamountsbi(BuildContext context) { Navigator.pushNamed(context, AppRoutes.bankToBankTransferAmountsbiScreen); } 
/// Navigates to the bankToBankTransferConfirmationsbiScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the bankToBankTransferConfirmationsbiScreen.
onTapBANKTOBANKTRANSFERConfirmationsbi(BuildContext context) { Navigator.pushNamed(context, AppRoutes.bankToBankTransferConfirmationsbiScreen); } 
/// Navigates to the bankToBankConfirmationSuccessfulTransfersbiScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the bankToBankConfirmationSuccessfulTransfersbiScreen.
onTapBanktobankConfirmationSuccessfultransfersbi(BuildContext context) { Navigator.pushNamed(context, AppRoutes.bankToBankConfirmationSuccessfulTransfersbiScreen); } 
/// Navigates to the viRechargeConfirmationScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the viRechargeConfirmationScreen.
onTapViRechargeconfirmation(BuildContext context) { Navigator.pushNamed(context, AppRoutes.viRechargeConfirmationScreen); } 
/// Navigates to the viPaymentScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the viPaymentScreen.
onTapVIPAYMENT(BuildContext context) { Navigator.pushNamed(context, AppRoutes.viPaymentScreen); } 
/// Navigates to the viConfirmationSuccessfulTransferReciptScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the viConfirmationSuccessfulTransferReciptScreen.
onTapVIConfirmationSuccessfultransferrecipt(BuildContext context) { Navigator.pushNamed(context, AppRoutes.viConfirmationSuccessfulTransferReciptScreen); } 
/// Navigates to the viConfirmationSuccessfulTransferScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the viConfirmationSuccessfulTransferScreen.
onTapVIConfirmationSuccessfultransfer(BuildContext context) { Navigator.pushNamed(context, AppRoutes.viConfirmationSuccessfulTransferScreen); } 
/// Navigates to the headsDonationDetailScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the headsDonationDetailScreen.
onTapHeadsdonationDetail(BuildContext context) { Navigator.pushNamed(context, AppRoutes.headsDonationDetailScreen); } 
/// Navigates to the headsFoundationScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the headsFoundationScreen.
onTapHeadsfoundation(BuildContext context) { Navigator.pushNamed(context, AppRoutes.headsFoundationScreen); } 
/// Navigates to the headsFoundationReciptScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the headsFoundationReciptScreen.
onTapHeadsfoundationrecipt(BuildContext context) { Navigator.pushNamed(context, AppRoutes.headsFoundationReciptScreen); } 
/// Navigates to the payBillScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the payBillScreen.
onTapPayBill(BuildContext context) { Navigator.pushNamed(context, AppRoutes.payBillScreen); } 
/// Navigates to the viewElectricalReceiptScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the viewElectricalReceiptScreen.
onTapViewelectricalReceipt(BuildContext context) { Navigator.pushNamed(context, AppRoutes.viewElectricalReceiptScreen); } 
/// Navigates to the payBillAmountElectricityScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the payBillAmountElectricityScreen.
onTapPayBillAMOUNTelectricity(BuildContext context) { Navigator.pushNamed(context, AppRoutes.payBillAmountElectricityScreen); } 
/// Navigates to the electricityBillPaymentScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the electricityBillPaymentScreen.
onTapELECTRICITYBILLPAYMENT(BuildContext context) { Navigator.pushNamed(context, AppRoutes.electricityBillPaymentScreen); } 
/// Navigates to the payBillConfigrationElectricityScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the payBillConfigrationElectricityScreen.
onTapPayBillCONFIGRATIONelectricity(BuildContext context) { Navigator.pushNamed(context, AppRoutes.payBillConfigrationElectricityScreen); } 
/// Navigates to the carLoanPaymentScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the carLoanPaymentScreen.
onTapCARLOANPAYMENT(BuildContext context) { Navigator.pushNamed(context, AppRoutes.carLoanPaymentScreen); } 
/// Navigates to the carLoanPasswordPageScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the carLoanPasswordPageScreen.
onTapCARLOANPASSWORDPAGE(BuildContext context) { Navigator.pushNamed(context, AppRoutes.carLoanPasswordPageScreen); } 
/// Navigates to the carLoanReciptScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the carLoanReciptScreen.
onTapCarLoanrecipt(BuildContext context) { Navigator.pushNamed(context, AppRoutes.carLoanReciptScreen); } 
/// Navigates to the carLoanScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the carLoanScreen.
onTapCARLoan(BuildContext context) { Navigator.pushNamed(context, AppRoutes.carLoanScreen); } 
/// Navigates to the onboardingoneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the onboardingoneScreen.
onTapOnboardingOne(BuildContext context) { Navigator.pushNamed(context, AppRoutes.onboardingoneScreen); } 
/// Navigates to the onboardingScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the onboardingScreen.
onTapOnboarding(BuildContext context) { Navigator.pushNamed(context, AppRoutes.onboardingScreen); } 
/// Navigates to the loginScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the loginScreen.
onTapLogin(BuildContext context) { Navigator.pushNamed(context, AppRoutes.loginScreen); } 
/// Navigates to the signupScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the signupScreen.
onTapSignup(BuildContext context) { Navigator.pushNamed(context, AppRoutes.signupScreen); } 
/// Navigates to the setFingerprintScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the setFingerprintScreen.
onTapSetFingerprint(BuildContext context) { Navigator.pushNamed(context, AppRoutes.setFingerprintScreen); } 
/// Navigates to the onboardingtwoScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the onboardingtwoScreen.
onTapOnboardingTwo(BuildContext context) { Navigator.pushNamed(context, AppRoutes.onboardingtwoScreen); } 
/// Navigates to the cardSettingsScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the cardSettingsScreen.
onTapCardSettings(BuildContext context) { Navigator.pushNamed(context, AppRoutes.cardSettingsScreen); } 
/// Navigates to the optVerificationScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the optVerificationScreen.
onTapOptverification(BuildContext context) { Navigator.pushNamed(context, AppRoutes.optVerificationScreen); } 
/// Navigates to the setFingerprintScanningScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the setFingerprintScanningScreen.
onTapSetFingerprintscanning(BuildContext context) { Navigator.pushNamed(context, AppRoutes.setFingerprintScanningScreen); } 
/// Navigates to the scannerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the scannerScreen.
onTapScanner(BuildContext context) { Navigator.pushNamed(context, AppRoutes.scannerScreen); } 
/// Navigates to the profileScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the profileScreen.
onTapProfile(BuildContext context) { Navigator.pushNamed(context, AppRoutes.profileScreen); } 
/// Navigates to the manageProfileScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the manageProfileScreen.
onTapManageProfile(BuildContext context) { Navigator.pushNamed(context, AppRoutes.manageProfileScreen); } 
/// Navigates to the settingScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the settingScreen.
onTapSetting(BuildContext context) { Navigator.pushNamed(context, AppRoutes.settingScreen); } 
/// Navigates to the notificationScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the notificationScreen.
onTapNotification(BuildContext context) { Navigator.pushNamed(context, AppRoutes.notificationScreen); } 
/// Navigates to the mobileNumberPinChangeScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the mobileNumberPinChangeScreen.
onTapMobileNumberPinChange(BuildContext context) { Navigator.pushNamed(context, AppRoutes.mobileNumberPinChangeScreen); } 
/// Navigates to the otpVarificationScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the otpVarificationScreen.
onTapOtpvarification(BuildContext context) { Navigator.pushNamed(context, AppRoutes.otpVarificationScreen); } 
/// Navigates to the popAddPinScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the popAddPinScreen.
onTapPopAddpin(BuildContext context) { Navigator.pushNamed(context, AppRoutes.popAddPinScreen); } 
/// Navigates to the dashboardScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the dashboardScreen.
onTapDashboard(BuildContext context) { Navigator.pushNamed(context, AppRoutes.dashboardScreen); } 
/// Navigates to the logoutScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the logoutScreen.
onTapLogout(BuildContext context) { Navigator.pushNamed(context, AppRoutes.logoutScreen); } 
/// Navigates to the atmLocatorScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the atmLocatorScreen.
onTapATMLocator(BuildContext context) { Navigator.pushNamed(context, AppRoutes.atmLocatorScreen); } 
/// Navigates to the complainScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the complainScreen.
onTapComplain(BuildContext context) { Navigator.pushNamed(context, AppRoutes.complainScreen); } 
/// Navigates to the contactScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the contactScreen.
onTapContact(BuildContext context) { Navigator.pushNamed(context, AppRoutes.contactScreen); } 
/// Navigates to the birthdayGiftGiftCardConfirmationSuccessfulTransferScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the birthdayGiftGiftCardConfirmationSuccessfulTransferScreen.
onTapBirthdayGiftgiftcardConfirmationSuccessfultransfer(BuildContext context) { Navigator.pushNamed(context, AppRoutes.birthdayGiftGiftCardConfirmationSuccessfulTransferScreen); } 
/// Navigates to the giftCardsOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the giftCardsOneScreen.
onTapGiftCardsOne(BuildContext context) { Navigator.pushNamed(context, AppRoutes.giftCardsOneScreen); } 
/// Navigates to the birthdayGiftCardsDetailsScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the birthdayGiftCardsDetailsScreen.
onTapBirthdayGiftcardsDETAILS(BuildContext context) { Navigator.pushNamed(context, AppRoutes.birthdayGiftCardsDetailsScreen); } 
/// Navigates to the birthdayGiftGiftCardsConfirmationScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the birthdayGiftGiftCardsConfirmationScreen.
onTapBirthdayGiftGIFTCARDSConfirmation(BuildContext context) { Navigator.pushNamed(context, AppRoutes.birthdayGiftGiftCardsConfirmationScreen); } 
/// Navigates to the birthdayGiftGiftCardConfirmationSuccessfulTransferOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the birthdayGiftGiftCardConfirmationSuccessfulTransferOneScreen.
onTapBirthdayGiftGIFTCARDConfirmationSuccessfultransferOne(BuildContext context) { Navigator.pushNamed(context, AppRoutes.birthdayGiftGiftCardConfirmationSuccessfulTransferOneScreen); } 
/// Navigates to the birthdayGiftGiftCardTransferConfirmationScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the birthdayGiftGiftCardTransferConfirmationScreen.
onTapBirthdayGiftGIFTCARDTransferconfirmation(BuildContext context) { Navigator.pushNamed(context, AppRoutes.birthdayGiftGiftCardTransferConfirmationScreen); } 
/// Navigates to the moneyTransferScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the moneyTransferScreen.
onTapMoneyTransfer(BuildContext context) { Navigator.pushNamed(context, AppRoutes.moneyTransferScreen); } 
/// Navigates to the personToPersonTransferScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the personToPersonTransferScreen.
onTapPersontopersonTransfer(BuildContext context) { Navigator.pushNamed(context, AppRoutes.personToPersonTransferScreen); } 
/// Navigates to the personToPersontransferAmountScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the personToPersontransferAmountScreen.
onTapPersontopersonTransferamount(BuildContext context) { Navigator.pushNamed(context, AppRoutes.personToPersontransferAmountScreen); } 
/// Navigates to the personToPersonConfirmationScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the personToPersonConfirmationScreen.
onTapPersontopersonConfirmation(BuildContext context) { Navigator.pushNamed(context, AppRoutes.personToPersonConfirmationScreen); } 
/// Navigates to the moerOptionsScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the moerOptionsScreen.
onTapMoeroptions(BuildContext context) { Navigator.pushNamed(context, AppRoutes.moerOptionsScreen); } 
/// Navigates to the homeInsuranceInfoScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the homeInsuranceInfoScreen.
onTapHOMEInsuranceInfo(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeInsuranceInfoScreen); } 
/// Navigates to the homeInsuranceTransferConfirmationScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the homeInsuranceTransferConfirmationScreen.
onTapHOMEINSURANCETransferconfirmation(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeInsuranceTransferConfirmationScreen); } 
/// Navigates to the homeInsuranceConfirmationSuccessfulTransferScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the homeInsuranceConfirmationSuccessfulTransferScreen.
onTapHomeinsuranceConfirmationSuccessfultransfer(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeInsuranceConfirmationSuccessfulTransferScreen); } 
/// Navigates to the homeInssuranceConfirmationSuccessfulTransferReciptScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the homeInssuranceConfirmationSuccessfulTransferReciptScreen.
onTapHomeinssuranceConfirmationSuccessfultransferrecipt(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeInssuranceConfirmationSuccessfulTransferReciptScreen); } 
/// Navigates to the homeInsurancePlansScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the homeInsurancePlansScreen.
onTapHOMEInsuranceplans(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeInsurancePlansScreen); } 
/// Navigates to the homeInsuranceConfirmationScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the homeInsuranceConfirmationScreen.
onTapHOMEINSURANCEConfirmation(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeInsuranceConfirmationScreen); } 
/// Navigates to the eidGiftSuccessfulTransferReciptScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the eidGiftSuccessfulTransferReciptScreen.
onTapEIDgiftSuccessfultransferrecipt(BuildContext context) { Navigator.pushNamed(context, AppRoutes.eidGiftSuccessfulTransferReciptScreen); } 
/// Navigates to the eidGiftCardsScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the eidGiftCardsScreen.
onTapEIDGiftcards(BuildContext context) { Navigator.pushNamed(context, AppRoutes.eidGiftCardsScreen); } 
/// Navigates to the eidGiftCardTransferConfirmationScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the eidGiftCardTransferConfirmationScreen.
onTapEIDgiftcardTransferconfirmation(BuildContext context) { Navigator.pushNamed(context, AppRoutes.eidGiftCardTransferConfirmationScreen); } 
/// Navigates to the eidPasswordForTransfareConformationScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the eidPasswordForTransfareConformationScreen.
onTapEIDpasswordfortransfareconformation(BuildContext context) { Navigator.pushNamed(context, AppRoutes.eidPasswordForTransfareConformationScreen); } 
/// Navigates to the eidGiftConfirmationSuccessfulTransferScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the eidGiftConfirmationSuccessfulTransferScreen.
onTapEidgiftConfirmationSuccessfultransfer(BuildContext context) { Navigator.pushNamed(context, AppRoutes.eidGiftConfirmationSuccessfulTransferScreen); } 
/// Navigates to the eidTransferConfirmationScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the eidTransferConfirmationScreen.
onTapEIDTransferconfirmation(BuildContext context) { Navigator.pushNamed(context, AppRoutes.eidTransferConfirmationScreen); } 
/// Navigates to the personToPersonConfirmationSuccessfulTransferScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the personToPersonConfirmationSuccessfulTransferScreen.
onTapPersontopersonConfirmationSuccessfultransfer(BuildContext context) { Navigator.pushNamed(context, AppRoutes.personToPersonConfirmationSuccessfulTransferScreen); } 
/// Navigates to the personToPersonConfirmationSuccessfulTransferReciptScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the personToPersonConfirmationSuccessfulTransferReciptScreen.
onTapPersontopersonConfirmationSuccessfultransferrecipt(BuildContext context) { Navigator.pushNamed(context, AppRoutes.personToPersonConfirmationSuccessfulTransferReciptScreen); } 
/// Navigates to the giftCardsScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the giftCardsScreen.
onTapGiftcards(BuildContext context) { Navigator.pushNamed(context, AppRoutes.giftCardsScreen); } 
/// Navigates to the marrigeTransferConfirmationOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the marrigeTransferConfirmationOneScreen.
onTapMarrigeTransferconfirmationOne(BuildContext context) { Navigator.pushNamed(context, AppRoutes.marrigeTransferConfirmationOneScreen); } 
/// Navigates to the marrigeGiftCardePasswordScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the marrigeGiftCardePasswordScreen.
onTapMarrigegiftcardepassword(BuildContext context) { Navigator.pushNamed(context, AppRoutes.marrigeGiftCardePasswordScreen); } 
/// Navigates to the marriageGiftConfirmationSuccessfulTransferScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the marriageGiftConfirmationSuccessfulTransferScreen.
onTapMarriagegiftConfirmationSuccessfultransfer(BuildContext context) { Navigator.pushNamed(context, AppRoutes.marriageGiftConfirmationSuccessfulTransferScreen); } 
/// Navigates to the marrigeGiftCardReciptScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the marrigeGiftCardReciptScreen.
onTapMarrigegiftcardrecipt(BuildContext context) { Navigator.pushNamed(context, AppRoutes.marrigeGiftCardReciptScreen); } 
/// Navigates to the healthConfirmationSuccessfulTransferScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the healthConfirmationSuccessfulTransferScreen.
onTapHealthConfirmationSuccessfultransfer(BuildContext context) { Navigator.pushNamed(context, AppRoutes.healthConfirmationSuccessfulTransferScreen); } 
/// Navigates to the healthConfirmationSuccessfulTransferReciptScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the healthConfirmationSuccessfulTransferReciptScreen.
onTapHealthConfirmationSuccessfultransferrecipt(BuildContext context) { Navigator.pushNamed(context, AppRoutes.healthConfirmationSuccessfulTransferReciptScreen); } 
/// Navigates to the healthInsuranceInfoScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the healthInsuranceInfoScreen.
onTapHealthInsuranceInfo(BuildContext context) { Navigator.pushNamed(context, AppRoutes.healthInsuranceInfoScreen); } 
/// Navigates to the healthTransferConfirmationScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the healthTransferConfirmationScreen.
onTapHealthTransferconfirmation(BuildContext context) { Navigator.pushNamed(context, AppRoutes.healthTransferConfirmationScreen); } 
/// Navigates to the healthInsurancePlansScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the healthInsurancePlansScreen.
onTapHealthInsuranceplans(BuildContext context) { Navigator.pushNamed(context, AppRoutes.healthInsurancePlansScreen); } 
/// Navigates to the healthConfirmationScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the healthConfirmationScreen.
onTapHealthConfirmation(BuildContext context) { Navigator.pushNamed(context, AppRoutes.healthConfirmationScreen); } 
/// Navigates to the marrigeTransferConfirmationScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the marrigeTransferConfirmationScreen.
onTapMarrigeTransferconfirmation(BuildContext context) { Navigator.pushNamed(context, AppRoutes.marrigeTransferConfirmationScreen); } 
/// Navigates to the familyTransferConfirmationInsuranceScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the familyTransferConfirmationInsuranceScreen.
onTapFamilyTransferconfirmationINSURANCE(BuildContext context) { Navigator.pushNamed(context, AppRoutes.familyTransferConfirmationInsuranceScreen); } 
/// Navigates to the familyInsuranceScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the familyInsuranceScreen.
onTapFamilyInsurance(BuildContext context) { Navigator.pushNamed(context, AppRoutes.familyInsuranceScreen); } 
/// Navigates to the familyInsurancePlansScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the familyInsurancePlansScreen.
onTapFamilyInsuranceplans(BuildContext context) { Navigator.pushNamed(context, AppRoutes.familyInsurancePlansScreen); } 
/// Navigates to the familyInsuranceInfoScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the familyInsuranceInfoScreen.
onTapFamilyInsuranceInfo(BuildContext context) { Navigator.pushNamed(context, AppRoutes.familyInsuranceInfoScreen); } 
/// Navigates to the familyInsuranceConfirmationScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the familyInsuranceConfirmationScreen.
onTapFamilyINSURANCEConfirmation(BuildContext context) { Navigator.pushNamed(context, AppRoutes.familyInsuranceConfirmationScreen); } 
/// Navigates to the familyConfirmationSuccessfulTransferScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the familyConfirmationSuccessfulTransferScreen.
onTapFamilyConfirmationSuccessfultransfer(BuildContext context) { Navigator.pushNamed(context, AppRoutes.familyConfirmationSuccessfulTransferScreen); } 
/// Navigates to the familyConfirmationSuccessfulTransferReciptScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the familyConfirmationSuccessfulTransferReciptScreen.
onTapFamilyConfirmationSuccessfultransferrecipt(BuildContext context) { Navigator.pushNamed(context, AppRoutes.familyConfirmationSuccessfulTransferReciptScreen); } 
 }
