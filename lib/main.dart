import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_page_transition/flutter_page_transition.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';

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

_launchURL(String urlLink) async {
  if (await canLaunch(urlLink)) {
    await launch(urlLink);
  } else {
    throw 'Could not launch $urlLink';
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

  String url1 =
      "https://ingev.org/haberler/ingev-haberleri/acthuman-iiiun-odagi-guclu-kooperatifcilik/";
  String url2 =
      "https://ingev.org/haberler/ingev-haberleri/ige-i-ve-ige-buyuksehir-calismalari-ilerliyor/";
  String url3 =
      "https://ingev.org/haberler/ingev-haberleri/ingev-ust-kurulu-calismalarina-basladi/";

  String url4 =
      "https://ingev.org/haberler/ingev-haberleri/is-gelistirme-mentorlugunda-2-sene/";

  final String h1 = "INGEV's first post";
  final String haber1Text =
      "Hello!, I just read this article from INGEV \n and i thought you'de like to have a look at it from this link: \n (https://ingev.org/haberler/ingev-haberleri/acthuman-iiiun-odagi-guclu-kooperatifcilik/)  ";
  final String haber3Text =
      "Hello!, I just read this article from INGEV \n and i thought you'de like to have a look at it from this link: \n (https://ingev.org/haberler/ingev-haberleri/is-gelistirme-mentorlugunda-2-sene/) ";
  final String haber2Text =
      "Hello!, I just read this article from INGEV \n and i thought you'de like to have a look at it from this link: \n (https://ingev.org/haberler/ingev-haberleri/ige-i-ve-ige-buyuksehir-calismalari-ilerliyor/) ";
  final String haber4Text =
      "Hello!, I just read this article from INGEV \n and i thought you'de like to have a look at it from this link: \n (https://ingev.org/haberler/ingev-haberleri/ingev-ust-kurulu-calismalarina-basladi/) ";
  final String haber5Text =
      "Hello!, I just read this article from INGEV \n and i thought you'de like to have a look at it from this link: \n (https://ingev.org/haberler/ingev-haberleri/girisimcilikte-engel-yok/) ";
  final String haber6Text =
      "Hello!, I just read this article from INGEV \n and i thought you'de like to have a look at it from this link: \n (https://ingev.org/haberler/ingev-haberleri/ingevden-mardinde-arastirma-asinalik-uyumu-besliyor/) ";
  final String haber7Text =
      "Hello!, I just read this article from INGEV \n and i thought you'de like to have a look at it from this link: \n (https://ingev.org/haberler/ingev-haberleri/pandemiye-ragmen-kobilere-destek/) ";
  final String haber8Text =
      "Hello!, I just read this article from INGEV \n and i thought you'de like to have a look at it from this link: \n (https://ingev.org/haberler/ingev-haberleri/turkiye-merkezli-global-dijital-vatandaslik-rehberi/) ";

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
              Tab(text: 'News'),
              Tab(text: 'Services'),
              Tab(text: 'Profiles')
            ],
          ),
        ),
        body: TabBarView(children: [
          coverPage(),
          page1(context),
          page2(context),
          page3(context),
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

  Container page3(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Stack(children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/paper.jpg'),
                        fit: BoxFit.cover)),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/paper.jpg'),
                        fit: BoxFit.cover)),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/paper.jpg'),
                        fit: BoxFit.cover)),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.90,
                            height: 800,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 4),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      blurRadius: 25,
                                      spreadRadius: 1)
                                ]),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 200,
                                      width: 400,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'images/service1.jpg'),
                                            fit: BoxFit.cover),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        height: 1,
                                        color: g2),
                                  ),
                                  Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.75,
                                      child: Text('hello world'))
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }

  Container page2(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Stack(children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/paper.jpg'),
                        fit: BoxFit.cover)),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/paper.jpg'),
                        fit: BoxFit.cover)),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/paper.jpg'),
                        fit: BoxFit.cover)),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.90,
                            height: 800,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 4),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      blurRadius: 25,
                                      spreadRadius: 1)
                                ]),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 200,
                                      width: 400,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'images/service1.jpg'),
                                            fit: BoxFit.cover),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        height: 1,
                                        color: g2),
                                  ),
                                  Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.75,
                                      child: Text(
                                        'İNGEV insan gelişme boyutlarının herhangi biri için davranış etkisi yaratan sosyal pazarlama projeleri geliştirebilir ve uygulayabilir.\n\n\n İNGEV, özel sektör ve kamu kuruluşları ile işbirliği içinde, araştırma ve pazarlama tecrübesini uygulamaya dökerek, sosyal değişim projelerinin etkinliğini ve sürdürülebilirliğini sağlar.',
                                        style: TextStyle(fontSize: 18),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30.0, top: 18),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Neler Yapıyoruz?',
                                          style: TextStyle(
                                              color: g2,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 12.0, left: 25),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.arrow_right, color: g),
                                        Text(
                                            'Pazarlama Fikir/Önerileri Geliştirme',
                                            style: TextStyle(fontSize: 18)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 12.0, left: 25),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.arrow_right, color: g),
                                        Text(
                                            'Pazarlama Fikir/Önerileri Geliştirme',
                                            style: TextStyle(fontSize: 18)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 12.0, left: 25),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.arrow_right, color: g),
                                        Text('Pazarlama Planları',
                                            style: TextStyle(fontSize: 18)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 12.0, left: 25),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.arrow_right, color: g),
                                        Text('Medya Planları',
                                            style: TextStyle(fontSize: 18)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 12.0, left: 25),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.arrow_right, color: g),
                                        Text('Kampanya Uygulama / Kordinasyon',
                                            style: TextStyle(fontSize: 18)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25.0),
                                    child: RaisedButton(
                                      child: Text(
                                        'Apply now',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: g,
                                      elevation: 8,
                                      onPressed: () {},
                                    ),
                                  )
                                ]),
                          ),
                        ],
                      ),
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
                            width: MediaQuery.of(context).size.width * 0.90,
                            height: 800,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 4),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      blurRadius: 25,
                                      spreadRadius: 1)
                                ]),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 200,
                                      width: 400,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'images/service2.jpg'),
                                            fit: BoxFit.cover),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        height: 1,
                                        color: g2),
                                  ),
                                  Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.75,
                                      child: Text(
                                        'İNGEV, saha çalışmasından analize kadar her türlü detaya odaklanarak, sosyal programları etkili ve verimli şekilde yönetir. \n\n Hedeflenen sosyal grupta olumlu bir davranış etkisi yaratmak ve projenin zaman planına uygun şekilde gitmesi İNGEV’in ana hedefleri arasındadır. \n\n İNGEV ekip ve danışmanları, bilgiyi eylemle saha seviyesinde birleştirmekte ciddi tecrübe sahibidir.',
                                        style: TextStyle(fontSize: 18),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30.0, top: 18),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Neler Yapıyoruz?',
                                          style: TextStyle(
                                              color: g2,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 12.0, left: 25),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.arrow_right, color: g),
                                        Text('Uzman Yönetim Ekibi',
                                            style: TextStyle(fontSize: 18)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 12.0, left: 25),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.arrow_right, color: g),
                                        Text('Hızlı Ağ Oluşumları',
                                            style: TextStyle(fontSize: 18)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 12.0, left: 25),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.arrow_right, color: g),
                                        Text('Esnek Coğrafi Kapsama',
                                            style: TextStyle(fontSize: 18)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 12.0, left: 25),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.arrow_right, color: g),
                                        Text('Etkin Zaman ve Bütçe Yönetimi',
                                            style: TextStyle(fontSize: 18)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 12.0, left: 25),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.arrow_right, color: g),
                                        Text('Kampanya Uygulama / Kordinasyon',
                                            style: TextStyle(fontSize: 18)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25.0),
                                    child: RaisedButton(
                                      child: Text(
                                        'Apply now',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: g,
                                      elevation: 8,
                                      onPressed: () {},
                                    ),
                                  )
                                ]),
                          ),
                        ],
                      ),
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
                            width: MediaQuery.of(context).size.width * 0.90,
                            height: 800,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 4),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      blurRadius: 25,
                                      spreadRadius: 1)
                                ]),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 200,
                                      width: 400,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'images/service3.jpg'),
                                            fit: BoxFit.cover),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        height: 1,
                                        color: g2),
                                  ),
                                  Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.75,
                                      child: Text(
                                        'İNGEV danışmanları, istihdamdan girişimciliğe, geçim kaynaklarından iklime, birçok farklı sosyal konuda tecrübe sahibidir. \n\n İNGEV aynı zamanda mülteci konularında, özellikle istihdam ve eğitim konularında uzmandır. \n\n Sosyal sorumluluk projeleri geliştirmede yani var olan fonun en verimli şekilde kullanılması ve bütçe kısıtlarına rağmen proje hedeflerinin karşılanabilmesi konuları da diğer uzmanlık alanlarımızdır.',
                                        style: TextStyle(fontSize: 18),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30.0, top: 18),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Neler Yapıyoruz?',
                                          style: TextStyle(
                                              color: g2,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 12.0, left: 25),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.arrow_right, color: g),
                                        Text(
                                            'Sosyal Etki Programları Geliştirme',
                                            style: TextStyle(fontSize: 18)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 12.0, left: 25),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.arrow_right, color: g),
                                        Text(
                                            'Sosyal Politika Analiz ve Önerileri',
                                            style: TextStyle(fontSize: 18)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 12.0, left: 25),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.arrow_right, color: g),
                                        Text('Stratejik Proje Planlaması',
                                            style: TextStyle(fontSize: 18)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25.0),
                                    child: RaisedButton(
                                      child: Text(
                                        'Apply now',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: g,
                                      elevation: 8,
                                      onPressed: () {},
                                    ),
                                  )
                                ]),
                          ),
                        ],
                      ),
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
                            width: MediaQuery.of(context).size.width * 0.90,
                            height: 800,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 4),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      blurRadius: 25,
                                      spreadRadius: 1)
                                ]),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 200,
                                      width: 400,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'images/service4.jpg'),
                                            fit: BoxFit.cover),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        height: 1,
                                        color: g2),
                                  ),
                                  Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.75,
                                      child: Text(
                                        'İNGEV, davranış değişimi hedefleyen herhangi bir projenin başarısının, insan davranışını yöneten inançlar, fikirler, bakış açıları ve değerlerin doğru anlaşılmasına bağlı olduğuna inanır. \n\n  İNGEV’in ana amacı, toplumumuzu ilgilendiren kritik tartışmalar içinde tarafsız veri ve doğru analiz sunabilmektir',
                                        style: TextStyle(fontSize: 18),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30.0, top: 18),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Neler Yapıyoruz?',
                                          style: TextStyle(
                                              color: g2,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 12.0, left: 25),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.arrow_right, color: g),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.75,
                                          child: Text(
                                              'Yaratıcı Tekniklerle Kalitatif-Kantitatif Yaratıcı Araştırmalar',
                                              style: TextStyle(fontSize: 18)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 12.0, left: 25),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.arrow_right, color: g),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.75,
                                          child: Text(
                                              'Etki Ölçümleri – İhtiyaç Analizleri',
                                              style: TextStyle(fontSize: 18)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 12.0, left: 25),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.arrow_right, color: g),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.75,
                                          child: Text(
                                              'Konu ve Yöntem Birlikte Uzmanlığı',
                                              style: TextStyle(fontSize: 18)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 12.0, left: 25),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.arrow_right, color: g),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.75,
                                          child: Text(
                                              'Aksiyon Alınabilir Uygulanabilir Çözüm Önerileri',
                                              style: TextStyle(fontSize: 18)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25.0),
                                    child: RaisedButton(
                                      child: Text(
                                        'Apply now',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: g,
                                      elevation: 8,
                                      onPressed: () {},
                                    ),
                                  )
                                ]),
                          ),
                        ],
                      ),
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
                            width: MediaQuery.of(context).size.width * 0.90,
                            height: 800,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 4),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      blurRadius: 25,
                                      spreadRadius: 1)
                                ]),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 200,
                                      width: 400,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'images/service5.jpg'),
                                            fit: BoxFit.cover),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        height: 1,
                                        color: g2),
                                  ),
                                  Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.75,
                                      child: Text(
                                        'İNGEV faydalanıcılar, paydaşlar, kamu ve özel sektör karar alıcılarının davranışlarını etkilemek ve farkındalığını artırmak üzere, eğitimler, çalıştaylar ve konferanslar düzenler, kitaplar ve diğer birçok materyal yayınlar.',
                                        style: TextStyle(fontSize: 18),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30.0, top: 18),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Neler Yapıyoruz?',
                                          style: TextStyle(
                                              color: g2,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 12.0, left: 25),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.arrow_right, color: g),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.75,
                                          child: Text(
                                              'Kampanya Planlama ve Uygulama',
                                              style: TextStyle(fontSize: 18)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 12.0, left: 25),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.arrow_right, color: g),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.75,
                                          child: Text(
                                              'Eğitim, Seminer, Çalıştay ve Konferanslar Düzenleme',
                                              style: TextStyle(fontSize: 18)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 12.0, left: 25),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.arrow_right, color: g),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.75,
                                          child: Text(
                                              'Sosyal Medya Uygulamaları',
                                              style: TextStyle(fontSize: 18)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25.0),
                                    child: RaisedButton(
                                      child: Text(
                                        'Apply now',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: g,
                                      elevation: 8,
                                      onPressed: () {},
                                    ),
                                  )
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Container page1(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Stack(children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/paper.jpg'),
                        fit: BoxFit.cover)),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/paper.jpg'),
                        fit: BoxFit.cover)),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/paper.jpg'),
                        fit: BoxFit.cover)),
              ),
            ],
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
                      style: TextStyle(color: Colors.black54, fontSize: 28),
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
                                        image: AssetImage('images/haber1.jpg'),
                                        fit: BoxFit.cover),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          blurRadius: 25,
                                          spreadRadius: 1)
                                    ]),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 12.0),
                                child: Text(
                                  'ActHuman III’ün Odağı “Güçlü Kooperatifçilik” ',
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Container(
                                  height: 1.5,
                                  color: Colors.black,
                                  width: MediaQuery.of(context).size.width / 2 -
                                      35,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 12.0),
                                child: Container(
                                  width: 300,
                                  child: Text(
                                    '“Sosyal Dayanışma Ekonomisi için Güçlü Kooperatifçilik” çalışmaları, 26 Ağustos’ta gerçekleştirilen danışma kurulu toplantısı ile başladı',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: RaisedButton(
                                      color: g,
                                      elevation: 10,
                                      child: Text('Read more',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      onPressed: () {
                                        _launchURL(url1);
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: RaisedButton(
                                      color: Colors.white,
                                      elevation: 10,
                                      child: Text('Share',
                                          style: TextStyle(color: g2)),
                                      onPressed: () {
                                        sharing(context, haber1Text);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
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
                                        image: AssetImage('images/haber2.jpg'),
                                        fit: BoxFit.cover),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          blurRadius: 25,
                                          spreadRadius: 1)
                                    ]),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 12.0),
                                child: Text(
                                  'İGE-İ ve İGE/Büyükşehir Çalışmaları İlerliyor',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Container(
                                  height: 1.5,
                                  color: Colors.black,
                                  width: MediaQuery.of(context).size.width / 2 -
                                      35,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 12.0),
                                child: Container(
                                  width: 300,
                                  child: Text(
                                    'İNGEV, yerel düzeyde insani gelişmenin ölçülmesini ve izlenmesini amaçlayan İGE-İ çalışmasını genişletti',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: RaisedButton(
                                      color: g,
                                      elevation: 10,
                                      child: Text('Read more',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      onPressed: () {
                                        _launchURL(url2);
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: RaisedButton(
                                      color: Colors.white,
                                      elevation: 10,
                                      child: Text('Share',
                                          style: TextStyle(color: g2)),
                                      onPressed: () {
                                        sharing(context, haber2Text);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
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
                                        image: AssetImage('images/haber3.jpg'),
                                        fit: BoxFit.cover),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          blurRadius: 25,
                                          spreadRadius: 1)
                                    ]),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 12.0),
                                child: Text(
                                  'İNGEV Üst Kurulu Çalışmalarına Başladı',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Container(
                                  height: 1.5,
                                  color: Colors.black,
                                  width: MediaQuery.of(context).size.width / 2 -
                                      35,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 12.0),
                                child: Container(
                                  width: 300,
                                  child: Text(
                                    'İNGEV vizyonunu ve kurumsallaşmasını   güçlendirmek, gelişimini ve yönetimini desteklemek üzere İNGEV Üst Kurulu çalışmalarına başladı. Üst Kurulda şu isimler yer alıyor',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: RaisedButton(
                                      color: g,
                                      elevation: 10,
                                      child: Text('Read more',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      onPressed: () {
                                        _launchURL(url3);
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: RaisedButton(
                                      color: Colors.white,
                                      elevation: 10,
                                      child: Text('Share',
                                          style: TextStyle(color: g2)),
                                      onPressed: () {
                                        sharing(context, haber3Text);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
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
                                        image: AssetImage('images/haber4.jpg'),
                                        fit: BoxFit.cover),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          blurRadius: 25,
                                          spreadRadius: 1)
                                    ]),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 12.0),
                                child: Text(
                                  'İş Geliştirme Mentorluğunda 2. Sene',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Container(
                                  height: 1.5,
                                  color: Colors.black,
                                  width: MediaQuery.of(context).size.width / 2 -
                                      35,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 12.0),
                                child: Container(
                                  width: 300,
                                  child: Text(
                                    'İNGEV, EBRD (Avrupa İmar ve Kalkınma Bankası) iş birliği ile “İş Geliştirme Mentorluğu” projesinin 2. yılına başladı.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: RaisedButton(
                                      color: g,
                                      elevation: 10,
                                      child: Text('Read more',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      onPressed: () {
                                        _launchURL(url4);
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: RaisedButton(
                                      color: Colors.white,
                                      elevation: 10,
                                      child: Text('Share',
                                          style: TextStyle(color: g2)),
                                      onPressed: () {
                                        sharing(context, haber4Text);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
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
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }

  Container coverPage() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/cover.jpg'), fit: BoxFit.cover)),
    );
  }
}

void sharing(BuildContext context, String haber) {
  final RenderBox box = context.findRenderObject();
  final String text = "${haber}";
  Share.share(text,
      subject: haber,
      sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
}
