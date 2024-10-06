import 'package:dio/dio.dart';

import '../models/user_info_model.dart';
import '../models/user_model.dart';

String token = "";

Future<bool> login(UserModel user) async {
  try {
    Dio request = Dio();
    Response response = await request.post('https://dummyjson.com/auth/login',
        data: user.toMap());
    if (response.statusCode == 200) {
      token = response.data['accessToken'];
      return true;
    } else {
      return false;
    }
  } catch (e) {
    print(e);
    return false;
  }
}

// ! 1

// getMyInfo() async {
//   Dio request = Dio();
//   Response response = await request.get(
//     "https://dummyjson.com/auth/me",
//     options: Options(headers: {"Authorization": "Bearer $token"}),
//   );

//   return response.data;
// }

// ! 2

Future<UserInfoModel> getMyInfo() async {
  Dio request = Dio();
  Response response = await request.get(
    'https://dummyjson.com/auth/me',
    options: Options(headers: {"Authorization": "Bearer $token"}),
  );
  UserInfoModel userInfo = UserInfoModel.fromMap(response.data);
  return userInfo;
}
