import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'filter_selector.dart';

class PhotoFilterCarousel extends StatefulWidget {
  final CameraDescription camera;
  const PhotoFilterCarousel({super.key, required this.camera});

  @override
  State<PhotoFilterCarousel> createState() => _PhotoFilterCarouselState();
}

class _PhotoFilterCarouselState extends State<PhotoFilterCarousel> {
  final _filters = [
    Colors.white,
    ...List.generate(
      Colors.primaries.length,
      (index) => Colors.primaries[(index * 4) % Colors.primaries.length],
    )
  ];

  final _filterColor = ValueNotifier<Color>(Colors.white);

  late CameraController _cameraController;
  bool _isCameraInitialized = false;
  XFile? _capturedPhoto;

  @override
  void initState() {
    super.initState();
    _initCamera();
  }

  Future<void> _initCamera() async {
    _cameraController = CameraController(
      widget.camera,
      ResolutionPreset.high,
      enableAudio: false,
    );
    await _cameraController.initialize();
    if (!mounted) return;
    setState(() {
      _isCameraInitialized = true;
    });
  }

  void _onFilterChanged(Color value) {
    _filterColor.value = value;
  }

  @override
  void dispose() {
    _cameraController.dispose();
    _filterColor.dispose();
    super.dispose();
  }

  Future<void> _takePicture() async {
    if (!_cameraController.value.isInitialized) return;
    try {
      final file = await _cameraController.takePicture();
      setState(() {
        _capturedPhoto = file;
        _filterColor.value = Colors.white; // reset filter optional
      });
    } catch (e) {
      // ignore or log
    }
  }

  void _retake() {
    setState(() {
      _capturedPhoto = null;
      _filterColor.value = Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!_isCameraInitialized) {
      return const Material(
        color: Colors.black,
        child: Center(child: CircularProgressIndicator()),
      );
    }

    return Material(
      color: Colors.black,
      child: Stack(
        children: [
          Positioned.fill(
            child: _capturedPhoto == null ? _buildCameraPreview() : _buildPhotoWithFilter(),
          ),
          if (_capturedPhoto == null)
            Positioned(
              bottom: 24,
              left: 0,
              right: 0,
              child: Center(
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: _takePicture,
                  child: const Icon(Icons.camera_alt, color: Colors.black),
                ),
              ),
            )
          else
            Positioned(
              left: 0.0,
              right: 0.0,
              bottom: 0.0,
              child: _buildFilterSelector(),
            ),
          if (_capturedPhoto != null)
            Positioned(
              top: 40,
              left: 16,
              child: SafeArea(
                child: ElevatedButton(
                  onPressed: _retake,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black54),
                  child: const Text('Retake'),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildCameraPreview() {
    return CameraPreview(_cameraController);
  }

  Widget _buildPhotoWithFilter() {
    return ValueListenableBuilder<Color>(
      valueListenable: _filterColor,
      builder: (context, color, child) {
        return Image.file(
          File(_capturedPhoto!.path),
          color: color.withOpacity(0.5),
          colorBlendMode: BlendMode.color,
          fit: BoxFit.cover,
        );
      },
    );
  }

  Widget _buildFilterSelector() {
    return FilterSelector(
      onFilterChanged: _onFilterChanged,
      filters: _filters,
    );
  }
}