import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/ui/pages/dashboard/dashboard_page.dart';
import 'package:movie_app/ui/pages/home_page/category.dart';
import 'package:movie_app/ui/pages/home_page/home_controller.dart';
import 'package:movie_app/ui/pages/home_page/list_banner.dart';
import 'package:movie_app/ui/pages/home_page/list_film_release.dart';
import 'package:get/get.dart';

class MyHomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFF2B5876), Color(0xFF4E4376)])),
        ),
        title: const Text('Hello, name user'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
                onPressed: () {
                  print('show notification');
                },
                icon: const Icon(Icons.notifications)),
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xFF2B5876), Color(0xFF4E4376)])),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              height: 70,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: CupertinoTextField(
                onTap: () {},
                placeholder: 'Search the name of film you want...',
                autofocus: false,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  letterSpacing: 0.5,
                ),
                placeholderStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
                prefix: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: Icon(
                    Icons.search,
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: CupertinoColors.white.withOpacity(0.4),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Category',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Row(
              children: [
                CustomContainer(contentType: ContentType.genres),
                CustomContainer(contentType: ContentType.tvSeries),
                CustomContainer(contentType: ContentType.movie),
                CustomContainer(contentType: ContentType.inTheatre),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Most popular',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            MovieBannerList(),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Up coming release',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            list_film_release(),
          ],
        ),
      ),
    );
  }
}
