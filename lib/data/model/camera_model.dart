import 'package:equatable/equatable.dart';

class CameraModel extends Equatable {
  final String? cameraId;
  final String title;
  final String subTitle;
  final String description;
  final String picture;
  final String type;
  final int stock;
  int price;
  int? quantity;

  CameraModel({
    required this.cameraId,
    required this.title,
    required this.subTitle,
    required this.description,
    required this.picture,
    required this.type,
    required this.stock,
    required this.price,
    this.quantity,
  });

  Map<String, dynamic> toMap() {
    return {
      'camera_id': cameraId,
      'title': title,
      'sub_title': subTitle,
      'description': description,
      'picture': picture,
      'type': type,
      'stock': stock,
      'price': price,
      'quantity': quantity,
    };
  }

  Map<String, dynamic> toCameraBooking() {
    return {
      'camera_id': cameraId,
      'title': title,
      'sub_title': subTitle,
      'description': description,
      'picture': picture,
      'type': type,
      'stock': stock,
      'price': price,
      'quantity': quantity,
    };
  }

  factory CameraModel.fromMap(Map<String, dynamic> map) {
    return CameraModel(
      cameraId: map['camera_id'] as String,
      title: map['title'] as String,
      subTitle: map['sub_title'] as String,
      description: map['description'] as String,
      picture: map['picture'] as String,
      type: map['type'] as String,
      stock: map['stock'] as int,
      price: map['price'] as int,
    );
  }

  factory CameraModel.fromCameraBooking(Map<String, dynamic> map) {
    return CameraModel(
      cameraId: map['camera_id'] as String,
      title: map['title'] as String,
      subTitle: map['sub_title'] as String,
      description: map['description'] as String,
      picture: map['picture'] as String,
      type: map['type'] as String,
      stock: map['stock'] as int,
      price: map['price'] as int,
      quantity: map['quantity'] as int,
    );
  }

  CameraModel copyWith({
    String? cameraId,
    String? title,
    String? subTitle,
    String? description,
    String? picture,
    String? type,
    int? stock,
    int? price,
    int? quantity,
  }) {
    return CameraModel(
      cameraId: cameraId ?? this.cameraId,
      title: title ?? this.title,
      subTitle: subTitle ?? this.subTitle,
      description: description ?? this.description,
      picture: picture ?? this.picture,
      type: type ?? this.type,
      stock: stock ?? this.stock,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
    );
  }

  @override
  List<Object?> get props =>
      [cameraId, title, subTitle, description, picture, type, stock, price, quantity];
}
