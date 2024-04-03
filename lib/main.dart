import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: Stack(
          children: [
            const Center(
              child: CircularProgressIndicator(),
            ),
            Center(
                child: FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image:
                        'https://i.pinimg.com/564x/9b/a2/57/9ba25796112cad616be27e473ae1e149.jpg'))
          ],
        ),
      ),
    );
  }
}
