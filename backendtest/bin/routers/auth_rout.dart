import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../responses/delet.image.dart';
import '../responses/display_user.dart';
import '../responses/send_image.dart';
import '../responses/user_info.dart';
import '../responses/verify_email.dart';

class AuthRout{
  Router get autRout{
    final router = Router()..post('/verifyemail', vaerifyEmail)
    ..post('/image/<name>', sendImage)..post('/info', userInfo)
    ..get('/display', displayUsers)
    ..delete('/image/<name>', deletImage);

return router;
  }
}