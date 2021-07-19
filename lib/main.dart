import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dialer App',
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var contactList = ["Ram", "Shyam", "Hari", "Gita"];
  var numberList = ["543534", "43535", "53447", "1234"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Phone Dialer',
        ),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
          itemCount: contactList.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.person),
              title: Text(contactList[index]),
              subtitle: Text(numberList[index]),
              trailing: IconButton(
                icon: Icon(Icons.call),
                onPressed: () {
                  launch("tel://${numberList[index]}");
                },
              ),
            );
          }),
    );
  }
}
