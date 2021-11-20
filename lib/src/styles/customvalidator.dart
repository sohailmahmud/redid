String? phoneNumberValidator(String? phoneNo) {
  String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  RegExp regExp = RegExp(pattern);
  if (phoneNo!.isEmpty) {
    return 'Please enter mobile number';
  } else if (!regExp.hasMatch(phoneNo)) {
    return 'Please enter valid mobile number';
  }
  return null;
}

String? passwordValidator(String? password) {
  String pattern =
      r'(^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$)';
  RegExp regExp = RegExp(pattern);
  if (password!.isEmpty) {
    return 'Please enter password';
  } else {
    if (!regExp.hasMatch(password)) {
      return 'Enter valid password';
    } else {
      return null;
    }
  }
}
