import 'package:download_photos/models/photo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_downloader/image_downloader.dart';

class DownloadScreen extends StatelessWidget {
  final Photo photo;

  DownloadScreen({Key key, @required this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Image'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.network(photo.url),
            Center(
              child: FlatButton(
                color: Colors.green,
                child: Text(
                  'Download',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                onPressed: () async {
                  await ImageDownloader.downloadImage(photo.url);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}