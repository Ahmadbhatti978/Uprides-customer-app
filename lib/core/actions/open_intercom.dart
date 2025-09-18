import 'package:intercom_flutter/intercom_flutter.dart';
import '../../util/variable.dart';

Future openIntercom() async {
  // Add your function code here!
  await Intercom.instance.loginIdentifiedUser(email: guser?.email);
  await Intercom.instance.displayMessenger();
}
