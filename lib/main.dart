import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_page_transition/flutter_page_transition.dart';
import 'package:url_launcher/url_launcher.dart';

Color g = Color(0xff38b5ad);
Color g2 = Color(0xff2d857f);
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage()
        /*initialRoute: '/',
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          '/': (context) => FirstScreen(),
          // When navigating to the "/second" route, build the SecondScreen widget.
          '/second': (context) => SecondScreen(),
        },
        onGenerateRoute: (RouteSettings routeSettings) {
          return new PageRouteBuilder<dynamic>(
              settings: routeSettings,
              pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) {
                switch (routeSettings.name) {
                  case '/':
                    return FirstScreen();
                  case '/second':
                    return SecondScreen();
                  default:
                    return null;
                }
              },
              transitionDuration: const Duration(milliseconds: 3000),
              reverseTransitionDuration: Duration(milliseconds: 3000),
              transitionsBuilder: (BuildContext context,
                  Animation<double> animation,
                  Animation<double> secondaryAnimation,
                  Widget child) {
                return effectMap[PageTransitionType.slideInLeft](
                    Curves.linear, animation, secondaryAnimation, child);
              });
        }*/
        );
  }
}

_launchURL() async {
  const url = 'https://flutter.cn';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /* List<Widget> Containers = [
    Container(color: Colors.redAccent),
    Container(color: Colors.blueAccent),
    Container(color: Colors.teal)
  ];*/
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 15,
          backgroundColor: g,
          title: Text('INGEV App'),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: 'Cover'),
              Tab(text: '1'),
              Tab(text: '2'),
              Tab(text: '3')
            ],
          ),
        ),
        body: TabBarView(children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/cover.jpg'), fit: BoxFit.cover)),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.white),
            child: SingleChildScrollView(
              child: Stack(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/paper.jpg'),
                          fit: BoxFit.cover)),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Page of the week',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 28),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 1.5,
                          width: MediaQuery.of(context).size.width * 0.75,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 400,
                                          height: 200,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 4),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'images/haber1.jpg'),
                                                  fit: BoxFit.cover),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.3),
                                                    blurRadius: 25,
                                                    spreadRadius: 1)
                                              ]),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 12.0),
                                          child: Text(
                                            'Topic of this window',
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: Container(
                                            height: 1.5,
                                            color: Colors.black,
                                            width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2 -
                                                35,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 12.0),
                                          child: Container(
                                            width: 300,
                                            child: Text(
                                              'The content is put here The content is put here The content is put here',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                        RaisedButton(
                                          color: g,
                                          elevation: 10,
                                          child: Text('Read more',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          onPressed: () {
                                            _launchURL();
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 400,
                                      height: 200,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.white, width: 4),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'images/haber2.jpg'),
                                              fit: BoxFit.cover),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.3),
                                                blurRadius: 25,
                                                spreadRadius: 1)
                                          ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12.0),
                                      child: Text(
                                        'Topic of this window',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Container(
                                        height: 1.5,
                                        color: Colors.black,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                    2 -
                                                35,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12.0),
                                      child: Container(
                                        width: 300,
                                        child: Text(
                                          'The content is put here The content is put here The content is put here',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                    RaisedButton(
                                      color: g,
                                      elevation: 10,
                                      child: Text('Read more',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      onPressed: () {
                                        _launchURL();
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ]),
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.white),
            child: SingleChildScrollView(
              child: Stack(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/paper.jpg'),
                          fit: BoxFit.cover)),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Page of the week',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 28),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 1.5,
                          width: MediaQuery.of(context).size.width * 0.75,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 400,
                                          height: 200,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 4),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'images/haber4.jpg'),
                                                  fit: BoxFit.cover),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.3),
                                                    blurRadius: 25,
                                                    spreadRadius: 1)
                                              ]),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 12.0),
                                          child: Text(
                                            'Topic of this window',
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: Container(
                                            height: 1.5,
                                            color: Colors.black,
                                            width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2 -
                                                35,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 12.0),
                                          child: Container(
                                            width: 300,
                                            child: Text(
                                              'The content is put here The content is put here The content is put here',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                        RaisedButton(
                                          color: g,
                                          elevation: 10,
                                          child: Text('Read more',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          onPressed: () {
                                            _launchURL();
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 400,
                                      height: 200,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.white, width: 4),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'images/haber3.jpg'),
                                              fit: BoxFit.cover),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.3),
                                                blurRadius: 25,
                                                spreadRadius: 1)
                                          ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12.0),
                                      child: Text(
                                        'Topic of this window',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Container(
                                        height: 1.5,
                                        color: Colors.black,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                    2 -
                                                35,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12.0),
                                      child: Container(
                                        width: 300,
                                        child: Text(
                                          'The content is put here The content is put here The content is put here',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                    RaisedButton(
                                      color: g,
                                      elevation: 10,
                                      child: Text('Read more',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      onPressed: () {
                                        _launchURL();
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                )
              ]),
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.white),
            child: SingleChildScrollView(
              child: Stack(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/paper.jpg'),
                          fit: BoxFit.cover)),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Page of the week',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 28),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 1.5,
                          width: MediaQuery.of(context).size.width * 0.75,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 200,
                                      height: 200,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.white, width: 4),
                                          color: Colors.white,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'images/haber6.jpg'),
                                              fit: BoxFit.cover),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.3),
                                                blurRadius: 25,
                                                spreadRadius: 1)
                                          ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12.0),
                                      child: Text(
                                        'Topic of this window',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Container(
                                        height: 1.5,
                                        color: Colors.black,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                    2 -
                                                35,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12.0),
                                      child: Container(
                                        width: 150,
                                        child: Text(
                                          'The content is put here The content is put here The content is put here',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 200,
                                      height: 200,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.white, width: 4),
                                          color: Colors.white,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'images/haber5.jpg'),
                                              fit: BoxFit.cover),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.3),
                                                blurRadius: 25,
                                                spreadRadius: 1)
                                          ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12.0),
                                      child: Text(
                                        'Topic of this window',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Container(
                                        height: 1.5,
                                        color: Colors.black,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                    2 -
                                                35,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12.0),
                                      child: Container(
                                        width: 150,
                                        child: Text(
                                          'The content is put here The content is put here The content is put here',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 200,
                                      height: 200,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.white, width: 4),
                                          color: Colors.white,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'images/haber7.jpg'),
                                              fit: BoxFit.cover),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.3),
                                                blurRadius: 25,
                                                spreadRadius: 1)
                                          ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12.0),
                                      child: Text(
                                        'Topic of this window',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Container(
                                        height: 1.5,
                                        color: Colors.black,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                    2 -
                                                35,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12.0),
                                      child: Container(
                                        width: 150,
                                        child: Text(
                                          'The content is put here The content is put here The content is put here',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 200,
                                      height: 200,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.white, width: 4),
                                          color: Colors.white,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'images/haber8.jpg'),
                                              fit: BoxFit.cover),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.3),
                                                blurRadius: 25,
                                                spreadRadius: 1)
                                          ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12.0),
                                      child: Text(
                                        'Topic of this window',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Container(
                                        height: 1.5,
                                        color: Colors.black,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                    2 -
                                                35,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12.0),
                                      child: Container(
                                        width: 150,
                                        child: Text(
                                          'The content is put here The content is put here The content is put here',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                )
              ]),
            ),
          ),
        ]),
        drawer: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Drawer(
              child: Container(
            color: Colors.white,
            child: ListView(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.22,
                  child: DrawerHeader(
                    decoration: BoxDecoration(color: g),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('images/girl.jpg'),
                              radius: 50,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Row(
                            children: [
                              Text(
                                'Ela Sabancı',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            children: [
                              Text(
                                'View profile',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.home,
                    color: g,
                  ),
                  title: Text(
                    'Home',
                    style: TextStyle(color: g, fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: g,
                    size: 28,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: g,
                  ),
                  title: Text(
                    'Settings',
                    style: TextStyle(color: g, fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: g,
                    size: 28,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                ListTile(
                  leading: Icon(
                    Icons.create_new_folder,
                    color: g,
                  ),
                  title: Text(
                    'Applications',
                    style: TextStyle(color: g, fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: g,
                    size: 28,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                ListTile(
                  leading: Icon(
                    Icons.share,
                    color: g,
                  ),
                  title: Text(
                    'Share the app',
                    style: TextStyle(color: g, fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: g,
                    size: 28,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                ListTile(
                  leading: Icon(
                    Icons.bug_report,
                    color: g,
                  ),
                  title: Text(
                    'Report a bug',
                    style: TextStyle(color: g, fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: g,
                    size: 28,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                ListTile(
                  leading: Icon(
                    Icons.sticky_note_2_sharp,
                    color: g,
                  ),
                  title: Text(
                    'Terms of use',
                    style: TextStyle(color: g, fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: g,
                    size: 28,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                ListTile(
                  leading: Icon(
                    Icons.exit_to_app,
                    color: g,
                  ),
                  title: Text(
                    'Log out',
                    style: TextStyle(color: g, fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: g,
                    size: 28,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}

class secondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: g,
          title: Text('INGEV App'),
          centerTitle: true,
        ),
        body: Center(child: Text('second page is here')));
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: g,
        title: Text('First Screen'),
        centerTitle: true,
      ),
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Drawer(
            child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.22,
                child: DrawerHeader(
                  decoration: BoxDecoration(color: g),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('images/girl.jpg'),
                            radius: 50,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Row(
                          children: [
                            Text(
                              'Ela Sabancı',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          children: [
                            Text(
                              'View profile',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: g,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(color: g, fontSize: 18),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  color: g,
                  size: 28,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: g,
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(color: g, fontSize: 18),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  color: g,
                  size: 28,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              ListTile(
                leading: Icon(
                  Icons.create_new_folder,
                  color: g,
                ),
                title: Text(
                  'Applications',
                  style: TextStyle(color: g, fontSize: 18),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  color: g,
                  size: 28,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              ListTile(
                leading: Icon(
                  Icons.share,
                  color: g,
                ),
                title: Text(
                  'Share the app',
                  style: TextStyle(color: g, fontSize: 18),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  color: g,
                  size: 28,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              ListTile(
                leading: Icon(
                  Icons.bug_report,
                  color: g,
                ),
                title: Text(
                  'Report a bug',
                  style: TextStyle(color: g, fontSize: 18),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  color: g,
                  size: 28,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              ListTile(
                leading: Icon(
                  Icons.sticky_note_2_sharp,
                  color: g,
                ),
                title: Text(
                  'Terms of use',
                  style: TextStyle(color: g, fontSize: 18),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  color: g,
                  size: 28,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              ListTile(
                leading: Icon(
                  Icons.exit_to_app,
                  color: g,
                ),
                title: Text(
                  'Log out',
                  style: TextStyle(color: g, fontSize: 18),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  color: g,
                  size: 28,
                ),
              ),
              SizedBox(
                height: 8,
              ),
            ],
          ),
        )),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Launch screen'),
          onPressed: () {
            Navigator.of(context).push(PageTransition(
                duration: const Duration(milliseconds: 800),
                type: PageTransitionType.transferRight,
                child: SecondScreen()));
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Second Screen"),
        backgroundColor: g,
      ),
      body: Center(
        child: Container(
          color: Colors.redAccent,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                // Navigate back to first screen when tapped.
              },
              child: Text('Go back!'),
            ),
          ),
        ),
      ),
    );
  }
}

class tab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text('tab is here'),
              )),
        ],
      ),
    );
  }
}

class tab2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text('tab 2 is here'),
              )),
        ],
      ),
    );
  }
}

class tab3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text('tab 3 is here'),
              )),
        ],
      ),
    );
  }
}

class tab4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text('tab 4 is here'),
              )),
        ],
      ),
    );
  }
}
