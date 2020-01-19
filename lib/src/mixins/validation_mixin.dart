class ValidationMixin {
  String validateEmail(String email) {
    return email.contains('@') ? null : 'Email envaild !';
  }

  String validatename(String username) {
    return username.length > 0 ? null : 'Enter your name';
  }

  String validateName(String username) {
    return username.length > 0 ? null : 'من فضلك قم بادخال الاسم';
  }

  String validateCarBrand(String username) {
    return username.length > 0 ? null : 'من فضلك قم بادخال نوع السيارة';
  }

  String validateCarModel(String username) {
    return username.length > 0 ? null : 'من فضلك قم بادخال موديل السيارة';
  }

  String validateContactText(String username) {
    return username.length > 0 ? null : 'من فضلك قم بادخال نص الرسالة';
  }

  String validateDescription(String username) {
    return username.length > 0 ? null : 'من فضلك قم بادخال الوصف';
  }

  String validateCarPlate(String username) {
    return username.length > 0 ? null : 'من فضلك قم بادخال رقم لوحة السيارة';
  }

  String validateBankAccount(String username) {
    return username.length > 0 ? null : 'من فضلك قم بادخال رقم الحساب البنكي';
  }

  String validateDropdownRegister(dynamic value) {
    return value != 0 ? null : 'قم باختيار البلد';
  }

  String validateDropdownBanks(dynamic value) {
    return value != 0 ? null : 'قم باختيار البنك';
  }

  String validateDropdownCategories(dynamic value) {
    return value != 0 ? null : 'قم باختيار القسم';
  }

  String validateDropdownCities(dynamic value) {
    return value != 0 ? null : 'قم باختيار  المدينة';
  }

  String validateDropdownReasons(dynamic value) {
    return value != 0 ? null : 'قم باختيار نوع الشكوى';
  }

  String validatePhone(String phone) {
    if (phone.length != 10) {
      return 'يجب أن يتكون رقم الجوال من 10 ارقام';
    } else if (phone.substring(0, 2) != '05') {
      return 'يجب أن يبدأ رقم الجوال ب 05';
    } else {
      return null;
    }
  }

  String validateQuestion(String question) {
    return question.length > 0 ? null : 'من فضلك قم بادخال نص السؤال';
  }

  String validateAnswer(String answer) {
    return answer.length > 0 ? null : 'من فضلك قم بادخال نص الاجابة';
  }

  String validatePassword(String password) {
    return password.length > 5
        ? null
        : 'Password is too short!';
  }
}
