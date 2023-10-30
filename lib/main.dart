import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WidgetDemo(),
    );
  }
}
class WidgetDemo extends StatelessWidget {
  const WidgetDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('City Tour'),
      ),
      body: const Column(
        children: [
          BottomImage(),
          // ElevatedButton
          // Row
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('',
                style: TextStyle(fontSize: 24),),
            ],
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),


          TopContainer(),
        ],
      ),
    );
  }
}
class BottomImage extends StatelessWidget {
  const BottomImage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Image.network('https://picsum.photos/id/127/300/200',
        width: double.infinity,
        height: 300,

        fit: BoxFit.cover,
      ),
    );
  }
}
class TopContainer extends StatelessWidget {
  const TopContainer({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      color: Colors.white,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Divider(
          thickness: 1,
          color: Colors.white,
        ),
        Text(
          'Explore, Enjoy, Experience',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black, // Atur warna sesuai keinginan
          ),
          textAlign: TextAlign.start,
        ),
        SizedBox(height: 8), // Spasi antara deskripsi dan teks utama
        Text(
          'Explore the charm of our citys hidden gems and embark on a journey to discover the rich cultural heritage, breathtaking landscapes, and unique experiences that await you. From historic landmarks to vibrant markets and serene natural wonders, our city offers a tapestry ofexperiences that will captivate your senses. Join us in exploring the beauty of our city andcreate memories that will last a lifetime. Come and visit our citys treasures today',
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
      ),
      ],
    ),
    ),
    );
  }
}

