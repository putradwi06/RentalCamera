import 'dart:io';
import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageHelper {
  static Future<String> uploadImageProfile(
      File file,
      ) async {
    String _imagePath = file.path.split('/').last;

    Reference ref =
    FirebaseStorage.instance.ref().child('image_profile').child(_imagePath);
    UploadTask task = ref.putFile(file);
    TaskSnapshot snapShot = await task;
    String _imgUrl = await snapShot.ref.getDownloadURL();
    return _imgUrl;
  }

  static Future<String> uploadBuktiTransfer(
      File file,
      ) async {
    String? _imagePath = file.path.split('/').last;

    Reference ref = FirebaseStorage.instance
        .ref()
        .child('bukti_transfer')
        .child(_imagePath);

    final UploadTask uploadTask = ref.putFile(file);

    final TaskSnapshot downloadUrl = await uploadTask;

    return await downloadUrl.ref.getDownloadURL();
  }
}
