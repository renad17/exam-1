import 'dart:convert';

import 'dart:io';

import 'package:shelf/shelf.dart';

import '../Models/data.dart';
import '../msg/create_response.dart';

vaerifyEmail(Request req)async {
  
try{
  final body =await req.readAsString();
  final jsonbody = json.encode(body);
File myfile = File('data.json');
final  content = json.decode(await myfile.readAsString());
List<Data> data=[];
for (var element in content) {
  Data datainfo = Data.fromjson(element);
  data.add(datainfo);
}
// final ss = json.decode(datainfo);
// if(jsonbody == ){

  return CreateResponse().successResponse(msg: "verify");
// }
// List<Data> data=[];
// for (var element in content) {
//   Data datainfo = Data.fromjson(element);
//   data.add(datainfo);
// }
// Data selectemail= data.firstWhere((data) => data.email == jsonbody['email']);
// Data selectpasswprd= data.firstWhere((data) => data.password == password);
// if(selectemail.toMap() == email&& selectpasswprd.toMap()==password){
//   return Response.ok('verify');
// }

  // return Response.ok('failed');
}catch(error){
  return Response.forbidden("error");
}
}