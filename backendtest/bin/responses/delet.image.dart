import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'package:http_parser/http_parser.dart';
import 'package:shelf/shelf.dart';

import '../msg/create_response.dart';

deletImage(Request _,String name) async {
  try {

     
    final file = File("bin/image/$name.png");
    await file.delete();
    

  
    return CreateResponse().successResponse(msg: "image has delet sent successfully");
  } catch (error) {
    print(error);
  }
  
  return CreateResponse().errorResponse(msg: 'failed');
}