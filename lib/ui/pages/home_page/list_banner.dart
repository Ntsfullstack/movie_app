import 'package:flutter/material.dart';

class MovieBannerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0, // Điều chỉnh chiều cao của PageView
      child: PageView.builder(
        itemCount: 3, // Số lượng banner
        itemBuilder: (context, index) {
          return MovieBanner(
            imagePath: 'assets/images/banner${index + 1}.jpg',
            movieName: 'Phim ${index + 1}',
          );
        },
      ),
    );
  }
}

class MovieBanner extends StatelessWidget {
  final String imagePath;
  final String movieName;

  const MovieBanner({required this.imagePath, required this.movieName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 15),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                movieName,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
