import 'dart:io';
import 'dart:typed_data';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:image/image.dart' as img;

class ImagePickerHelper {
  static Future<File?> imgFromCamera() async {
    XFile? image = await ImagePicker()
        .pickImage(source: ImageSource.camera, imageQuality: 80);
    if (image != null) {
      final listImageByte = await image.readAsBytes();
      File? compressedImage = await compressImage(listImageByte);
      return File(image.path);
    }
   return null;
  }

  static Future<File?> imgFromGallery() async {
    XFile? image = await ImagePicker()
        .pickImage(source: ImageSource.gallery, imageQuality: 80);
    if (image != null) {
      final listImageByte = await image.readAsBytes();
      File? compressedImage = await compressImage(listImageByte);
      return compressedImage;
    }
    return null;
  }

  static Future<File> compressImage(List<int> bytes) async {
    int imageLength = bytes.length;
    if (imageLength < 2000000) return File.fromRawPath(Uint8List.fromList(bytes));
    final img.Image image = img.decodeImage(Uint8List.fromList(bytes))!;
    int compressQuality = 100;
    int length = imageLength;
    List<int> newByte = [];
    do {
      compressQuality -= 10;
      newByte = img.encodeJpg(
        image,
        quality: compressQuality,
      );
      length = newByte.length;
    } while (length > 2000000);

    return File.fromRawPath(Uint8List.fromList(newByte));
  }
}
