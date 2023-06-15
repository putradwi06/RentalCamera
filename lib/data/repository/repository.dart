import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pa_rentalcam/data/model/camera_model.dart';
import 'package:pa_rentalcam/data/model/user_model.dart';

class Repository {
  final FirebaseFirestore _firestore;

  static final Repository _singleton =
  Repository._internal();

  factory Repository() => _singleton;

  Repository._internal() : _firestore = FirebaseFirestore.instance;


  Stream<List<CameraModel>> getListCamera() {
    final getBookings = _firestore.collection("Cameras"); // Bookings

    return getBookings
        .snapshots()
        .map((documents) => documents.docs.map((document) {
      return CameraModel.fromMap(document.data());
    }).toList());
  }

  Future<bool> createUser(UserModel user) async {
    final userId = _firestore.collection("Users").id;
    await _firestore.collection("Users").doc(userId).set(user.copyWith(id: userId).toMap());
    return true;
  }
}