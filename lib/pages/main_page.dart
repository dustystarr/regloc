import 'package:flutter/material.dart';
import 'user_page.dart'; 

class NewsItem {
  final String title;
  final String description;
  int likes;

  NewsItem({
    required this.title,
    required this.description,
    this.likes = 0,
  });
}

class MainPage extends StatefulWidget {
  final String name;
  final String email;
  final String password;

  MainPage({
    required this.name,
    required this.email,
    required this.password,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<NewsItem> newsList = [
    NewsItem(
      title: 'Снежный коллапс в Алматы',
      description: 'пассажиров часами держали в самолете из-за загруженности аэропорта',
    ),
    NewsItem(
      title: '"Папа улетел"',
      description: 'Как провожали казахстанских миротворцев на Ближний Восток',
    ),
    NewsItem(
      title: 'Тюрьма ',
      description: 'Казахстанец пытался разнообразить жизнь ',
    ),
  ];

  void _toggleLike(int index) {
    setState(() {
      if (newsList[index].likes == 0) {
        newsList[index].likes = 1;
      } else {
        newsList[index].likes = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Новостная лента',
          style: TextStyle(color: Colors.pink),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView.builder(
        itemCount: newsList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(newsList[index].title),
            subtitle: Text(newsList[index].description),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    _toggleLike(index);
                  },
                  icon: Icon(
                    newsList[index].likes == 1
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: newsList[index].likes == 1 ? Colors.red : null,
                  ),
                ),
                Text(newsList[index].likes.toString()),
              ],
            ),
            onTap: () {
              // Здесь можно добавить действие при нажатии на новость
            },
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.info),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserPage(
                      name: widget.name,
                      email: widget.email,
                      password: widget.password,
                    ),
                  ),
                );
              },
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
