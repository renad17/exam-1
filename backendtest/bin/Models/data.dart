class Data{
  String? email;
  String? password;
  Data({this.email,this.password});

  factory Data.fromjson(Map json){
    return Data(
      email: json["email"],
      password: json["password"],
    );
  }
  toMap(){
    return {
      "email":email,
      "password":password,
    };

  }
}