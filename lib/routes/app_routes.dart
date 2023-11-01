import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/presentation/dashboard_profile_screen/dashboard_profile_screen.dart';
import 'package:tanisha_s_application14/presentation/analytics_screen/analytics_screen.dart';
import 'package:tanisha_s_application14/presentation/analytics_bropdox_screen/analytics_bropdox_screen.dart';
import 'package:tanisha_s_application14/presentation/analytics_linkedin_screen/analytics_linkedin_screen.dart';
import 'package:tanisha_s_application14/presentation/analytics_apple_screen/analytics_apple_screen.dart';
import 'package:tanisha_s_application14/presentation/kyc_screen/kyc_screen.dart';
import 'package:tanisha_s_application14/presentation/kyc_upgatepan_screen/kyc_upgatepan_screen.dart';
import 'package:tanisha_s_application14/presentation/kyc_update_voterid_screen/kyc_update_voterid_screen.dart';
import 'package:tanisha_s_application14/presentation/kyc_update_drivinf_licence_screen/kyc_update_drivinf_licence_screen.dart';
import 'package:tanisha_s_application14/presentation/kyc_update_aadhar_screen/kyc_update_aadhar_screen.dart';
import 'package:tanisha_s_application14/presentation/kyc_update_phone_no_screen/kyc_update_phone_no_screen.dart';
import 'package:tanisha_s_application14/presentation/fas_tag_screen/fas_tag_screen.dart';
import 'package:tanisha_s_application14/presentation/fas_tag_details_screen/fas_tag_details_screen.dart';
import 'package:tanisha_s_application14/presentation/fas_tag_payment_screen/fas_tag_payment_screen.dart';
import 'package:tanisha_s_application14/presentation/fd_screen/fd_screen.dart';
import 'package:tanisha_s_application14/presentation/normal_fd_payment_screen/normal_fd_payment_screen.dart';
import 'package:tanisha_s_application14/presentation/tax_saving_fd_payment_screen/tax_saving_fd_payment_screen.dart';
import 'package:tanisha_s_application14/presentation/cumulative_fd_payment_screen/cumulative_fd_payment_screen.dart';
import 'package:tanisha_s_application14/presentation/non_cumulative_fd_payment_screen/non_cumulative_fd_payment_screen.dart';
import 'package:tanisha_s_application14/presentation/senior_citizen_fd_payment_screen/senior_citizen_fd_payment_screen.dart';
import 'package:tanisha_s_application14/presentation/neft_screen/neft_screen.dart';
import 'package:tanisha_s_application14/presentation/rd_screen/rd_screen.dart';
import 'package:tanisha_s_application14/presentation/rd_options_screen/rd_options_screen.dart';
import 'package:tanisha_s_application14/presentation/normal_rd_payment_screen/normal_rd_payment_screen.dart';
import 'package:tanisha_s_application14/presentation/seniour_citizen_rd_payment_screen/seniour_citizen_rd_payment_screen.dart';
import 'package:tanisha_s_application14/presentation/apy_screen/apy_screen.dart';
import 'package:tanisha_s_application14/presentation/netflix_payment_screen/netflix_payment_screen.dart';
import 'package:tanisha_s_application14/presentation/netfiix_payment_amount_screen/netfiix_payment_amount_screen.dart';
import 'package:tanisha_s_application14/presentation/netflix_screen/netflix_screen.dart';
import 'package:tanisha_s_application14/presentation/netflix_confirmation_successful_transfer_screen/netflix_confirmation_successful_transfer_screen.dart';
import 'package:tanisha_s_application14/presentation/netflix_confirmation_successful_transfer_one_screen/netflix_confirmation_successful_transfer_one_screen.dart';
import 'package:tanisha_s_application14/presentation/water_bill_receipt_screen/water_bill_receipt_screen.dart';
import 'package:tanisha_s_application14/presentation/water_bill_view_receipt_screen/water_bill_view_receipt_screen.dart';
import 'package:tanisha_s_application14/presentation/charity_screen/charity_screen.dart';
import 'package:tanisha_s_application14/presentation/water_bill_pay_bill_screen/water_bill_pay_bill_screen.dart';
import 'package:tanisha_s_application14/presentation/water_bill_payment_screen/water_bill_payment_screen.dart';
import 'package:tanisha_s_application14/presentation/bank_to_bank_transfer_confirmation_indian_screen/bank_to_bank_transfer_confirmation_indian_screen.dart';
import 'package:tanisha_s_application14/presentation/loan_details_tab_container_screen/loan_details_tab_container_screen.dart';
import 'package:tanisha_s_application14/presentation/bank_to_bank_transfer_screen/bank_to_bank_transfer_screen.dart';
import 'package:tanisha_s_application14/presentation/transfer_confirmation_bank_to_bank_indian_screen/transfer_confirmation_bank_to_bank_indian_screen.dart';
import 'package:tanisha_s_application14/presentation/bank_to_bank_transfer_amount_indian_screen/bank_to_bank_transfer_amount_indian_screen.dart';
import 'package:tanisha_s_application14/presentation/bank_to_bank_confirmation_successful_transfer_indian_screen/bank_to_bank_confirmation_successful_transfer_indian_screen.dart';
import 'package:tanisha_s_application14/presentation/jio_recharge_confirmation_screen/jio_recharge_confirmation_screen.dart';
import 'package:tanisha_s_application14/presentation/jio_confirmation_successful_transfer_one_screen/jio_confirmation_successful_transfer_one_screen.dart';
import 'package:tanisha_s_application14/presentation/jio_confirmation_successful_transfer_screen/jio_confirmation_successful_transfer_screen.dart';
import 'package:tanisha_s_application14/presentation/home_loan_detail_page_information_screen/home_loan_detail_page_information_screen.dart';
import 'package:tanisha_s_application14/presentation/home_loan_payment_done_screen/home_loan_payment_done_screen.dart';
import 'package:tanisha_s_application14/presentation/jio_mobile_recharge_screen/jio_mobile_recharge_screen.dart';
import 'package:tanisha_s_application14/presentation/main_recharge_screen/main_recharge_screen.dart';
import 'package:tanisha_s_application14/presentation/loan_payment_screen/loan_payment_screen.dart';
import 'package:tanisha_s_application14/presentation/main_loan_graph_screen/main_loan_graph_screen.dart';
import 'package:tanisha_s_application14/presentation/neft_banks_details_screen/neft_banks_details_screen.dart';
import 'package:tanisha_s_application14/presentation/fd_payment_screen/fd_payment_screen.dart';
import 'package:tanisha_s_application14/presentation/password_for_fd_screen/password_for_fd_screen.dart';
import 'package:tanisha_s_application14/presentation/fd_confirmation_successful_transfer_screen/fd_confirmation_successful_transfer_screen.dart';
import 'package:tanisha_s_application14/presentation/rd_payment_screen/rd_payment_screen.dart';
import 'package:tanisha_s_application14/presentation/password_for_rd_screen/password_for_rd_screen.dart';
import 'package:tanisha_s_application14/presentation/rd_confirmation_successful_transfer_screen/rd_confirmation_successful_transfer_screen.dart';
import 'package:tanisha_s_application14/presentation/kyc_confirmation_successful_transfer_screen/kyc_confirmation_successful_transfer_screen.dart';
import 'package:tanisha_s_application14/presentation/disney_hotstar_payment_screen/disney_hotstar_payment_screen.dart';
import 'package:tanisha_s_application14/presentation/disney_hoststar_payment_screen/disney_hoststar_payment_screen.dart';
import 'package:tanisha_s_application14/presentation/payment_of_disney_hotstar_screen/payment_of_disney_hotstar_screen.dart';
import 'package:tanisha_s_application14/presentation/disney_hostarconfirmation_successful_transfer_screen/disney_hostarconfirmation_successful_transfer_screen.dart';
import 'package:tanisha_s_application14/presentation/disney_hostarconfirmation_successful_transfer_reci_pt_screen/disney_hostarconfirmation_successful_transfer_reci_pt_screen.dart';
import 'package:tanisha_s_application14/presentation/donation_password_screen/donation_password_screen.dart';
import 'package:tanisha_s_application14/presentation/care_club_recipt_screen/care_club_recipt_screen.dart';
import 'package:tanisha_s_application14/presentation/gold_loan_details_screen/gold_loan_details_screen.dart';
import 'package:tanisha_s_application14/presentation/gold_loan_payment_screen/gold_loan_payment_screen.dart';
import 'package:tanisha_s_application14/presentation/gold_loan_password_payment_screen/gold_loan_password_payment_screen.dart';
import 'package:tanisha_s_application14/presentation/gold_loan_recipyt_screen/gold_loan_recipyt_screen.dart';
import 'package:tanisha_s_application14/presentation/transfer_confirmation_bank_to_bank_icici_screen/transfer_confirmation_bank_to_bank_icici_screen.dart';
import 'package:tanisha_s_application14/presentation/bank_to_bank_transfer_amount_icic_screen/bank_to_bank_transfer_amount_icic_screen.dart';
import 'package:tanisha_s_application14/presentation/bank_to_bank_transfer_confirmation_icic_screen/bank_to_bank_transfer_confirmation_icic_screen.dart';
import 'package:tanisha_s_application14/presentation/bank_to_bank_confirmation_successful_transfer_icici_screen/bank_to_bank_confirmation_successful_transfer_icici_screen.dart';
import 'package:tanisha_s_application14/presentation/care_donation_detail_screen/care_donation_detail_screen.dart';
import 'package:tanisha_s_application14/presentation/airtel_recharge_confirmation_screen/airtel_recharge_confirmation_screen.dart';
import 'package:tanisha_s_application14/presentation/airtel_rechrge_screen/airtel_rechrge_screen.dart';
import 'package:tanisha_s_application14/presentation/airtel_confirmation_successful_transfer_recipt_screen/airtel_confirmation_successful_transfer_recipt_screen.dart';
import 'package:tanisha_s_application14/presentation/airtel_confirmation_successful_transfer_screen/airtel_confirmation_successful_transfer_screen.dart';
import 'package:tanisha_s_application14/presentation/inter_net_bill_pay_bill_screen/inter_net_bill_pay_bill_screen.dart';
import 'package:tanisha_s_application14/presentation/inter_net_bill_password_screen/inter_net_bill_password_screen.dart';
import 'package:tanisha_s_application14/presentation/internet_bill_view_receipt_screen/internet_bill_view_receipt_screen.dart';
import 'package:tanisha_s_application14/presentation/internet_bill_receipt_screen/internet_bill_receipt_screen.dart';
import 'package:tanisha_s_application14/presentation/to_chose_the_mode_of_transfer_screen/to_chose_the_mode_of_transfer_screen.dart';
import 'package:tanisha_s_application14/presentation/spotify_payment_screen/spotify_payment_screen.dart';
import 'package:tanisha_s_application14/presentation/spotify_payment_one_screen/spotify_payment_one_screen.dart';
import 'package:tanisha_s_application14/presentation/spotify_payment_entre_screen/spotify_payment_entre_screen.dart';
import 'package:tanisha_s_application14/presentation/spotify_confirmation_successful_transfer_screen/spotify_confirmation_successful_transfer_screen.dart';
import 'package:tanisha_s_application14/presentation/spotify_confirmation_successful_transfer_recipt_screen/spotify_confirmation_successful_transfer_recipt_screen.dart';
import 'package:tanisha_s_application14/presentation/education_loan_recipt_screen/education_loan_recipt_screen.dart';
import 'package:tanisha_s_application14/presentation/education_loan_payment_details_screen/education_loan_payment_details_screen.dart';
import 'package:tanisha_s_application14/presentation/education_loan_payment_screen/education_loan_payment_screen.dart';
import 'package:tanisha_s_application14/presentation/education_load_education_loan_password_payment_page_screen/education_load_education_loan_password_payment_page_screen.dart';
import 'package:tanisha_s_application14/presentation/transfer_confirmation_bank_to_banksbi_screen/transfer_confirmation_bank_to_banksbi_screen.dart';
import 'package:tanisha_s_application14/presentation/bank_to_bank_transfer_amountsbi_screen/bank_to_bank_transfer_amountsbi_screen.dart';
import 'package:tanisha_s_application14/presentation/bank_to_bank_transfer_confirmationsbi_screen/bank_to_bank_transfer_confirmationsbi_screen.dart';
import 'package:tanisha_s_application14/presentation/bank_to_bank_confirmation_successful_transfersbi_screen/bank_to_bank_confirmation_successful_transfersbi_screen.dart';
import 'package:tanisha_s_application14/presentation/vi_recharge_confirmation_screen/vi_recharge_confirmation_screen.dart';
import 'package:tanisha_s_application14/presentation/vi_payment_screen/vi_payment_screen.dart';
import 'package:tanisha_s_application14/presentation/vi_confirmation_successful_transfer_recipt_screen/vi_confirmation_successful_transfer_recipt_screen.dart';
import 'package:tanisha_s_application14/presentation/vi_confirmation_successful_transfer_screen/vi_confirmation_successful_transfer_screen.dart';
import 'package:tanisha_s_application14/presentation/heads_donation_detail_screen/heads_donation_detail_screen.dart';
import 'package:tanisha_s_application14/presentation/heads_foundation_screen/heads_foundation_screen.dart';
import 'package:tanisha_s_application14/presentation/heads_foundation_recipt_screen/heads_foundation_recipt_screen.dart';
import 'package:tanisha_s_application14/presentation/pay_bill_screen/pay_bill_screen.dart';
import 'package:tanisha_s_application14/presentation/view_electrical_receipt_screen/view_electrical_receipt_screen.dart';
import 'package:tanisha_s_application14/presentation/pay_bill_amount_electricity_screen/pay_bill_amount_electricity_screen.dart';
import 'package:tanisha_s_application14/presentation/electricity_bill_payment_screen/electricity_bill_payment_screen.dart';
import 'package:tanisha_s_application14/presentation/pay_bill_configration_electricity_screen/pay_bill_configration_electricity_screen.dart';
import 'package:tanisha_s_application14/presentation/car_loan_payment_screen/car_loan_payment_screen.dart';
import 'package:tanisha_s_application14/presentation/car_loan_password_page_screen/car_loan_password_page_screen.dart';
import 'package:tanisha_s_application14/presentation/car_loan_recipt_screen/car_loan_recipt_screen.dart';
import 'package:tanisha_s_application14/presentation/car_loan_screen/car_loan_screen.dart';
import 'package:tanisha_s_application14/presentation/onboardingone_screen/onboardingone_screen.dart';
import 'package:tanisha_s_application14/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:tanisha_s_application14/presentation/login_screen/login_screen.dart';
import 'package:tanisha_s_application14/presentation/signup_screen/signup_screen.dart';
import 'package:tanisha_s_application14/presentation/set_fingerprint_screen/set_fingerprint_screen.dart';
import 'package:tanisha_s_application14/presentation/onboardingtwo_screen/onboardingtwo_screen.dart';
import 'package:tanisha_s_application14/presentation/card_settings_screen/card_settings_screen.dart';
import 'package:tanisha_s_application14/presentation/opt_verification_screen/opt_verification_screen.dart';
import 'package:tanisha_s_application14/presentation/set_fingerprint_scanning_screen/set_fingerprint_scanning_screen.dart';
import 'package:tanisha_s_application14/presentation/scanner_screen/scanner_screen.dart';
import 'package:tanisha_s_application14/presentation/profile_screen/profile_screen.dart';
import 'package:tanisha_s_application14/presentation/manage_profile_screen/manage_profile_screen.dart';
import 'package:tanisha_s_application14/presentation/setting_screen/setting_screen.dart';
import 'package:tanisha_s_application14/presentation/notification_screen/notification_screen.dart';
import 'package:tanisha_s_application14/presentation/mobile_number_pin_change_screen/mobile_number_pin_change_screen.dart';
import 'package:tanisha_s_application14/presentation/otp_varification_screen/otp_varification_screen.dart';
import 'package:tanisha_s_application14/presentation/pop_add_pin_screen/pop_add_pin_screen.dart';
import 'package:tanisha_s_application14/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:tanisha_s_application14/presentation/logout_screen/logout_screen.dart';
import 'package:tanisha_s_application14/presentation/atm_locator_screen/atm_locator_screen.dart';
import 'package:tanisha_s_application14/presentation/complain_screen/complain_screen.dart';
import 'package:tanisha_s_application14/presentation/contact_screen/contact_screen.dart';
import 'package:tanisha_s_application14/presentation/birthday_gift_gift_card_confirmation_successful_transfer_screen/birthday_gift_gift_card_confirmation_successful_transfer_screen.dart';
import 'package:tanisha_s_application14/presentation/gift_cards_one_screen/gift_cards_one_screen.dart';
import 'package:tanisha_s_application14/presentation/birthday_gift_cards_details_screen/birthday_gift_cards_details_screen.dart';
import 'package:tanisha_s_application14/presentation/birthday_gift_gift_cards_confirmation_screen/birthday_gift_gift_cards_confirmation_screen.dart';
import 'package:tanisha_s_application14/presentation/birthday_gift_gift_card_confirmation_successful_transfer_one_screen/birthday_gift_gift_card_confirmation_successful_transfer_one_screen.dart';
import 'package:tanisha_s_application14/presentation/birthday_gift_gift_card_transfer_confirmation_screen/birthday_gift_gift_card_transfer_confirmation_screen.dart';
import 'package:tanisha_s_application14/presentation/money_transfer_screen/money_transfer_screen.dart';
import 'package:tanisha_s_application14/presentation/person_to_person_transfer_screen/person_to_person_transfer_screen.dart';
import 'package:tanisha_s_application14/presentation/person_to_persontransfer_amount_screen/person_to_persontransfer_amount_screen.dart';
import 'package:tanisha_s_application14/presentation/person_to_person_confirmation_screen/person_to_person_confirmation_screen.dart';
import 'package:tanisha_s_application14/presentation/moer_options_screen/moer_options_screen.dart';
import 'package:tanisha_s_application14/presentation/home_insurance_info_screen/home_insurance_info_screen.dart';
import 'package:tanisha_s_application14/presentation/home_insurance_transfer_confirmation_screen/home_insurance_transfer_confirmation_screen.dart';
import 'package:tanisha_s_application14/presentation/home_insurance_confirmation_successful_transfer_screen/home_insurance_confirmation_successful_transfer_screen.dart';
import 'package:tanisha_s_application14/presentation/home_inssurance_confirmation_successful_transfer_recipt_screen/home_inssurance_confirmation_successful_transfer_recipt_screen.dart';
import 'package:tanisha_s_application14/presentation/home_insurance_plans_screen/home_insurance_plans_screen.dart';
import 'package:tanisha_s_application14/presentation/home_insurance_confirmation_screen/home_insurance_confirmation_screen.dart';
import 'package:tanisha_s_application14/presentation/eid_gift_successful_transfer_recipt_screen/eid_gift_successful_transfer_recipt_screen.dart';
import 'package:tanisha_s_application14/presentation/eid_gift_cards_screen/eid_gift_cards_screen.dart';
import 'package:tanisha_s_application14/presentation/eid_gift_card_transfer_confirmation_screen/eid_gift_card_transfer_confirmation_screen.dart';
import 'package:tanisha_s_application14/presentation/eid_password_for_transfare_conformation_screen/eid_password_for_transfare_conformation_screen.dart';
import 'package:tanisha_s_application14/presentation/eid_gift_confirmation_successful_transfer_screen/eid_gift_confirmation_successful_transfer_screen.dart';
import 'package:tanisha_s_application14/presentation/eid_transfer_confirmation_screen/eid_transfer_confirmation_screen.dart';
import 'package:tanisha_s_application14/presentation/person_to_person_confirmation_successful_transfer_screen/person_to_person_confirmation_successful_transfer_screen.dart';
import 'package:tanisha_s_application14/presentation/person_to_person_confirmation_successful_transfer_recipt_screen/person_to_person_confirmation_successful_transfer_recipt_screen.dart';
import 'package:tanisha_s_application14/presentation/gift_cards_screen/gift_cards_screen.dart';
import 'package:tanisha_s_application14/presentation/marrige_transfer_confirmation_one_screen/marrige_transfer_confirmation_one_screen.dart';
import 'package:tanisha_s_application14/presentation/marrige_gift_carde_password_screen/marrige_gift_carde_password_screen.dart';
import 'package:tanisha_s_application14/presentation/marriage_gift_confirmation_successful_transfer_screen/marriage_gift_confirmation_successful_transfer_screen.dart';
import 'package:tanisha_s_application14/presentation/marrige_gift_card_recipt_screen/marrige_gift_card_recipt_screen.dart';
import 'package:tanisha_s_application14/presentation/health_confirmation_successful_transfer_screen/health_confirmation_successful_transfer_screen.dart';
import 'package:tanisha_s_application14/presentation/health_confirmation_successful_transfer_recipt_screen/health_confirmation_successful_transfer_recipt_screen.dart';
import 'package:tanisha_s_application14/presentation/health_insurance_info_screen/health_insurance_info_screen.dart';
import 'package:tanisha_s_application14/presentation/health_transfer_confirmation_screen/health_transfer_confirmation_screen.dart';
import 'package:tanisha_s_application14/presentation/health_insurance_plans_screen/health_insurance_plans_screen.dart';
import 'package:tanisha_s_application14/presentation/health_confirmation_screen/health_confirmation_screen.dart';
import 'package:tanisha_s_application14/presentation/marrige_transfer_confirmation_screen/marrige_transfer_confirmation_screen.dart';
import 'package:tanisha_s_application14/presentation/family_transfer_confirmation_insurance_screen/family_transfer_confirmation_insurance_screen.dart';
import 'package:tanisha_s_application14/presentation/family_insurance_screen/family_insurance_screen.dart';
import 'package:tanisha_s_application14/presentation/family_insurance_plans_screen/family_insurance_plans_screen.dart';
import 'package:tanisha_s_application14/presentation/family_insurance_info_screen/family_insurance_info_screen.dart';
import 'package:tanisha_s_application14/presentation/family_insurance_confirmation_screen/family_insurance_confirmation_screen.dart';
import 'package:tanisha_s_application14/presentation/family_confirmation_successful_transfer_screen/family_confirmation_successful_transfer_screen.dart';
import 'package:tanisha_s_application14/presentation/family_confirmation_successful_transfer_recipt_screen/family_confirmation_successful_transfer_recipt_screen.dart';
import 'package:tanisha_s_application14/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String dashboardProfileScreen = '/dashboard_profile_screen';

  static const String analyticsScreen = '/analytics_screen';

  static const String analyticsBropdoxScreen = '/analytics_bropdox_screen';

  static const String analyticsLinkedinScreen = '/analytics_linkedin_screen';

  static const String analyticsAppleScreen = '/analytics_apple_screen';

  static const String kycScreen = '/kyc_screen';

  static const String kycUpgatepanScreen = '/kyc_upgatepan_screen';

  static const String kycUpdateVoteridScreen = '/kyc_update_voterid_screen';

  static const String kycUpdateDrivinfLicenceScreen =
      '/kyc_update_drivinf_licence_screen';

  static const String kycUpdateAadharScreen = '/kyc_update_aadhar_screen';

  static const String kycUpdatePhoneNoScreen = '/kyc_update_phone_no_screen';

  static const String fasTagScreen = '/fas_tag_screen';

  static const String fasTagDetailsScreen = '/fas_tag_details_screen';

  static const String fasTagPaymentScreen = '/fas_tag_payment_screen';

  static const String fdScreen = '/fd_screen';

  static const String normalFdPaymentScreen = '/normal_fd_payment_screen';

  static const String taxSavingFdPaymentScreen =
      '/tax_saving_fd_payment_screen';

  static const String cumulativeFdPaymentScreen =
      '/cumulative_fd_payment_screen';

  static const String nonCumulativeFdPaymentScreen =
      '/non_cumulative_fd_payment_screen';

  static const String seniorCitizenFdPaymentScreen =
      '/senior_citizen_fd_payment_screen';

  static const String neftScreen = '/neft_screen';

  static const String rdScreen = '/rd_screen';

  static const String rdOptionsScreen = '/rd_options_screen';

  static const String normalRdPaymentScreen = '/normal_rd_payment_screen';

  static const String seniourCitizenRdPaymentScreen =
      '/seniour_citizen_rd_payment_screen';

  static const String apyScreen = '/apy_screen';

  static const String netflixPaymentScreen = '/netflix_payment_screen';

  static const String netfiixPaymentAmountScreen =
      '/netfiix_payment_amount_screen';

  static const String netflixScreen = '/netflix_screen';

  static const String netflixConfirmationSuccessfulTransferScreen =
      '/netflix_confirmation_successful_transfer_screen';

  static const String netflixConfirmationSuccessfulTransferOneScreen =
      '/netflix_confirmation_successful_transfer_one_screen';

  static const String waterBillReceiptScreen = '/water_bill_receipt_screen';

  static const String waterBillViewReceiptScreen =
      '/water_bill_view_receipt_screen';

  static const String charityScreen = '/charity_screen';

  static const String waterBillPayBillScreen = '/water_bill_pay_bill_screen';

  static const String waterBillPaymentScreen = '/water_bill_payment_screen';

  static const String bankToBankTransferConfirmationIndianScreen =
      '/bank_to_bank_transfer_confirmation_indian_screen';

  static const String loanDetailsPage = '/loan_details_page';

  static const String loanDetailsTabContainerScreen =
      '/loan_details_tab_container_screen';

  static const String bankToBankTransferScreen =
      '/bank_to_bank_transfer_screen';

  static const String transferConfirmationBankToBankIndianScreen =
      '/transfer_confirmation_bank_to_bank_indian_screen';

  static const String bankToBankTransferAmountIndianScreen =
      '/bank_to_bank_transfer_amount_indian_screen';

  static const String bankToBankConfirmationSuccessfulTransferIndianScreen =
      '/bank_to_bank_confirmation_successful_transfer_indian_screen';

  static const String jioRechargeConfirmationScreen =
      '/jio_recharge_confirmation_screen';

  static const String jioConfirmationSuccessfulTransferOneScreen =
      '/jio_confirmation_successful_transfer_one_screen';

  static const String jioConfirmationSuccessfulTransferScreen =
      '/jio_confirmation_successful_transfer_screen';

  static const String homeLoanDetailPageInformationScreen =
      '/home_loan_detail_page_information_screen';

  static const String homeLoanPaymentDoneScreen =
      '/home_loan_payment_done_screen';

  static const String jioMobileRechargeScreen = '/jio_mobile_recharge_screen';

  static const String mainRechargeScreen = '/main_recharge_screen';

  static const String loanPaymentScreen = '/loan_payment_screen';

  static const String mainLoanGraphScreen = '/main_loan_graph_screen';

  static const String neftBanksDetailsScreen = '/neft_banks_details_screen';

  static const String fdPaymentScreen = '/fd_payment_screen';

  static const String passwordForFdScreen = '/password_for_fd_screen';

  static const String fdConfirmationSuccessfulTransferScreen =
      '/fd_confirmation_successful_transfer_screen';

  static const String rdPaymentScreen = '/rd_payment_screen';

  static const String passwordForRdScreen = '/password_for_rd_screen';

  static const String rdConfirmationSuccessfulTransferScreen =
      '/rd_confirmation_successful_transfer_screen';

  static const String kycConfirmationSuccessfulTransferScreen =
      '/kyc_confirmation_successful_transfer_screen';

  static const String disneyHotstarPaymentScreen =
      '/disney_hotstar_payment_screen';

  static const String disneyHoststarPaymentScreen =
      '/disney_hoststar_payment_screen';

  static const String paymentOfDisneyHotstarScreen =
      '/payment_of_disney_hotstar_screen';

  static const String disneyHostarconfirmationSuccessfulTransferScreen =
      '/disney_hostarconfirmation_successful_transfer_screen';

  static const String disneyHostarconfirmationSuccessfulTransferReciPtScreen =
      '/disney_hostarconfirmation_successful_transfer_reci_pt_screen';

  static const String donationPasswordScreen = '/donation_password_screen';

  static const String careClubReciptScreen = '/care_club_recipt_screen';

  static const String goldLoanDetailsScreen = '/gold_loan_details_screen';

  static const String goldLoanPaymentScreen = '/gold_loan_payment_screen';

  static const String goldLoanPasswordPaymentScreen =
      '/gold_loan_password_payment_screen';

  static const String goldLoanRecipytScreen = '/gold_loan_recipyt_screen';

  static const String transferConfirmationBankToBankIciciScreen =
      '/transfer_confirmation_bank_to_bank_icici_screen';

  static const String bankToBankTransferAmountIcicScreen =
      '/bank_to_bank_transfer_amount_icic_screen';

  static const String bankToBankTransferConfirmationIcicScreen =
      '/bank_to_bank_transfer_confirmation_icic_screen';

  static const String bankToBankConfirmationSuccessfulTransferIciciScreen =
      '/bank_to_bank_confirmation_successful_transfer_icici_screen';

  static const String careDonationDetailScreen = '/care_donation_detail_screen';

  static const String airtelRechargeConfirmationScreen =
      '/airtel_recharge_confirmation_screen';

  static const String airtelRechrgeScreen = '/airtel_rechrge_screen';

  static const String airtelConfirmationSuccessfulTransferReciptScreen =
      '/airtel_confirmation_successful_transfer_recipt_screen';

  static const String airtelConfirmationSuccessfulTransferScreen =
      '/airtel_confirmation_successful_transfer_screen';

  static const String interNetBillPayBillScreen =
      '/inter_net_bill_pay_bill_screen';

  static const String interNetBillPasswordScreen =
      '/inter_net_bill_password_screen';

  static const String internetBillViewReceiptScreen =
      '/internet_bill_view_receipt_screen';

  static const String internetBillReceiptScreen =
      '/internet_bill_receipt_screen';

  static const String toChoseTheModeOfTransferScreen =
      '/to_chose_the_mode_of_transfer_screen';

  static const String spotifyPaymentScreen = '/spotify_payment_screen';

  static const String spotifyPaymentOneScreen = '/spotify_payment_one_screen';

  static const String spotifyPaymentEntreScreen =
      '/spotify_payment_entre_screen';

  static const String spotifyConfirmationSuccessfulTransferScreen =
      '/spotify_confirmation_successful_transfer_screen';

  static const String spotifyConfirmationSuccessfulTransferReciptScreen =
      '/spotify_confirmation_successful_transfer_recipt_screen';

  static const String educationLoanReciptScreen =
      '/education_loan_recipt_screen';

  static const String educationLoanPaymentDetailsScreen =
      '/education_loan_payment_details_screen';

  static const String educationLoanPaymentScreen =
      '/education_loan_payment_screen';

  static const String educationLoadEducationLoanPasswordPaymentPageScreen =
      '/education_load_education_loan_password_payment_page_screen';

  static const String transferConfirmationBankToBanksbiScreen =
      '/transfer_confirmation_bank_to_banksbi_screen';

  static const String bankToBankTransferAmountsbiScreen =
      '/bank_to_bank_transfer_amountsbi_screen';

  static const String bankToBankTransferConfirmationsbiScreen =
      '/bank_to_bank_transfer_confirmationsbi_screen';

  static const String bankToBankConfirmationSuccessfulTransfersbiScreen =
      '/bank_to_bank_confirmation_successful_transfersbi_screen';

  static const String viRechargeConfirmationScreen =
      '/vi_recharge_confirmation_screen';

  static const String viPaymentScreen = '/vi_payment_screen';

  static const String viConfirmationSuccessfulTransferReciptScreen =
      '/vi_confirmation_successful_transfer_recipt_screen';

  static const String viConfirmationSuccessfulTransferScreen =
      '/vi_confirmation_successful_transfer_screen';

  static const String headsDonationDetailScreen =
      '/heads_donation_detail_screen';

  static const String headsFoundationScreen = '/heads_foundation_screen';

  static const String headsFoundationReciptScreen =
      '/heads_foundation_recipt_screen';

  static const String payBillScreen = '/pay_bill_screen';

  static const String viewElectricalReceiptScreen =
      '/view_electrical_receipt_screen';

  static const String payBillAmountElectricityScreen =
      '/pay_bill_amount_electricity_screen';

  static const String electricityBillPaymentScreen =
      '/electricity_bill_payment_screen';

  static const String payBillConfigrationElectricityScreen =
      '/pay_bill_configration_electricity_screen';

  static const String carLoanPaymentScreen = '/car_loan_payment_screen';

  static const String carLoanPasswordPageScreen =
      '/car_loan_password_page_screen';

  static const String carLoanReciptScreen = '/car_loan_recipt_screen';

  static const String carLoanScreen = '/car_loan_screen';

  static const String onboardingoneScreen = '/onboardingone_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String loginScreen = '/login_screen';

  static const String signupScreen = '/signup_screen';

  static const String setFingerprintScreen = '/set_fingerprint_screen';

  static const String onboardingtwoScreen = '/onboardingtwo_screen';

  static const String cardSettingsScreen = '/card_settings_screen';

  static const String optVerificationScreen = '/opt_verification_screen';

  static const String setFingerprintScanningScreen =
      '/set_fingerprint_scanning_screen';

  static const String scannerScreen = '/scanner_screen';

  static const String profileScreen = '/profile_screen';

  static const String manageProfileScreen = '/manage_profile_screen';

  static const String settingScreen = '/setting_screen';

  static const String notificationScreen = '/notification_screen';

  static const String mobileNumberPinChangeScreen =
      '/mobile_number_pin_change_screen';

  static const String otpVarificationScreen = '/otp_varification_screen';

  static const String popAddPinScreen = '/pop_add_pin_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String logoutScreen = '/logout_screen';

  static const String atmLocatorScreen = '/atm_locator_screen';

  static const String complainScreen = '/complain_screen';

  static const String contactScreen = '/contact_screen';

  static const String birthdayGiftGiftCardConfirmationSuccessfulTransferScreen =
      '/birthday_gift_gift_card_confirmation_successful_transfer_screen';

  static const String giftCardsOneScreen = '/gift_cards_one_screen';

  static const String birthdayGiftCardsDetailsScreen =
      '/birthday_gift_cards_details_screen';

  static const String birthdayGiftGiftCardsConfirmationScreen =
      '/birthday_gift_gift_cards_confirmation_screen';

  static const String
      birthdayGiftGiftCardConfirmationSuccessfulTransferOneScreen =
      '/birthday_gift_gift_card_confirmation_successful_transfer_one_screen';

  static const String birthdayGiftGiftCardTransferConfirmationScreen =
      '/birthday_gift_gift_card_transfer_confirmation_screen';

  static const String moneyTransferScreen = '/money_transfer_screen';

  static const String personToPersonTransferScreen =
      '/person_to_person_transfer_screen';

  static const String personToPersontransferAmountScreen =
      '/person_to_persontransfer_amount_screen';

  static const String personToPersonConfirmationScreen =
      '/person_to_person_confirmation_screen';

  static const String moerOptionsScreen = '/moer_options_screen';

  static const String homeInsuranceInfoScreen = '/home_insurance_info_screen';

  static const String homeInsuranceTransferConfirmationScreen =
      '/home_insurance_transfer_confirmation_screen';

  static const String homeInsuranceConfirmationSuccessfulTransferScreen =
      '/home_insurance_confirmation_successful_transfer_screen';

  static const String homeInssuranceConfirmationSuccessfulTransferReciptScreen =
      '/home_inssurance_confirmation_successful_transfer_recipt_screen';

  static const String homeInsurancePlansScreen = '/home_insurance_plans_screen';

  static const String homeInsuranceConfirmationScreen =
      '/home_insurance_confirmation_screen';

  static const String eidGiftSuccessfulTransferReciptScreen =
      '/eid_gift_successful_transfer_recipt_screen';

  static const String eidGiftCardsScreen = '/eid_gift_cards_screen';

  static const String eidGiftCardTransferConfirmationScreen =
      '/eid_gift_card_transfer_confirmation_screen';

  static const String eidPasswordForTransfareConformationScreen =
      '/eid_password_for_transfare_conformation_screen';

  static const String eidGiftConfirmationSuccessfulTransferScreen =
      '/eid_gift_confirmation_successful_transfer_screen';

  static const String eidTransferConfirmationScreen =
      '/eid_transfer_confirmation_screen';

  static const String personToPersonConfirmationSuccessfulTransferScreen =
      '/person_to_person_confirmation_successful_transfer_screen';

  static const String personToPersonConfirmationSuccessfulTransferReciptScreen =
      '/person_to_person_confirmation_successful_transfer_recipt_screen';

  static const String giftCardsScreen = '/gift_cards_screen';

  static const String marrigeTransferConfirmationOneScreen =
      '/marrige_transfer_confirmation_one_screen';

  static const String marrigeGiftCardePasswordScreen =
      '/marrige_gift_carde_password_screen';

  static const String marriageGiftConfirmationSuccessfulTransferScreen =
      '/marriage_gift_confirmation_successful_transfer_screen';

  static const String marrigeGiftCardReciptScreen =
      '/marrige_gift_card_recipt_screen';

  static const String healthConfirmationSuccessfulTransferScreen =
      '/health_confirmation_successful_transfer_screen';

  static const String healthConfirmationSuccessfulTransferReciptScreen =
      '/health_confirmation_successful_transfer_recipt_screen';

  static const String healthInsuranceInfoScreen =
      '/health_insurance_info_screen';

  static const String healthTransferConfirmationScreen =
      '/health_transfer_confirmation_screen';

  static const String healthInsurancePlansScreen =
      '/health_insurance_plans_screen';

  static const String healthConfirmationScreen = '/health_confirmation_screen';

  static const String marrigeTransferConfirmationScreen =
      '/marrige_transfer_confirmation_screen';

  static const String familyTransferConfirmationInsuranceScreen =
      '/family_transfer_confirmation_insurance_screen';

  static const String familyInsuranceScreen = '/family_insurance_screen';

  static const String familyInsurancePlansScreen =
      '/family_insurance_plans_screen';

  static const String familyInsuranceInfoScreen =
      '/family_insurance_info_screen';

  static const String familyInsuranceConfirmationScreen =
      '/family_insurance_confirmation_screen';

  static const String familyConfirmationSuccessfulTransferScreen =
      '/family_confirmation_successful_transfer_screen';

  static const String familyConfirmationSuccessfulTransferReciptScreen =
      '/family_confirmation_successful_transfer_recipt_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    dashboardProfileScreen: (context) => DashboardProfileScreen(),
    analyticsScreen: (context) => AnalyticsScreen(),
    analyticsBropdoxScreen: (context) => AnalyticsBropdoxScreen(),
    analyticsLinkedinScreen: (context) => AnalyticsLinkedinScreen(),
    analyticsAppleScreen: (context) => AnalyticsAppleScreen(),
    kycScreen: (context) => KycScreen(),
    kycUpgatepanScreen: (context) => KycUpgatepanScreen(),
    kycUpdateVoteridScreen: (context) => KycUpdateVoteridScreen(),
    kycUpdateDrivinfLicenceScreen: (context) => KycUpdateDrivinfLicenceScreen(),
    kycUpdateAadharScreen: (context) => KycUpdateAadharScreen(),
    kycUpdatePhoneNoScreen: (context) => KycUpdatePhoneNoScreen(),
    fasTagScreen: (context) => FasTagScreen(),
    fasTagDetailsScreen: (context) => FasTagDetailsScreen(),
    fasTagPaymentScreen: (context) => FasTagPaymentScreen(),
    fdScreen: (context) => FdScreen(),
    normalFdPaymentScreen: (context) => NormalFdPaymentScreen(),
    taxSavingFdPaymentScreen: (context) => TaxSavingFdPaymentScreen(),
    cumulativeFdPaymentScreen: (context) => CumulativeFdPaymentScreen(),
    nonCumulativeFdPaymentScreen: (context) => NonCumulativeFdPaymentScreen(),
    seniorCitizenFdPaymentScreen: (context) => SeniorCitizenFdPaymentScreen(),
    neftScreen: (context) => NeftScreen(),
    rdScreen: (context) => RdScreen(),
    rdOptionsScreen: (context) => RdOptionsScreen(),
    normalRdPaymentScreen: (context) => NormalRdPaymentScreen(),
    seniourCitizenRdPaymentScreen: (context) => SeniourCitizenRdPaymentScreen(),
    apyScreen: (context) => ApyScreen(),
    netflixPaymentScreen: (context) => NetflixPaymentScreen(),
    netfiixPaymentAmountScreen: (context) => NetfiixPaymentAmountScreen(),
    netflixScreen: (context) => NetflixScreen(),
    netflixConfirmationSuccessfulTransferScreen: (context) =>
        NetflixConfirmationSuccessfulTransferScreen(),
    netflixConfirmationSuccessfulTransferOneScreen: (context) =>
        NetflixConfirmationSuccessfulTransferOneScreen(),
    waterBillReceiptScreen: (context) => WaterBillReceiptScreen(),
    waterBillViewReceiptScreen: (context) => WaterBillViewReceiptScreen(),
    charityScreen: (context) => CharityScreen(),
    waterBillPayBillScreen: (context) => WaterBillPayBillScreen(),
    waterBillPaymentScreen: (context) => WaterBillPaymentScreen(),
    bankToBankTransferConfirmationIndianScreen: (context) =>
        BankToBankTransferConfirmationIndianScreen(),
    loanDetailsTabContainerScreen: (context) => LoanDetailsTabContainerScreen(),
    bankToBankTransferScreen: (context) => BankToBankTransferScreen(),
    transferConfirmationBankToBankIndianScreen: (context) =>
        TransferConfirmationBankToBankIndianScreen(),
    bankToBankTransferAmountIndianScreen: (context) =>
        BankToBankTransferAmountIndianScreen(),
    bankToBankConfirmationSuccessfulTransferIndianScreen: (context) =>
        BankToBankConfirmationSuccessfulTransferIndianScreen(),
    jioRechargeConfirmationScreen: (context) => JioRechargeConfirmationScreen(),
    jioConfirmationSuccessfulTransferOneScreen: (context) =>
        JioConfirmationSuccessfulTransferOneScreen(),
    jioConfirmationSuccessfulTransferScreen: (context) =>
        JioConfirmationSuccessfulTransferScreen(),
    homeLoanDetailPageInformationScreen: (context) =>
        HomeLoanDetailPageInformationScreen(),
    homeLoanPaymentDoneScreen: (context) => HomeLoanPaymentDoneScreen(),
    jioMobileRechargeScreen: (context) => JioMobileRechargeScreen(),
    mainRechargeScreen: (context) => MainRechargeScreen(),
    loanPaymentScreen: (context) => LoanPaymentScreen(),
    mainLoanGraphScreen: (context) => MainLoanGraphScreen(),
    neftBanksDetailsScreen: (context) => NeftBanksDetailsScreen(),
    fdPaymentScreen: (context) => FdPaymentScreen(),
    //passwordForFdScreen: (context) => passwordForFdScreen,
    fdConfirmationSuccessfulTransferScreen: (context) =>
        FdConfirmationSuccessfulTransferScreen(),
    rdPaymentScreen: (context) => RdPaymentScreen(),
    //passwordForRdScreen: (context) => PasswordForRdScreen(),
    rdConfirmationSuccessfulTransferScreen: (context) =>
        RdConfirmationSuccessfulTransferScreen(),
    kycConfirmationSuccessfulTransferScreen: (context) =>
        KycConfirmationSuccessfulTransferScreen(),
    disneyHotstarPaymentScreen: (context) => DisneyHotstarPaymentScreen(),
    disneyHoststarPaymentScreen: (context) => DisneyHoststarPaymentScreen(),
    paymentOfDisneyHotstarScreen: (context) => PaymentOfDisneyHotstarScreen(),
    disneyHostarconfirmationSuccessfulTransferScreen: (context) =>
        DisneyHostarconfirmationSuccessfulTransferScreen(),
    disneyHostarconfirmationSuccessfulTransferReciPtScreen: (context) =>
        DisneyHostarconfirmationSuccessfulTransferReciPtScreen(),
    donationPasswordScreen: (context) => DonationPasswordScreen(),
    careClubReciptScreen: (context) => CareClubReciptScreen(),
    goldLoanDetailsScreen: (context) => GoldLoanDetailsScreen(),
    goldLoanPaymentScreen: (context) => GoldLoanPaymentScreen(),
    goldLoanPasswordPaymentScreen: (context) => GoldLoanPasswordPaymentScreen(),
    goldLoanRecipytScreen: (context) => GoldLoanRecipytScreen(),
    transferConfirmationBankToBankIciciScreen: (context) =>
        TransferConfirmationBankToBankIciciScreen(),
    bankToBankTransferAmountIcicScreen: (context) =>
        BankToBankTransferAmountIcicScreen(),
    bankToBankTransferConfirmationIcicScreen: (context) =>
        BankToBankTransferConfirmationIcicScreen(),
    bankToBankConfirmationSuccessfulTransferIciciScreen: (context) =>
        BankToBankConfirmationSuccessfulTransferIciciScreen(),
    careDonationDetailScreen: (context) => CareDonationDetailScreen(),
    airtelRechargeConfirmationScreen: (context) =>
        AirtelRechargeConfirmationScreen(),
    airtelRechrgeScreen: (context) => AirtelRechrgeScreen(),
    airtelConfirmationSuccessfulTransferReciptScreen: (context) =>
        AirtelConfirmationSuccessfulTransferReciptScreen(),
    airtelConfirmationSuccessfulTransferScreen: (context) =>
        AirtelConfirmationSuccessfulTransferScreen(),
    interNetBillPayBillScreen: (context) => InterNetBillPayBillScreen(),
    interNetBillPasswordScreen: (context) => InterNetBillPasswordScreen(),
    internetBillViewReceiptScreen: (context) => InternetBillViewReceiptScreen(),
    internetBillReceiptScreen: (context) => InternetBillReceiptScreen(),
    toChoseTheModeOfTransferScreen: (context) =>
        ToChoseTheModeOfTransferScreen(),
    spotifyPaymentScreen: (context) => SpotifyPaymentScreen(),
    spotifyPaymentOneScreen: (context) => SpotifyPaymentOneScreen(),
    spotifyPaymentEntreScreen: (context) => SpotifyPaymentEntreScreen(),
    spotifyConfirmationSuccessfulTransferScreen: (context) =>
        SpotifyConfirmationSuccessfulTransferScreen(),
    spotifyConfirmationSuccessfulTransferReciptScreen: (context) =>
        SpotifyConfirmationSuccessfulTransferReciptScreen(),
    educationLoanReciptScreen: (context) => EducationLoanReciptScreen(),
    educationLoanPaymentDetailsScreen: (context) =>
        EducationLoanPaymentDetailsScreen(),
    educationLoanPaymentScreen: (context) => EducationLoanPaymentScreen(),
    educationLoadEducationLoanPasswordPaymentPageScreen: (context) =>
        EducationLoadEducationLoanPasswordPaymentPageScreen(),
    transferConfirmationBankToBanksbiScreen: (context) =>
        TransferConfirmationBankToBanksbiScreen(),
    bankToBankTransferAmountsbiScreen: (context) =>
        BankToBankTransferAmountsbiScreen(),
    bankToBankTransferConfirmationsbiScreen: (context) =>
        BankToBankTransferConfirmationsbiScreen(),
    bankToBankConfirmationSuccessfulTransfersbiScreen: (context) =>
        BankToBankConfirmationSuccessfulTransfersbiScreen(),
    viRechargeConfirmationScreen: (context) => ViRechargeConfirmationScreen(),
    viPaymentScreen: (context) => ViPaymentScreen(),
    viConfirmationSuccessfulTransferReciptScreen: (context) =>
        ViConfirmationSuccessfulTransferReciptScreen(),
    viConfirmationSuccessfulTransferScreen: (context) =>
        ViConfirmationSuccessfulTransferScreen(),
    headsDonationDetailScreen: (context) => HeadsDonationDetailScreen(),
    headsFoundationScreen: (context) => HeadsFoundationScreen(),
    headsFoundationReciptScreen: (context) => HeadsFoundationReciptScreen(),
    payBillScreen: (context) => PayBillScreen(),
    viewElectricalReceiptScreen: (context) => ViewElectricalReceiptScreen(),
    payBillAmountElectricityScreen: (context) =>
        PayBillAmountElectricityScreen(),
    electricityBillPaymentScreen: (context) => ElectricityBillPaymentScreen(),
    payBillConfigrationElectricityScreen: (context) =>
        PayBillConfigrationElectricityScreen(),
    carLoanPaymentScreen: (context) => CarLoanPaymentScreen(),
    carLoanPasswordPageScreen: (context) => CarLoanPasswordPageScreen(),
    carLoanReciptScreen: (context) => CarLoanReciptScreen(),
    carLoanScreen: (context) => CarLoanScreen(),
    onboardingoneScreen: (context) => OnboardingoneScreen(),
    onboardingScreen: (context) => OnboardingScreen(),
    loginScreen: (context) => LoginScreen(),
    signupScreen: (context) => SignupScreen(),
    setFingerprintScreen: (context) => SetFingerprintScreen(),
    onboardingtwoScreen: (context) => OnboardingtwoScreen(),
    cardSettingsScreen: (context) => CardSettingsScreen(),
    optVerificationScreen: (context) => OptVerificationScreen(),
    setFingerprintScanningScreen: (context) => SetFingerprintScanningScreen(),
    scannerScreen: (context) => ScannerScreen(),
    profileScreen: (context) => ProfileScreen(),
    manageProfileScreen: (context) => ManageProfileScreen(),
    settingScreen: (context) => SettingScreen(),
    notificationScreen: (context) => NotificationScreen(),
    mobileNumberPinChangeScreen: (context) => MobileNumberPinChangeScreen(),
    otpVarificationScreen: (context) => OtpVarificationScreen(),
    popAddPinScreen: (context) => PopAddPinScreen(),
    dashboardScreen: (context) => DashboardScreen(),
    logoutScreen: (context) => LogoutScreen(),
    atmLocatorScreen: (context) => AtmLocatorScreen(),
    complainScreen: (context) => ComplainScreen(),
    contactScreen: (context) => ContactScreen(),
    birthdayGiftGiftCardConfirmationSuccessfulTransferScreen: (context) =>
        BirthdayGiftGiftCardConfirmationSuccessfulTransferScreen(),
    giftCardsOneScreen: (context) => GiftCardsOneScreen(),
    birthdayGiftCardsDetailsScreen: (context) =>
        BirthdayGiftCardsDetailsScreen(),
    birthdayGiftGiftCardsConfirmationScreen: (context) =>
        BirthdayGiftGiftCardsConfirmationScreen(),
    birthdayGiftGiftCardConfirmationSuccessfulTransferOneScreen: (context) =>
        BirthdayGiftGiftCardConfirmationSuccessfulTransferOneScreen(),
    birthdayGiftGiftCardTransferConfirmationScreen: (context) =>
        BirthdayGiftGiftCardTransferConfirmationScreen(),
    moneyTransferScreen: (context) => MoneyTransferScreen(),
    personToPersonTransferScreen: (context) => PersonToPersonTransferScreen(),
    personToPersontransferAmountScreen: (context) =>
        PersonToPersontransferAmountScreen(),
    personToPersonConfirmationScreen: (context) =>
        PersonToPersonConfirmationScreen(),
    moerOptionsScreen: (context) => MoerOptionsScreen(),
    homeInsuranceInfoScreen: (context) => HomeInsuranceInfoScreen(),
    homeInsuranceTransferConfirmationScreen: (context) =>
        HomeInsuranceTransferConfirmationScreen(),
    homeInsuranceConfirmationSuccessfulTransferScreen: (context) =>
        HomeInsuranceConfirmationSuccessfulTransferScreen(),
    homeInssuranceConfirmationSuccessfulTransferReciptScreen: (context) =>
        HomeInssuranceConfirmationSuccessfulTransferReciptScreen(),
    homeInsurancePlansScreen: (context) => HomeInsurancePlansScreen(),
    homeInsuranceConfirmationScreen: (context) =>
        HomeInsuranceConfirmationScreen(),
    eidGiftSuccessfulTransferReciptScreen: (context) =>
        EidGiftSuccessfulTransferReciptScreen(),
    eidGiftCardsScreen: (context) => EidGiftCardsScreen(),
    eidGiftCardTransferConfirmationScreen: (context) =>
        EidGiftCardTransferConfirmationScreen(),
    eidPasswordForTransfareConformationScreen: (context) =>
        EidPasswordForTransfareConformationScreen(),
    eidGiftConfirmationSuccessfulTransferScreen: (context) =>
        EidGiftConfirmationSuccessfulTransferScreen(),
    eidTransferConfirmationScreen: (context) => EidTransferConfirmationScreen(),
    personToPersonConfirmationSuccessfulTransferScreen: (context) =>
        PersonToPersonConfirmationSuccessfulTransferScreen(),
    personToPersonConfirmationSuccessfulTransferReciptScreen: (context) =>
        PersonToPersonConfirmationSuccessfulTransferReciptScreen(),
    giftCardsScreen: (context) => GiftCardsScreen(),
    marrigeTransferConfirmationOneScreen: (context) =>
        MarrigeTransferConfirmationOneScreen(),
    marrigeGiftCardePasswordScreen: (context) =>
        MarrigeGiftCardePasswordScreen(),
    marriageGiftConfirmationSuccessfulTransferScreen: (context) =>
        MarriageGiftConfirmationSuccessfulTransferScreen(),
    marrigeGiftCardReciptScreen: (context) => MarrigeGiftCardReciptScreen(),
    healthConfirmationSuccessfulTransferScreen: (context) =>
        HealthConfirmationSuccessfulTransferScreen(),
    healthConfirmationSuccessfulTransferReciptScreen: (context) =>
        HealthConfirmationSuccessfulTransferReciptScreen(),
    healthInsuranceInfoScreen: (context) => HealthInsuranceInfoScreen(),
    healthTransferConfirmationScreen: (context) =>
        HealthTransferConfirmationScreen(),
    healthInsurancePlansScreen: (context) => HealthInsurancePlansScreen(),
    healthConfirmationScreen: (context) => HealthConfirmationScreen(),
    marrigeTransferConfirmationScreen: (context) =>
        MarrigeTransferConfirmationScreen(),
    familyTransferConfirmationInsuranceScreen: (context) =>
        FamilyTransferConfirmationInsuranceScreen(),
    familyInsuranceScreen: (context) => FamilyInsuranceScreen(),
    familyInsurancePlansScreen: (context) => FamilyInsurancePlansScreen(),
    familyInsuranceInfoScreen: (context) => FamilyInsuranceInfoScreen(),
    familyInsuranceConfirmationScreen: (context) =>
        FamilyInsuranceConfirmationScreen(),
    familyConfirmationSuccessfulTransferScreen: (context) =>
        FamilyConfirmationSuccessfulTransferScreen(),
    familyConfirmationSuccessfulTransferReciptScreen: (context) =>
        FamilyConfirmationSuccessfulTransferReciptScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
