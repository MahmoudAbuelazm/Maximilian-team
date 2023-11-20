import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

void main() {
  runApp(const ReadMoreExample());
}

class ReadMoreExample extends StatelessWidget {
  const ReadMoreExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Read More Example'),
        ),
        body: const Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: ReadMoreText(
                  'This is a long text that could contain very important content. It will be displayed initially, but the user can click on "Read more" to show more of the content.',
                  trimLines: 2, // Number of lines to initially show
                  colorClickableText: Colors.blue, // Customize link color
                  trimMode: TrimMode.Line, // Trim text by lines
                  trimCollapsedText: 'Read more',
                  trimExpandedText: 'Hide',
                  style: TextStyle(fontSize: 16.0, color: Colors.black),
                  textAlign: TextAlign.left, // Text alignment
                  moreStyle: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
