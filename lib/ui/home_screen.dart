import 'package:flutter/material.dart';
import 'package:news_reading/model/categories.dart';
import 'package:news_reading/model/news.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const EdgeInsets padding =
      EdgeInsets.symmetric(horizontal: 20, vertical: 10);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                return const SizedBox(width: 8);
              },
              itemBuilder: (BuildContext context, int index) {
                return ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0XFF212529),
                    foregroundColor: Colors.white,
                  ),
                  child: Text(
                    categories[index].name,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.25,
                        fontFamily: 'Poppins'),
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
                      fontFamily: 'Poppins'),
                ),
                Text(
                  'See all',
                  style: TextStyle(fontSize: 19, fontFamily: 'Poppins'),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: padding,
              child: ListView(
                children: news.map((item) {
                  return InkWell(
                    onTap: () {},
                    child: Card(
                      elevation: 0,
                      shadowColor: const Color(0xffdee2e6),
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      color: const Color(0xffefefef),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
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
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Text(
                                    item.title,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600),
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
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Text(item.createdAt,
                                          style: const TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400))
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
    );
  }
}
