import 'package:flutter/material.dart';

import '../model/categories.dart';
import '../model/news.dart';
import '../widget/custom_bottom_navigation_bar.dart';
import './detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const EdgeInsets padding =
      EdgeInsets.symmetric(horizontal: 20, vertical: 10);

  Widget customInputDialog(_) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search news",
            prefixIcon: const Icon(Icons.search_rounded),
            prefixIconColor: Colors.black,
            filled: true,
            fillColor: const Color(0xfff1f1f1),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          iconSize: 30,
          color: Colors.black,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(context: context, builder: customInputDialog);
            },
            icon: const Icon(Icons.search_outlined),
            iconSize: 30,
            color: Colors.black,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
            iconSize: 30,
            color: Colors.black,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 55,
              padding: padding,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(width: 10);
                },
                itemBuilder: (BuildContext context, int index) {
                  return ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0XFF212529),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    child: Text(
                      categories[index].name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: padding,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Breaking News',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 19,
                      fontFamily: 'Poppins',
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListView(
                  children: news.map((item) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailScreen(news: item);
                        }));
                      },
                      child: Card(
                        elevation: 0,
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        color: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: SizedBox.fromSize(
                                    size: const Size.fromRadius(50),
                                    child: Image.asset(
                                      item.imageThumbnail,
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: <Widget>[
                                    Text(
                                      item.title,
                                      style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          item.author,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          item.createdAt,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
