// import 'dart:async';
// import 'package:customer/util/api/api_helper.dart';
// import 'package:customer/util/variable.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
// part 'emergency_contact.g.dart';

// @riverpod
// Future<Activity> getAcitivites(GetAcitivitesRef ref,String name , String phone) async {
//   final res = await ClientService.post(
//     path: 'user/${guser?.id}/emergencyContact',
//     payload: {"name": name, "contact_number": phone},
//     head: {
//       'Content-Type': 'application/json;charset=utf-8',
//       'Accept': 'application/json',
//       'Authorization': 'Bearer ${guser?.token}',
//     },
//   );

//   if (res.statusCode == 200) {
//     final data = activityFromJson(res.body);

//     return Future.value(data);
//   } else {
//     return Future.error('Erorr is cominng UP :(   Path:  user/${guser?.id}/rides${res.body}');
//   }
// }
