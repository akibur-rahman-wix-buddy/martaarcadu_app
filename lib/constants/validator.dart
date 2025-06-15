/// Validates that the value is not empty.
String? requiredValidator(String? value, {String message = 'This field is required'}) {
  if (value == null || value.trim().isEmpty) {
    return message;
  }
  return null;
}

/// Validates that the value is a valid name.
String? nameValidator(String? value) {
  return requiredValidator(value, message: 'Please enter your name');
}

/// Validates a proper email format.
String? emailValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your email';
  }
  final emailRegex = RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$');
  if (!emailRegex.hasMatch(value)) {
    return 'Please enter a valid email address';
  }
  return null;
}

/// Validates a basic password (length ≥ 6).
String? passwordValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Enter Password';
  }
  if (value.length < 6) {
    return 'Password must be at least 6 characters';
  }
  return null;
}

/// Validates a strong password with special character & number.
String? passwordValidatorSpecial(String? value) {
  if (value == null || value.isEmpty) {
    return 'Password is required';
  }
  if (value.length < 8) {
    return 'Password must be at least 8 characters';
  }
  if (!RegExp(r'\d').hasMatch(value)) {
    return 'Password must contain at least one number';
  }
  if (!RegExp(r'[!@#\$&*~%^()\-_=+{}[\]|;:<>,.?]').hasMatch(value)) {
    return 'Password must contain at least one special character';
  }
  return null;
}

/// Confirms the value matches the original password.
String? confirmPasswordValidator(String? value, String? originalPassword) {
  if (value == null || value.isEmpty) {
    return 'Please confirm your password';
  }
  if (value != originalPassword) {
    return 'Passwords do not match';
  }
  return null;
}

/// Validates phone number format.
String? validatePhoneNumber(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter a phone number';
  }
  if (!RegExp(r'^\d{10,15}$').hasMatch(value)) {
    return 'Enter a valid phone number';
  }
  return null;
}

/// Validates a 4-digit numeric PIN code.
String? validate4DigitPinCode(String? value) {
  if (value == null || value.isEmpty) {
    return 'Enter the 4-digit code';
  }
  if (!RegExp(r'^\d{4}$').hasMatch(value)) {
    return '4 Digit Code is invalid';
  }
  return null;
}

/// Generic validator for any empty field.
String? emptyValidator(String? value) {
  return requiredValidator(value, message: 'Please fill the field');
}
