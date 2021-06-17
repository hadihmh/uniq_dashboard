import 'package:flutter/material.dart';
import 'package:uniq_dashboard/home/sub_widgets/sidebar.dart';
import 'package:uniq_dashboard/home/sub_widgets/topbar.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xfff6f8fa),
        child: LayoutBuilder(builder: (context, size) {
          print(size.maxWidth);
          return Row(children: [
            Sidebar(size: size,),
            Topbar(size:size)
          ]);
        }),
      ),
    );
  }
}

