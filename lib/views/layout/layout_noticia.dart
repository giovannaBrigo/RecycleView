import 'package:flutter/material.dart';
import 'package:recycle_view/models/noticia.dart';

import '../../models/artigo.dart';

class LayoutNoticia extends StatelessWidget {
  const LayoutNoticia(
      {super.key,
      required this.title,
      required this.description,
      required this.author,
      required this.image});

  final String title;
  final String description;
  final String author;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Color.fromRGBO(233, 233, 233, 1),
        borderRadius: new BorderRadius.circular(6.0),
        elevation: 2.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(height: 100, width: 100, child: Image.network(image)),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      author,
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    // Text(
                    //   artigo.publishedAt,
                    //   style: TextStyle(fontSize: 14.0),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}