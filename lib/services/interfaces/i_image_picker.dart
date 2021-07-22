import 'dart:io';

import 'package:auth/services/failure/service_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';

abstract class IImagePicker{
  Future<Either<ServiceFailure, String>> getImage(ImageSource source);
}