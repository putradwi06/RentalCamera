import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:pa_rentalcam/data/model/camera_model.dart';

class Booking extends Equatable {
  final String bookingId;
  final CameraModel cameraBooking;
  final int rentalDay;
  final Timestamp? startRentalTime;
  final Timestamp? endRentalTime;
  int totalPrice;
  final String userBookingId;
  final String userBookingName;
  final int userBookingNoTlpn;
  final Timestamp createdAt;
  final String status;
  final String buktiTransfer;

  Booking({
    required this.bookingId,
    required this.cameraBooking,
    required this.rentalDay,
    required this.startRentalTime,
    required this.endRentalTime,
    required this.totalPrice,
    required this.userBookingId,
    required this.userBookingName,
    required this.userBookingNoTlpn,
    required this.createdAt,
    required this.status,
    required this.buktiTransfer
  });

  Booking copyWith({
    String? bookingId,
    CameraModel? cameraBooking,
    int? rentalDay,
    Timestamp? startRentalTime,
    Timestamp? endRentalTime,
    int? totalPrice,
    String? userBookingId,
    String? userBookingName,
    int? userBookingNoTlpn,
    Timestamp? createdAt,
    String? status,
    String? buktiTransfer
  }) {
    return Booking(
      bookingId: bookingId ?? this.bookingId,
      cameraBooking: cameraBooking ?? this.cameraBooking,
      rentalDay: rentalDay ?? this.rentalDay,
      startRentalTime: startRentalTime ?? this.startRentalTime,
      endRentalTime: endRentalTime ?? this.endRentalTime,
      totalPrice: totalPrice ?? this.totalPrice,
      userBookingId: userBookingId ?? this.userBookingId,
      userBookingName: userBookingName ?? this.userBookingName,
      userBookingNoTlpn: userBookingNoTlpn ?? this.userBookingNoTlpn,
      createdAt: createdAt ?? this.createdAt,
      status: status ?? this.status,
      buktiTransfer: buktiTransfer ?? this.buktiTransfer,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'booking_id': this.bookingId,
      'camera_booking': this.cameraBooking.toMap(),
      'rental_day': this.rentalDay,
      'start_rental_time': this.startRentalTime,
      'end_rental_time': this.endRentalTime,
      'total_price': this.totalPrice,
      'user_booking_id': this.userBookingId,
      'user_booking_name': this.userBookingName,
      'user_booking_noTlpn': this.userBookingNoTlpn,
      'created_at': this.createdAt,
      'status': this.status,
      'bukti_transfer': this.buktiTransfer,
    };
  }

  factory Booking.fromMap(Map<String, dynamic> map) {
    return Booking(
      bookingId: map['booking_id'],
      cameraBooking: CameraModel.fromMap(map['camera_booking']),
      rentalDay: map['rental_day'],
      startRentalTime: map['start_rental_time'],
      endRentalTime: map['end_rental_time'],
      totalPrice: map['total_price'] ,
      userBookingId: map['user_booking_id'],
      userBookingName: map['user_booking_name'] ,
      userBookingNoTlpn: map['user_booking_noTlpn'],
      createdAt: map['created_at'],
      status: map['status'],
      buktiTransfer: map['bukti_transfer'],
    );
  }

  @override
  List<Object?> get props => [
        bookingId,
        cameraBooking,
        rentalDay,
        startRentalTime,
        endRentalTime,
        totalPrice,
        userBookingId,
        userBookingName,
        userBookingNoTlpn,
        createdAt,
        status,
        buktiTransfer,
      ];
}