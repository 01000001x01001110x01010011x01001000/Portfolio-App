import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,//to remove debut tag
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //  title: const Text(
      //    'portfolio',
      //    textAlign: TextAlign.right,
      //      style:TextStyle(fontFamily: "font/Futura Bold font.ttf"),
      //  ),
      //),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("images/pexels-elijah-o'donnell-3473569.jpg"),
          fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 70.0,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                          "images/WhatsApp Image 2022-01-06 at 10.54.33 PM.jpeg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'ANSH BHARDWAJ',
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: "font/RobotoSlab-VariableFont_wght.ttf",
                              color: Colors.white70,
                            ),
                          ),
                          Text(
                            'App Developer',
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: "font/Futura Bold font.ttf",
                                color:Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.apartment,
                            size: 30,
                            color: Colors.white70,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text(
                              'R.D. Engg. College, Duhai, Gzb',
                              style: TextStyle(
                                  fontSize: 18, fontFamily: "font/futur.ttf",
                              color: Colors.white70,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.article_outlined,
                            size: 30,
                            color: Colors.white70,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text(
                              'Portfolio app, AutoCS',
                              style: TextStyle(
                                  fontSize: 18, fontFamily: "font/futur.ttf",
                                color: Colors.white70,),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.house,
                            size: 30,
                            color: Colors.white70,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text(
                              'Gali No. 12, Jalalpur Road\n Muradnagar Ghaziabad',
                              style: TextStyle(
                                  fontSize: 18, fontFamily: "font/futur.ttf",
                                color: Colors.white70,),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.mail,
                            size: 30,
                            color: Colors.white70,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text(
                              'bhardwajansh1510@gmail.com\nanshbhardwajibm@gmail.com',
                              style: TextStyle(
                                  fontSize: 18, fontFamily: "font/futur.ttf",
                                color: Colors.white70,),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.phone,
                            size: 30,
                              color: Colors.white70,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text(
                              '7668013890',
                              style: TextStyle(
                                  fontSize: 18, fontFamily: "font/futur.ttf",
                                color: Colors.white70,),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(25.0),
                child: Text(
                  "\nI am learning app development for Android ,IOS and Web. This is my portfolio application. I made this using Dart and Flutter.",
                  style: TextStyle(fontSize: 15, fontFamily: "font/futur.ttf",
                    color: Colors.white70,),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 90,
              ),
              const Text(
                'Made By Ansh Bhardwaj   ',
                style: TextStyle(fontSize: 10, fontFamily: "font/futur.ttf",
                  color: Colors.white70,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
