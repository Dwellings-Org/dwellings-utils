class Validator {
  static String? password(String? password) {
    if (password != null) {
      if (password.isEmpty) {
        return "Password cannot be empty";
      } else if (password.length < 8) {
        return "Password must be more than 7 characters";
      }
    }
    return null;
  }

  static String? phone(String? phone) {
    if (phone != null) {
      if (phone.isEmpty) {
        return "Phone number cannot be empty";
      } else if (phone.length > 13 || phone.length < 6) {
        return "Invalid phone number";
      }
      return null;
    }
    return "Invalid phone number";
  }

  static String? singleName(String? name, [String title = "Name"]) {
    if (name != null) {
      if (name.isEmpty) {
        return "$title cannot be empty";
      } else if (name.length < 2) {
        return "Invalid $title";
      }
      return null;
    }
    return "Invalid $title";
  }
}
