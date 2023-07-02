import 'dart:io';
import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageHelper {
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
