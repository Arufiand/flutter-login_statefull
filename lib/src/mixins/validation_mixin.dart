mixin ValidationMixin{

  String? validateField(String fieldType, String value) {
    if (fieldType == 'email') {
      return validateEmail(value);
    } else if (fieldType == 'password') {
      return validatePassword(value);
    }
    return null;
  }

  String? validateEmail (value) {
    if(!value.contains('@')){
     return 'Please insert an valid emails';
    }
    return null;
  }

  String? validatePassword (value) {
    if(value.length < 4){
      return 'Pass char must be more than 4 chars';
    }
    return null;
  }

}