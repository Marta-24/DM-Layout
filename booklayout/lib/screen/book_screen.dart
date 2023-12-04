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
        isLiked: isLiked,
        onHeartPressed: () {
          setState(() {
            isLiked = !isLiked;
          });
        },
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BookInformation(
              imageUrl:
                  'https://m.media-amazon.com/images/I/81msb6gUBTL._AC_UF1000,1000_QL80_.jpg',
              trending: '3',
              title: 'The Song of Achilles',
              writer: 'Madeline Miller',
              publishedDate: 'August 28th 2012',
            ),
            SizedBox(height: 16),
            Statistics(
              reads: 5100000,
              likes: 37600,
              episodes: 25,
            ),
            SizedBox(height: 16),
            BookDescription(
              title: 'The Song of Achilles',
              description: '''
  Achilles, ''the best of all the Greeks,'' son of the cruel sea goddess Thetis and the legendary king Peleus, is strong, swift, and beautiful, irresistible to all who meet him. Patroclus is an awkward young prince, exiled from his homeland after an act of shocking violence. Brought together by chance, they forge an inseparable bond, despite risking the gods' wrath.
They are trained by the centaur Chiron in the arts of war and medicine, but when word comes that Helen of Sparta has been kidnapped, all the heroes of Greece are called upon to lay siege to Troy in her name. Seduced by the promise of a glorious destiny, Achilles joins their cause, and torn between love and fear for his friend, Patroclus follows. Little do they know that the cruel Fates will test them both as never before and demand a terrible sacrifice.
  ''',
              textStyle: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(height: 16),
            BottomButtons(),
          ],
        ),
      ),
    );
  }
}
