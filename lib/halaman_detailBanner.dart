import 'package:flutter/material.dart';

class DetailBannerPage extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String actor;
  final String category;
  final String synopsis;

  DetailBannerPage({
    required this.imageUrl,
    required this.title,
    required this.actor,
    required this.category,
    required this.synopsis,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
        backgroundColor: Colors.grey[800],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 16/9, // Anda bisa mengatur rasio sesuai kebutuhan
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Center(
              child: Text(
                title,
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'AKTOR',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(actor),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'KATEGORI',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(category),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'SINOPSIS',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(synopsis),
            ),
          ],
        ),
      ),
    );
  }
}
