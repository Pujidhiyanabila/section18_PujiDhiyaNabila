import 'package:flutter/material.dart';
import 'package:flutter_18/model/movie_data.dart';

class DetailPage extends StatelessWidget {
  final Movie movie;

  const DetailPage({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          movie.title
        ),
      ),
      body: Image.network(
        movie.imgNetwork,
        fit: BoxFit.cover,
        alignment: Alignment.center,
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }
}