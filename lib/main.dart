import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Ke 2',
      theme: ThemeData(primarySwatch: Colors.red),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget{
  Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          leading: Builder(builder: (BuildContext context){
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {Scaffold.of(context).openDrawer();},
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
          }),
          backgroundColor: Colors.blue,
          title: Text("Hello Appbar", style: TextStyle(color: Colors.white),),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search_off_outlined),
              tooltip: 'Open Search Button',
              onPressed: () {},
            ),

            IconButton(
              icon: const Icon(Icons.more_vert_outlined),
              tooltip: 'Open More Button',
              onPressed: () {},
            )

          ],
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Container(
          color: Colors.amber,
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          padding: EdgeInsets.all(30),
          child: Icon(
            Icons.home,
            color: Colors.red,
            size: 100.78,
          ),
        ),
      );
  }
}