class News {
  String imageThumbnail;
  String title;
  String author;
  String authorAvatar;
  String readDuration;
  String createdAt;
  String updatedAt;

  News({
    required this.imageThumbnail,
    required this.title,
    required this.author,
    required this.authorAvatar,
    required this.readDuration,
    required this.createdAt,
    required this.updatedAt,
  });
}

List<News> news = <News>[
  News(
      imageThumbnail: 'assets/images/android.png',
      title: 'Title Pertama Coy',
      author: 'CNN',
      authorAvatar: 'assets/images/android.png',
      readDuration: '7 minutes',
      createdAt: '45 mins ago',
      updatedAt: '30 mins ago'),
  News(
      imageThumbnail: 'assets/images/android.png',
      title: 'Thailand\'s Economy is Slowing and it Could Mean Trouble',
      author: 'CNN',
      authorAvatar: 'assets/images/android.png',
      readDuration: '7 minutes',
      createdAt: '45 mins ago',
      updatedAt: '30 mins ago'),
  News(
      imageThumbnail: 'assets/images/android.png',
      title: 'Thailand\'s Economy is Slowing and it Could Mean Trouble',
      author: 'CNN',
      authorAvatar: 'assets/images/android.png',
      readDuration: '7 minutes',
      createdAt: '45 mins ago',
      updatedAt: '30 mins ago'),
  News(
      imageThumbnail: 'assets/images/android.png',
      title: 'Thailand\'s Economy is Slowing and it Could Mean Trouble',
      author: 'CNN',
      authorAvatar: 'assets/images/android.png',
      readDuration: '7 minutes',
      createdAt: '45 mins ago',
      updatedAt: '30 mins ago'),
  News(
      imageThumbnail: 'assets/images/android.png',
      title: 'Thailand\'s Economy is Slowing and it Could Mean Trouble',
      author: 'CNN',
      authorAvatar: 'assets/images/android.png',
      readDuration: '7 minutes',
      createdAt: '45 mins ago',
      updatedAt: '30 mins ago'),
  News(
      imageThumbnail: 'assets/images/android.png',
      title: 'Title Terakhir Coy',
      author: 'CNN',
      authorAvatar: 'assets/images/android.png',
      readDuration: '7 minutes',
      createdAt: '45 mins ago',
      updatedAt: '30 mins ago'),
];
