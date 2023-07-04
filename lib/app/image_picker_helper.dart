import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

class ImagePickerHelper {
  static Future<File?> imgFromCamera() async {
    XFile? image = await ImagePicker()
        .pickImage(source: ImageSource.camera, imageQuality: 80);
    if (image != null) {
      File? compressedImage = await compressImage(image);
      return compressedImage;
    }
    return null;
  }

  static Future<File?> imgFromGallery() async {
    XFile? image = await ImagePicker()
        .pickImage(source: ImageSource.gallery, imageQuality: 80);
    if (image != null) {
      File? compressedImage = await compressImage(image);
      return compressedImage;
    }
    return null;
  }

  static Future<File?> compressImage(XFile? file) async {
    // final String newPath = p.join((await getTemporaryDirectory()).path,
    //     '${FirebaseAuth.instance.currentUser!.uid}_${DateTime.now()}${p.extension(file?.path ?? "")}');

    // if (file != null) {
    //   var result = await FlutterImageCompress.compressAndGetFile(
    //     file.path,
    //     newPath,
    //     minHeight: 400,
    //     minWidth: 300,
    //     quality: 80,
    //   );

    //   return File(result!.path);
    // }
    return File(file!.path);
  }
}
