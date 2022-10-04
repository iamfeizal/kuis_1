import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'books_data.dart';



class HomePage extends StatefulWidget {
  final BooksData book;

  const HomePage({Key? key, required this.book}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isFavorite = false;

  // double rating = 4.1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          title: Text("Detail Buku"),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              icon: (isFavorite)
                  ? Icon(Icons.favorite)
                  : Icon(Icons.favorite_border),
            ),
            // IconButton(
            //   // onPressed: () {
            //   //   _launchURL(widget.album.albumurl);
            //   // },
            //   icon: Icon(Icons.share),
            // )
          ],

        ),
        body: Container(
          padding: EdgeInsets.all(12),
          //child: Center(
          child: SingleChildScrollView(
            // child : Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(

                  child: Image.network(
                    widget.book.imageLinks,
                    width: 192,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.5, color: Colors.blueGrey),
                  ),
                ),

                Text(
                  "id : ${widget.book.id}",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Colors.red),
                ),
                Text(
                  "${widget.book.title}",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(height: 10,),
                Text(
                  "Authors : ${widget.book.authors}",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15,),
                ),
                Text(
                  "Publisher : ${widget.book.publisher}",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  "PublishedDate : ${widget.book.publishedDate}",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  "Categories : ${widget.book.categories}",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 10,),
                Text(
                  "${widget.book.description}",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15),
                ),

                Text(
                  "Preview Link : ${widget.book.previewLink}",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, color: Colors.red),
                ),

              ],
            ),
          ),
        )
        //)
      //),
    );
  }
}