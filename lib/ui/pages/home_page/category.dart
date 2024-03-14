import 'package:flutter/material.dart';

enum ContentType { genres, tvSeries, movie, inTheatre }

class CustomContainer extends StatelessWidget {
  final ContentType contentType;

  const CustomContainer({required this.contentType});

  IconData getIcon() {
    switch (contentType) {
      case ContentType.genres:
        return Icons.gamepad;
      case ContentType.tvSeries:
        return Icons.tv_outlined;
      case ContentType.movie:
        return Icons.movie_creation_outlined;
      case ContentType.inTheatre:
        return Icons.theaters;
    }
  }

  String getText() {
    switch (contentType) {
      case ContentType.genres:
        return 'Genres';
      case ContentType.tvSeries:
        return 'TV Series';
      case ContentType.movie:
        return 'Movie';
      case ContentType.inTheatre:
        return 'In Theatre';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff5a7e9e),
          borderRadius: BorderRadius.circular(15),
        ),
        height: 60,
        margin: const EdgeInsets.all(8),
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Center(
            child: Column(
              children: [
                Icon(
                  getIcon(),
                  color: Colors.white,
                  size: 30,
                ),
                Text(getText(), style: TextStyle(color: Colors.white))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
