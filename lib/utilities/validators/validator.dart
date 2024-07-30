
class ValidationUtil {
  // Regular expression for email validation
  static final RegExp emailRegExp = RegExp(r'^[^@]+@[^@]+\.[^@]+');

  // Regular expression for phone number validation (10-digit numbers)
  static final RegExp phoneRegExp = RegExp(r'^\d{10}$');

  // Validates that the input is not empty
  static String? validateNotEmpty(String? value, String fieldName) {
    if (value == null || value.isEmpty) {
      return 'Please enter your $fieldName';
    }
    return null;
  }

  // Validates that the email is in the correct format
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    if (!emailRegExp.hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  // Validates that the password is at least 8 characters long
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    }
    return null;
  }

  // Validates that the passwords match
  static String? validateConfirmPassword(String? value, String originalPassword) {
    if (value == null || value.isEmpty) {
      return 'Please confirm your password';
    }
    if (value != originalPassword) {
      return 'Passwords do not match';
    }
    return null;
  }

  // Validates that the phone number is in the correct format
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your phone number';
    }
    if (!phoneRegExp.hasMatch(value)) {
      return 'Please enter a valid phone number';
    }
    return null;
  }
}
