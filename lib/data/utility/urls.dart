class Urls{
  static const String _baseUrl = 'https://craftybay.teamrabbil.com/api';
  static String emailVerification(String email) =>'$_baseUrl/UserLogin/$email';
  static String otpVerification(String email, String otp) =>'$_baseUrl/VerifyLogin/$email/$otp';
}