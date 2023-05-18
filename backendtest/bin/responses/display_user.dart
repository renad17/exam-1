import 'dart:io';
import 'package:shelf/shelf.dart';

import '../msg/create_response.dart';

displayUsers (Request _)async{ 
  try{File myfile = File('info.json');
  final content = await myfile.readAsString();
  print(content);

return CreateResponse().successResponse(msg: "check console");
  }catch(error){
    print(error);
    return CreateResponse().errorResponse(msg: 'no data');
  }
}