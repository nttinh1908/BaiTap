import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return (MaterialApp(home: ListViewPage()));
  }
}

class ListViewPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return (ListViewPageState());
  }
}

class ListViewPageState extends State<ListViewPage> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListView'),
          backgroundColor: Colors.green,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ListView Tĩnh'),
            ListViewTinh(),
            Text('ListView Động'),
            ListViewDong()
          ],
        )));
  }
}

Widget ListViewTinh() {
  return ListView(
    shrinkWrap: true,
    children: [
      Card(
          child: ListTile(
        leading: Icon(Icons.add),
        title: Text('Người dùng thứ 1'),
      )),
      Card(
          child: ListTile(
        leading: Icon(Icons.add),
        title: Text('Người dùng thứ 2'),
      )),
      Card(
          child: ListTile(
        leading: Icon(Icons.add),
        title: Text('Người dùng thứ 3'),
      )),
      SizedBox(height: 20,),
    ],
  );
}

Widget ListViewDong() {
  int n = 5;
  List<int> listInt = List.generate(n, (i) => i + 1);
  return ListView.builder(
      shrinkWrap: true,
      itemCount: n,
      itemBuilder: (BuildContext context, int i) =>
          Text('Người dùng thứ: ${listInt[i]}'));
}

Widget ListViewDong2() {
  int n = 5;
  List<int> listInt = List.generate(n, (i) => i + 1);
  return ListView.separated(
    shrinkWrap: true,
    itemCount: n,
    itemBuilder: (BuildContext context, int i) =>
        Text('Người dùng thứ: ${listInt[i]}'),
    separatorBuilder: (BuildContext context, int i) => Divider(),
  );
}
