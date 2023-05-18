import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import 'auth_rout.dart';

class BaseRout{
  Router get baseRout{
    final router = Router()..mount('/user', (AuthRout().autRout))
    ..get('/test', rootHandler);

return router;
  }
}
Response rootHandler(Request _) {
  
  return Response.ok('Hello, World!\n');
}