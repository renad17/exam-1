class User{
  String? name;
  String? email;
  int? age;
  String? addres;
  User({this.name,this.email,this.age,this.addres});

  factory User.fromjson(Map json){
    return User(
      name: json["name"],
      email: json["email"],
      age: json["age"],
      addres: json["addres"],
    );
  }
  toMap(){
    return {
      "name":name,
      "email":email,
      "age":age,
      "addres":addres,
    };

  }
}