import 'package:flutter/material.dart';
import 'package:task_11/core/constant/color_define.dart';
import 'package:task_11/core/widgets/cards.dart';
import 'package:task_11/core/widgets/text_widget.dart';
import 'package:task_11/core/widgets/home_bar.dart';

class HomeWigets extends StatefulWidget {
  const HomeWigets({Key? key}) : super(key: key);

  @override
  State<HomeWigets> createState() => _HomeWigetsState();
}

class _HomeWigetsState extends State<HomeWigets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            // scrollDirection: Axis.vertical,
            children: [
              const HomeBar(),
              Container(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Row(
                  children: [
                    TextWidget(
                      text: 'Top Visited',
                      color: green,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    const Spacer(),
                    TextWidget(
                      text: 'View all',
                      color: green,
                      fontSize: 17,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 330,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    Card1(),
                    Card1(),
                    Card1(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: TextWidget(
                  text: 'News and Exhibitions',
                  color: green,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Card2(),
              const Card2(),
              const Card2(),
            ],
          ),
        ),
      ),
    );
  }
}
