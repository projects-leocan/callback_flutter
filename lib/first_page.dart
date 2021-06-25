import 'package:callback_flutter/second_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String editableText='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("CallBack Manage")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(editableText.isEmpty?"Want To Change Text?":editableText),
            RaisedButton(
                color: Colors.blue,
                child: const Text("Next Page"),
                onPressed: () {
                  //Todo Navigate to second screen and manage receive data when back from second screen
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondPage())).then((value){
                            if(value != null){
                              setState(() {
                                editableText = value;
                              });
                            }
                  });
                }),
          ],
        ),
      ),
    );
  }
}
