class User {
  String _username;
  String _email;
  String _password;

  User({
    required String username,
    required String email,
    required String password,
  })  : _username = username,
        _password = password,
        _email = email;

  get username => this._username;
  get email => this._email;
  get password => this._password;
  
}
