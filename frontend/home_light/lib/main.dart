import 'package:flutter/material.dart';
import 'package:home_light/home.dart';

void main() => runApp(HomeLight());

class HomeLight extends StatelessWidget
{
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.amber,
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home),),
              Tab(icon: Icon(Icons.lightbulb_outline),),
              Tab(icon: Icon(Icons.alarm),),
            ]
          ),
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              Home(title: 'Home'),
              MyHomePage(title: 'Lights'),
              MyHomePage(title: 'Automation')
            ]
          ),
        ),
      )
    );
  }
}

class MyHomePage extends StatefulWidget
{
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Text('Hello Android'),
    );
  }
}
