// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tahap1_crud/model/user_model.dart';

class UserService {
  User? user;

  Future getUsers() async {
    try {
      Uri url = Uri.parse("https://capekngoding.com/6282197504499/api/users");
      final response = await http.get(url);

      Map data = jsonDecode(response.body);
      List userData = [];

      for (var i in data["data"]) {
        userData.add(i);
      }
      if (userData.isNotEmpty) {
        print("Get users success");
      }

      return User.usersFromSnapshot(userData);
    } catch (e) {
      print(e.toString());
    }
  }

  Future addUser(
    String id,
    String username,
    String email,
    String password,
    String? profilePicture,
  ) async {
    try{
    Uri url =
        Uri.parse("POST https://capekngoding.com/6282197504499/api/users");
    final response = await http.post(url, body: {
      "id": id,
      "username": username,
      "email": email,
      "password": password,
      "profile_picture": profilePicture ?? "",
    });

    var data = jsonDecode(response.body);
    return data;
    
    } catch (e) {
      print(e.toString());
    }
  }

  Future updateUser(
    String id,
    String username,
    String email,
    String password,
    String? profilePicture,
  ) async {
    try{
      Uri url = Uri.parse("https://capekngoding.com/6282197504499/api/users/$id");
    final response = await http.put(url, body: {
      "username": username,
      "email": email,
      "password": password,
      "profile_picture": profilePicture ?? "",
    });
    var data = jsonDecode(response.body);
    return data;

    } catch (e) {
      print(e.toString());
    }
  }

  Future deleteUser(String id) async {
    try{
    Uri url =
        Uri.parse("https://capekngoding.com/6282197504499/api/users/$id");
    final response = await http.delete(url);

    var data = jsonDecode(response.body);
    return data;

    } catch (e) {
      print(e.toString());
    }
  }
}
