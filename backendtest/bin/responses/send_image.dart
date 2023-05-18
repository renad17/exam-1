import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'package:http_parser/http_parser.dart';
import 'package:shelf/shelf.dart';

import '../msg/create_response.dart';

sendImage(Request req,String name) async {
  try {
    final completer = Completer<List<int>>();
    final chunks = <List<int>>[];
    final stream = req.read().listen((event) {
      chunks.add(event);
    });
    stream.onError((error) {
      return Response.forbidden("error loading");
    });
    stream.onDone(() {
      completer.complete(chunks.expand((bit) => bit).toList());
    });
    final byteImage = await completer.future;
    final contentType = MediaType.parse(req.headers["Content-Type"]!); 
    final file = File("bin/image/$name.${contentType.subtype}");
    await file.writeAsBytes(byteImage);
    print(byteImage);

    return CreateResponse().successResponse(msg: "The image has been sent successfully");
  } catch (error) {
    print(error);
  }
  return CreateResponse().errorResponse(msg: 'failed');
}