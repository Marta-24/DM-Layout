import 'package:flutter/material.dart';
import 'package:booklayout/widgets/top_bar.dart';
import 'package:booklayout/widgets/book_information.dart';
import 'package:booklayout/widgets/statistics.dart';
import 'package:booklayout/widgets/book_description.dart';
import 'package:booklayout/widgets/bottom_buttons.dart';

class BookScreen extends StatefulWidget {
  const BookScreen({Key? key}) : super(key: key);

  @override
  _BookScreenState createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        onHeartPressed: () {
          setState(() {
            isLiked = !isLiked;
          });
        },
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const BookInformation(
              imageUrl: 'https://m.media-amazon.com/images/I/81msb6gUBTL._AC_UF1000,1000_QL80_.jpg',
              trending: '1',
              title: 'Sample Book Title',
              writer: 'John Doe',
              publishedDate: 'Jan 1, 2023',
            ),
            const SizedBox(height: 16),
            Statistics(
              reads: 100,
              likes: isLiked ? 101 : 100,
              episodes: 20,
            ),
            const SizedBox(height: 16),
            const BookDescription(
              title: 'The Song of Achilles',
              description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            ),
            const SizedBox(height: 16),
            BottomButtons(
              onReadPressed: () {
                // Handle read button press
              },
              onPlayPressed: () {
                // Handle play button press
              },
            ),
          ],
        ),
      ),
    );
  }
}