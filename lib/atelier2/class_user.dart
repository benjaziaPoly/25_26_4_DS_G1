class User {
  //attr + Get/setter/Cosntutor /methode
  int _code = 0;
  String _email = "";
  String _password = "";

  //getter 
  int get code => _code;
  String get email => _email;
  String get password => _password;
  //setter
  set code(int c) => _code = c;
  set email(String c) => _email = c;
  set password(String c) => _password = c;
  //Constructeur
  User() {
    _code = 0;
    _email = "";
    _password = "";
  }
  User.avecParam(int code, String email, String password) {
    _code = code;
    _email = email;
    _password = password;
  }
  User.avecParamOpt(int code, String email, String password);
  User.avecParamNomme({
    int code = 0,
    required String email,
    required String password,
  }) {
    _code = code;
    _email = email;
    _password = password;
  }
}

void main() {
  var u = User();
  var u1 = User.avecParam(100, "aa", "aa");
  var u2 = User.avecParamNomme(password:"aa",code:100, email:"aa", );
}