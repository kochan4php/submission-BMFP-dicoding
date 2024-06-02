import 'package:flutter/material.dart';
import 'package:news_reading/model/news.dart';

class DetailScreen extends StatelessWidget {
  final News news;

  const DetailScreen({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        foregroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          iconSize: 28,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        actions: const <Widget>[
          BookmarkButton(),
          SizedBox(
            width: 8,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                news.title,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    news.author,
                    style: const TextStyle(fontWeight: FontWeight.w400),
                  ),
                  Text(news.createdAt,
                      style: const TextStyle(fontWeight: FontWeight.w400)),
                  Text('${news.readDuration} read',
                      style: const TextStyle(fontWeight: FontWeight.w400)),
                ],
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 225,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox.fromSize(
                    size: const Size.fromRadius(50),
                    child: Image.asset(
                      news.imageThumbnail,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  news.description,
                  style: const TextStyle(
                      fontSize: 18,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BookmarkButton extends StatefulWidget {
  const BookmarkButton({super.key});

  @override
  State<StatefulWidget> createState() => _BookmarkButtonState();
}

class _BookmarkButtonState extends State<BookmarkButton> {
  bool isBookmarked = false;

  void showSnackbar() {
    String action = isBookmarked ? 'ditambahkan ke' : 'dihapus dari';

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Berhasil $action bookmark'),
      duration: const Duration(seconds: 1),
    ));
  }

  void handleBookmark() => setState(() {
        isBookmarked = !isBookmarked;
        showSnackbar();
      });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: handleBookmark,
      icon: Icon(
        isBookmarked ? Icons.bookmark_rounded : Icons.bookmark_border_outlined,
      ),
      iconSize: 28,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
    );
  }
}
