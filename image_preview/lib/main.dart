import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gallery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Photo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// 이미지를 가져올 수 있는 패키지 ImagePicker 패키지로부터 인스턴스를 만듭니다.
  final ImagePicker _picker = ImagePicker();
  String? imagePath;

  handleGetAlbumImageButton() async {
    /// "앨범에서 가져오기" 버튼을 눌렀을 때 동작하는 함수입니다.
    XFile? image = await getAlbumImage();
    setImage(image);
  }

  handleGetCameraImageButton() async {
    /// "카메라에서 가져오기" 버튼을 눌렀을 때 동작하는 함수입니다.
    XFile? image = await getCameraImage();
    setImage(image);
  }

  Future<XFile?> getAlbumImage() async {
    /// 앨범에서 선택한 이미지를 반환하는 함수입니다.
    XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    return image;
  }

  Future<XFile?> getCameraImage() async {
    /// 카메라에서 촬영한 이미지를 반환하는 함수입니다.
    XFile? image = await _picker.pickImage(source: ImageSource.camera);
    return image;
  }

  void setImage(XFile? image) {
    /// [image] : 저장할 이미지
    /// 이미지를 저장하는 함수입니다.
    if (image == null) return;

    setState(() {
      imagePath = image!.path;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: handleGetAlbumImageButton, child: Text('앨범에서 가져오기')),
            ElevatedButton(onPressed: handleGetCameraImageButton, child: Text('카메라에서 가져오기')),
            /// SizedBox.shrink()는 빈 위젯을 만들때 사용합니다. imagePath 변수에 값이 있으면 이미지를 보여주고, 아니면 빈 위젯을 출력합니다.
            imagePath == null ? SizedBox.shrink() : Image.file(File(imagePath!))
          ],
        ),
      ),
    );
  }
}