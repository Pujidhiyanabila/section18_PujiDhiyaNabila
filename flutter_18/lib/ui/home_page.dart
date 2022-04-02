import 'package:flutter/material.dart';
import 'package:flutter_18/ui/detail_page.dart';
import 'package:flutter_18/model/movie_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Movie'
        ),
      ),
      body: buildGrid(context),
    );
  }

  Widget buildGrid(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(2),
      crossAxisCount: 2,
      children: movieData.map((movie) {
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailPage(movie: movie);
            }));
          },
          child: Card(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(movie.imgNetwork),
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}