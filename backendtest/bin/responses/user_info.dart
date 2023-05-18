import 'dart:convert';

import 'dart:io';

import 'package:shelf/shelf.dart';

import '../msg/create_response.dart';

userInfo(Request req)async {
  // List <Map> user=[];
try{
  final body =await req.readAsString();
  final jsonbody = json.decode(body);
  final file = File("info.json");
  final database = json.encode(jsonbody);
    await file.writeAsString(database);
    
  // return Response.ok('saved');
  return CreateResponse().successResponse(msg: "saved");
}catch(error){
  print(error);

  return CreateResponse().errorResponse(msg: 'error');
}
}