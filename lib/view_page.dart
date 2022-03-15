import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ViewPage extends StatefulWidget {
  final String username, pass;
  const ViewPage({Key? key, required this.username, required this.pass})
      : super(key: key);
  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("View Page"),
        ),
        body: Column(children: [
          Text("username : ${widget.username}\n password : ${widget.pass}\n"),
          _backButton(context),
        ]),
      ),
    );
  }

  Widget _backButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.white, // foreground
        ),
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Back'),
      ),
    );
  }
}
