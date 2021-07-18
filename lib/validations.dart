class Validations {
  static validateName(String value) {
    if (value.trim().isEmpty) {
      return "Please enter your name";
    } else
      return null;
  }

  static validateAge(String value) {
    if (value.trim().isEmpty) {
      return "Please enter your age";
    } else
      return null;
  }
}
