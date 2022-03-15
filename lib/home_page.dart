import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'view_page.dart';

class HomePage extends StatefulWidget {
  final String username, pass;
  const HomePage({Key? key, required this.username, required this.pass})
      : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Column(children: [
          _viewButton(context),
        ]),
      ),
    );
  }

  Widget _viewButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.white, // foreground
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ViewPage(username: widget.username, pass: widget.pass);
          }));
        },
        child: const Text('View'),
      ),
    );
  }
}
