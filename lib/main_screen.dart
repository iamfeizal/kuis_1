import 'package:flutter/material.dart';
import 'books_data.dart';

import 'home_page.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemBuilder: (context, index) {
            final BooksData book = booksData[index];
            return Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return HomePage(book : book);
                    }),
                  );
                },
                // child: Column(
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   mainAxisAlignment: MainAxisAlignment.start,
                    child: Container(

                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10,),
                      child: Card (
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.lightBlue.shade700,
                          ),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Center(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,

                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Image.network(
                                  book.imageLinks, width: 100,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                Text(book.title,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10, color: Colors.blue,
                                  ),),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  // children: [
                  //
                    // Container(
                    //   padding: const EdgeInsets.fromLTRB(10, 10, 10, 10,),
                    //   child: ,
                    //   // child: Image.network(
                    //   //   book.ImageLink,
                    //   //   fit: BoxFit.cover,
                    //   // ),
                    // ),
                    // Container(
                    //   padding: const EdgeInsets.all(12.0),
                    //   child: Column(
                    //     children: [
                    //       Text(
                    //         album.albumName,
                    //         textAlign: TextAlign.center,
                    //         style: TextStyle(fontSize: 18),
                    //       ),
                    //       Text(
                    //         album.singer,
                    //         style: TextStyle(fontSize: 12),
                    //       ),
                    //     ],
                    //   ),
                    // )
                  // ],
                ),
              // ),
            );
          },
          itemCount: booksData.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
          ),
        ),
      ),
    );
  }
}
