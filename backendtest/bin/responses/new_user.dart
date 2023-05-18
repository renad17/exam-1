import 'dart:convert';

import 'dart:io';

import 'package:shelf/shelf.dart';

import '../Models/user.dart';
import '../msg/create_response.dart';
newUser(Request req)async {
  // List <Map> user=[];
try{
  final body =await req.readAsString();
  final jsonbody = json.decode(body);
// File myfile = File('info.json');
// final content = json.decode(await myfile.readAsString());
// user.add(jsonbody);
// print(jsonbody);
// final file = File("info.json");
// final dd = json.encode(body);
//     await file.writeAsStringSync(dd);
//------------
// List<User> user=[];
// for (var element in jsonbody) {
//   User userdata = User.fromjson(element);
//   user.add(userdata);
// }
final file = File("info.json");
final database = json.encode(jsonbody);
    await file.writeAsString(database);
    
  return CreateResponse().successResponse(msg: 'saved');
}catch(error){
  print(error);

  return CreateResponse().errorResponse(msg: 'error');
}
}