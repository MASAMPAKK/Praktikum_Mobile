import 'package:flutter/material.dart';

void main() {
  runApp(GameReviewApp());
}

class GameReviewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GameListPage(),
    );

  }
}

class GameListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GameReviewHub"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search bar (Container + Text)
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text("Cari game..."),
            ),
            SizedBox(height: 20),

            // List game
            Expanded(
              child: ListView(
                children: [
                  gameCard("Cyber Adventure", "Action", "★★★★★",
                      "Game aksi futuristik penuh petualangan."),
                  gameCard("Puzzle Master", "Puzzle", "★★★★☆",
                      "Latih otakmu dengan berbagai teka-teki."),
                  gameCard("Fantasy Quest", "RPG", "★★★☆☆",
                      "Masuki dunia fantasi penuh misteri."),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget
  Widget gameCard(String title, String category, String rating, String desc) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Judul Game
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          // Rating dan kategori
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Rating: $rating"),
              Text(category, style: TextStyle(color: Colors.blue)),
            ],
          ),

          SizedBox(height: 6),

          Text(desc),
        ],
      ),
    );
  }
}
