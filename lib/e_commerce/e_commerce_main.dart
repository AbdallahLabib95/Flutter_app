import 'package:flutter/material.dart';
import 'screens/login.dart';
import 'screens/product.dart';

class EcommerceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        dividerColor: Color(0xFFECEDF1),
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        primaryColor: Color(0xFFF93963),
        accentColor: Colors.cyan[600],
        fontFamily: 'Montserrat',
        textTheme: TextTheme(
          // ignore: deprecated_member_use
          headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          // ignore: deprecated_member_use
          title: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
          // ignore: deprecated_member_use
          subtitle: TextStyle(fontSize: 16),
          // ignore: deprecated_member_use
          body1: TextStyle(fontSize: 14.0, fontFamily: 'Montserrat'),
          // ignore: deprecated_member_use
          display1: TextStyle(
              fontSize: 14.0, fontFamily: 'Montserrat1', color: Colors.white),
          // ignore: deprecated_member_use
          display2: TextStyle(
              fontSize: 14.0, fontFamily: 'Montserrat', color: Colors.black54),
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce UI Kit',
      home: LoginScreen(),
      routes: {
        '/product': (context) => ProductPage(),
      },
    );
  }
}

class TabLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      color: Colors.yellow,
      home: DefaultTabController(
        length: 4,
        child: new Scaffold(
          body: TabBarView(
            children: [
              new Container(
                color: Colors.yellow,
              ),
              new Container(
                color: Colors.orange,
              ),
              new Container(
                color: Colors.lightGreen,
              ),
              new Container(
                color: Colors.red,
              ),
            ],
          ),
          bottomNavigationBar: new TabBar(
            tabs: [
              Tab(
                icon: new Icon(Icons.home),
              ),
              Tab(
                icon: new Icon(Icons.rss_feed),
              ),
              Tab(
                icon: new Icon(Icons.perm_identity),
              ),
              Tab(
                icon: new Icon(Icons.settings),
              )
            ],
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.red,
          ),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
