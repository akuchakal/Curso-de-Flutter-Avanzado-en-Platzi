import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:platzi_trips_app/User/model/user.dart';
import 'package:platzi_trips_app/User/repository/cloud_firestore_api.dart';

class CloudFireStoreRepository {
  final _cloudFireStoreAPI = CloudFireStoreAPI();

  void updateUserDataFirestore(User user) => _cloudFireStoreAPI.updateUserData(user);
}