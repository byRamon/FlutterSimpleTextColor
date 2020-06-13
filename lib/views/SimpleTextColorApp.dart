import 'package:flutter/cupertino.dart';

class SimpleTextColorApp extends StatefulWidget {
  @override
  SimpleTextColorApp({Key key}) : super(key: key);
  @override
  _SimpleTextColorAppState createState() => _SimpleTextColorAppState();
}

class _SimpleTextColorAppState extends State<SimpleTextColorApp> {
  int counts = 0;
  TextStyle estilo = TextStyle(
      fontSize: 25,
      color: CupertinoColors.systemYellow,
      fontWeight: FontWeight.bold,
      decorationColor: Color.fromARGB(0, 0, 0, 1));
  void cambiarColor(Color color) {
    estilo = TextStyle(
        fontSize: 25,
        color: color,
        fontWeight: FontWeight.bold,
        decorationColor: color);
    setState(() {});
  }
  CupertinoButton addBoton(String text, Color color){
    return CupertinoButton(
        child: Text(text),
        color: CupertinoColors.systemYellow,
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        onPressed: () {
          cambiarColor(color);
        });
  }
  @override
  Widget build(BuildContext context) {
    CupertinoApp body = CupertinoApp(
      debugShowCheckedModeBanner: true,
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Simple Text Color App'),
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical:100, horizontal: 0),
              child: Text(
                'Cambia el color del Texto:',
                style: estilo,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                addBoton("Azul", CupertinoColors.activeBlue),
                addBoton("Verde", CupertinoColors.activeGreen),
                addBoton("Rojo", CupertinoColors.destructiveRed),
              ],
            ),
          ],
        )),
      ),
    );
    return body;
  }
}
