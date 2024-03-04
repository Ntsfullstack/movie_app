import 'package:flutter/material.dart';

class list_film_release extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          MovieBanner(imagePath: 'assets/images/film1.jpg'),
          MovieBanner(imagePath: 'assets/images/film2.jpg'),
          MovieBanner(imagePath: 'assets/images/film3.jpg')
        ],
      ),
    );
  }
}

class MovieBanner extends StatelessWidget {
  final String imagePath;

  const MovieBanner({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      width: 130.0,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
