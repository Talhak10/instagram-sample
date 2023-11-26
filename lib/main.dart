import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Image.asset(
                      "assets/images/logoo.png",
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.add_circle,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, left: 8, bottom: 8, right: 20),
                        child: Icon(
                          Icons.send,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Story("assets/images/abubakar.jpg", "abubakar"),
                            Story2(),
                            Story("assets/images/abubakar.jpg", "abubakar"),
                            Story2(),
                            Story("assets/images/abubakar.jpg", "abubakar"),
                            Story2()
                          ],
                        ),
                      ),
                      Post("assets/images/sirac.jpg", "cenk", "",
                          "assets/images/bjk.jpg"),
                      Post("assets/images/abubakar.jpg", "abubakar", "",
                          "assets/images/post4.jpg"),
                      Post("assets/images/profil3.jpg", "abubakar", "Besiktas",
                          "assets/images/post5.jpg"),
                      Post("assets/images/ronaldo.jpg", "championsleague",
                          "Camp nou", "assets/images/post6.jpg")
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.home, size: 35, color: Colors.black87),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.search, size: 35, color: Colors.black87),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.smart_display,
                        size: 35, color: Colors.black87),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child:
                        Icon(Icons.favorite, size: 35, color: Colors.black87),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.person, size: 35, color: Colors.black87),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container Post(String avatar, String name, String adres, String image) =>
      Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          avatar,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text(
                                name,
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                adres,
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.more_horiz),
                ],
              ),
            ),
            Image.asset(image),
            like(),
            Yorum("sirac",
                "harika çok iyi beğendimmmmmmmmmmmm güzel manzara kanka "),
            Yorum("ismail", "şahane")
          ],
        ),
      );

  Padding like() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.favorite_border,
                size: 30,
              ),
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.chat_bubble,
                size: 30,
              ),
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.send,
                size: 30,
              ),
              SizedBox(
                width: 8,
              ),
            ],
          ),
          Icon(
            Icons.bookmark,
            size: 30,
          ),
        ],
      ),
    );
  }

  Padding Yorum(String name, String comment) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: RichText(
              maxLines: 3,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 16,
                    ),
                  ),
                  TextSpan(text: " "),
                  TextSpan(
                    text: comment,
                    style: TextStyle(color: Colors.black54, fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget Story(String avatar, String name) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/abubakar.jpg"),
            radius: 35,
          ),
          SizedBox(
            height: 5,
          ),
          Text("abuatar", overflow: TextOverflow.clip),
        ],
      ),
    );
  }

  Widget Story2() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/q7.jpg"),
            radius: 35,
          ),
          SizedBox(
            height: 5,
          ),
          Text("quresma", overflow: TextOverflow.clip),
        ],
      ),
    );
  }
}
