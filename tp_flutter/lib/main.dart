import 'package:tp_flutter/pages/page1_page.dart';
import 'package:flutter/material.dart';
import 'package:tp_flutter/pages/Home_Page.dart';
import 'package:tp_flutter/pages/Maria_ramirez.dart';
import 'package:tp_flutter/pages/OLeonardo_LopezG.dart';
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'clase 11',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/'      :(BuildContext context) => HomePage(),
        'pagina1':(BuildContext context)=> PaginaUno(),
        'Maria Itati Ramirez':(BuildContext context)=> PagMaria(),
        'Oscar Leonardo Lopez Gonzalez':(BuildContext context)=> PagLeonardo(),
      },
    );
  }
}