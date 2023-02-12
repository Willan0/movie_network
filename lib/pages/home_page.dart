import 'package:flutter/material.dart';
import '../constant/color.dart';
import '../constant/dimen.dart';
import '../view_items/slide_movie.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cPrimaryColor,
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text('Discover'),
        centerTitle: true,
        backgroundColor: cSecondaryColor,
        actions: const [
          Icon(
            Icons.search,
            size: dIs29x,
          ),
          SizedBox(
            width: dWh15x,
          )
        ],
      ),
      body: ListView(
        children: const [
          // banner section
          SlideMovie(),
          //
        ],
      ),
    );
  }
}

