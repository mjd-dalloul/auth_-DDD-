import 'dart:io';

import 'package:auth/services/failure/service_failure.dart';
import 'package:auth/services/interfaces/i_image_picker.dart';
import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerService implements IImagePicker {
  final ImagePicker picker;
  const ImagePickerService(this.picker);
  @override
  Future<Either<ServiceFailure, String>> getImage(ImageSource source) async {
      final pickedImage = await picker.getImage(source: source);
      return pickedImage == null ? left(ServiceFailure.canceled()) : right(pickedImage.path);
  }
}