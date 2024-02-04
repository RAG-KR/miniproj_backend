import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:t_store/data/repositories/user/user_model.dart';

class UserRepository extends GetxController{
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> saveUserRecord(UserModel user) async {
    try{
      await _db.collection("users").doc(user.id).set(user.toJson());
    }catch(e){
      throw 'something went wrong';
    }
  }
}