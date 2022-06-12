import 'package:crypto_font_icons/crypto_font_icon_data.dart';
import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/material.dart';
import 'package:torabait/cryptoLibrary/cryptoProperti.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var cpy = CrytoData.getData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TorabaIT"),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: cpy.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 200,
                      padding: EdgeInsets.all(12),
                      child: Card(
                        elevation: 5,
                        child: Row(
                          children: [
                            crypto(cpy[index]),
                            text(cpy[index]),
                            Spacer(),
                            change(cpy[index])
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}

Widget crypto(data) {
  return Padding(
    padding: const EdgeInsets.all(2),
    child: Container(
      padding: EdgeInsets.only(left: 10, top: 10),
      child: Align(
        alignment: Alignment.topLeft,
        child: Icon(
          data['icon'],
          color: data['iconColor'],
          size: 40,
        ),
      ),
    ),
  );
}

Widget change(data) {
  return Container(
    padding: EdgeInsets.only(right: 10, top: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            data['change'],
            style: TextStyle(
                fontSize: 25,
                color: data['changeColor'],
                fontWeight: FontWeight.w700),
          ),
          Text(
            data['changeValue'],
            style: TextStyle(
                color: data['changeColor'], fontWeight: FontWeight.w600),
          )
        ]),
        Icon(
          Icons.arrow_drop_up_outlined,
          color: data['changeColor'],
          size: 40,
        )
      ],
    ),
  );
}

Widget text(data) {
  return Container(
    padding: EdgeInsets.only(top: 12),
    child: Align(
      alignment: Alignment.topLeft,
      child: RichText(
        text: TextSpan(
          text: '${data['nama']}',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
          children: <TextSpan>[
            TextSpan(
                text: '\n${data['symbol']}',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    ),
  );
}
