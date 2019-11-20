import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Container MyArticles(String imageVal, String heading, String subHeading) {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 300,
        width: 160.0,
        child: Card(
          child: Wrap(
            children: <Widget>[
              Image.asset(imageVal),
              Container(
                child: ListTile(
                  title: Text(heading),
                  subtitle: Text(subHeading),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget blogSection = Container(
      padding: const EdgeInsets.only(bottom: 2, left: 10),
      child: Text(
        "Artikel :",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        "Susilo Bambang Yudhoyono, M.A., GCB., AC.(lahir di Tremas, Arjosari, Pacitan, Jawa Timur, Indonesia, 9 September 1949; umur 70 tahun) adalah Presiden Indonesia ke-6 yang menjabat sejak 20 Oktober 2004 hingga 20 Oktober 2014.Ia adalah Presiden pertama di Indonesia yang dipilih melalui jalur pemilu. Ia, bersama Wakil Presiden Muhammad Jusuf Kalla, terpilih dalam Pemilu Presiden 2004.",
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );

    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildbuttonColumn(color, Icons.near_me, 'DIRECT'),
          _buildbuttonColumn(color, FontAwesomeIcons.comment, 'COMMENT'),
          _buildbuttonColumn(color, Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Biografy SBY:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Presiden ke-6 RI, Indonesia',
                  style: TextStyle(color: Colors.grey[505]),
                ),
              ],
            ),
          ),
          Icon(
            FontAwesomeIcons.heart,
            color: Colors.red[500],
          ),
          Text('100k'),
        ],
      ),
    );

    return MaterialApp(
      title: 'Biografy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Biografy"),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/sby.jpg',
              width: 600,
              height: 211,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
            blogSection,
            MyArticles("images/sby.jpg", "SBY", "Biografy sby"),
            MyArticles("images/megawati.jpg", "Megawati", "Biografy Megawati"),
            MyArticles("images/jokowi.jpg", "Jokowi", "Biografy Jokowi"),
          ],
        ),
      ),
    );
  }

  Column _buildbuttonColumn(Color color, IconData icon, String lable) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            lable,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        )
      ],
    );
  }
}
