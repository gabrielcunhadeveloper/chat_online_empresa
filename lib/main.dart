import 'package:chat_online_empresa/ui/home.dart';
import 'package:flutter/material.dart';


//void main() {
//  Firestore.instance.collection("clientes").snapshots().listen((snapshot){
//    for (DocumentSnapshot ds in snapshot.documents) {
//      print(ds.data);
//    }
//  });
//
//  runApp(Home());
//}

void main() => runApp(Home());

final ThemeData kIOSTheme = ThemeData(
    primarySwatch: Colors.orange,
    primaryColor: Colors.grey[100],
    primaryColorBrightness: Brightness.light
);

final ThemeData kDefaultTheme = ThemeData(
    primarySwatch: Colors.purple,
    accentColor: Colors.orangeAccent[400]
);

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Chat Online Empresa',
        debugShowCheckedModeBanner: false,
        theme: Theme.of(context).platform == TargetPlatform.iOS ? kIOSTheme : kDefaultTheme,
        home: HomePage(title: 'Chat Online Empresa'),
    );
  }
}
