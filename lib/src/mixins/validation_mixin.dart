mixin ValidationMixin{
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