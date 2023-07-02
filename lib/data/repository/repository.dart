import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pa_rentalcam/data/model/booking_model.dart';
import 'package:pa_rentalcam/data/model/camera_model.dart';
import 'package:pa_rentalcam/data/model/user_model.dart';

class Repository {
  final FirebaseFirestore _firestore;

  static final Repository _singleton = Repository._internal();

  factory Repository() => _singleton;

  Repository._internal() : _firestore = FirebaseFirestore.instance;


  Stream<List<CameraModel>> getListCamera() {
    final getBookings = _firestore.collection("Cameras");

    return getBookings
        .snapshots()
        .map((documents) => documents.docs.map((document) {
      return CameraModel.fromMap(document.data());
    }).toList());
  }

  Stream<List<Booking>> getBookings() {
    final userId = FirebaseAuth.instance.currentUser!.uid;
    debugPrint("userId: $userId");
    final getBookings = _firestore.collection("Booking").where("user_booking_id", isEqualTo: userId); // Bookings

    return getBookings.snapshots().map((documents) => documents.docs.map((document) {
      debugPrint("dokumen: ${Booking.fromMap(document.data())}");
      return Booking.fromMap(document.data());
    }).toList());
  }

  Future<bool> createUser(UserModel user) async {
    await _firestore
        .collection("Users")
        .doc(user.id)
        .set(user.toMap());
    return true;
  }

  Future<UserModel?> getUser() async {
   try {
     final userId = FirebaseAuth.instance.currentUser!.uid;
     debugPrint("userId: $userId");
     final user = await _firestore.collection("Users").doc(userId).get();
     return UserModel.fromMap(user.data()!);
   } catch (e) {
     debugPrint("GetUser: ${e.toString()}");
     return null;
   }
  }

  Future<void> sendBooking(Booking booking) async {
   try {
     final bookingId = await _firestore.collection("Booking").doc().id;
     _firestore.collection("Booking").doc(bookingId).set(booking.copyWith(bookingId: bookingId).toMap());
   }catch (e) {
     debugPrint("e: $e");
   }
  }
}