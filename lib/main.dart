import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: "Wilde",
        text:
            "In the midst of challenges, lies the opportunity for growth and transformation."),
    Quote(
        author: "Wilde",
        text:
            "The power to change resides within each one of us; it's a matter of embracing it."),
    Quote(
        author: "Wilde",
        text:
            "Happiness is not a destination, but a state of mind cultivated through gratitude and self-love."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                accountName: Text(
                  "Joseph Kamania Chiira",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("kamaniajoseph@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 165, 255, 137),
                  child: Text(
                    "J",
                    style: TextStyle(fontSize: 30.0, color: Colors.blue),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("My Profile"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text("My Course"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.workspace_premium),
              title: Text("Go Premium"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.video_label),
              title: Text("Saved Videos"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.edit),
              title: Text("Edit Profile"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: quotes
            .map((quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                }))
            .toList(),
      ),
    );
  }
}
