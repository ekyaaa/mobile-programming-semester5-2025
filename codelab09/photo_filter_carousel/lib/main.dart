import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:photo_filter_carousel/widget/filter_carousel.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Permission.camera.request();

  final cameras = await availableCameras();
  final firstCamera = cameras.isNotEmpty ? cameras.first : throw Exception('No camera found');

  runApp(
    MaterialApp(
      home: PhotoFilterCarousel(camera: firstCamera),
      debugShowCheckedModeBanner: false,
    ),
  );
}
