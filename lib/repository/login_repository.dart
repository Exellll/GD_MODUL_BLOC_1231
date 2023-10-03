class User{
  final String? name;
  final String? password;
  final String? token;

  User({this.name, this.password, this.token});

  @override
  String toString(){
    return 'User{name: $name, password: $password, token: $token}';
  }
}

class FailedLogin implements Exception{
  String errorMessage(){
    return "Login Failed";
  }
}

class LoginRepository{
  String username = "User";
  String password = "123";

  Future<User> login(String username, String password) async{
    print("Logining...");
    User userData = User();
    await Future.delayed(Duration(seconds: 3), (){
      if(this.username == username && this.password == password){
        userData = User(
          name: username,
          password: password,
          token: "12345");
      }else if(username == '' || password == ''){
        throw 'Username, password or NPM cannot be empty';
      }else{
        throw FailedLogin();
      }
    });
    return userData;
  }
}