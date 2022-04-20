import 'package:flutter/material.dart';
import 'package:task_11/core/constant/color_define.dart';
import 'package:task_11/core/widgets/Cards.dart';
import 'package:task_11/core/widgets/text_widget.dart';

Text textfun(String tx, Color? col, double size) {
  return Text(
    tx,
    style: TextStyle(color: col, fontSize: size),
  );
}

class TopVisited extends StatefulWidget {
  const TopVisited({Key? key}) : super(key: key);

  @override
  State<TopVisited> createState() => _TopVisitedState();
}

class _TopVisitedState extends State<TopVisited> {
  double size = 15;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          body: SafeArea(
            child: ListView(
              children: [
                //Top Visited Page design Top
                Row(
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.only(top: 30.0, left: 15, right: 30),
                      child: TextWidget(
                        text: 'Museums',
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: green,
                      ),
                    ),
                    const Spacer(),
                    const Padding(
                      padding:
                          EdgeInsets.only(top: 30.0, right: 15, bottom: 10),
                      child: Icon(
                        Icons.bookmark,
                        color: grey,
                      ),
                    ),
                  ],
                ),

                //tabbar Options
                TabBar(
                  // indicatorSize: TabBarIndicatorSize.tab,
                  isScrollable: true,
                  tabs: [
                    Tab(
                      child: textfun('Top Visited', green, size),
                    ),
                    Tab(
                      child: textfun('Art', yellow, size),
                    ),
                    Tab(
                      child: textfun('History', Colors.purple, size),
                    ),
                    Tab(
                      child: textfun('Military', green, size),
                    ),
                    Tab(
                      child: textfun('Science', Colors.blue[300], size),
                    ),
                  ],
                ),

                // For TabbarView
                SizedBox(
                  height: 600,
                  //tabbar Pages to be view
                  child: TabBarView(
                    children: [
                      ListView(
                        children: const [
                          TopVisitCard(),
                          TopVisitCard(),
                          TopVisitCard(),
                        ],
                      ),
                      Center(
                        child: textfun('Art Page', black, 40),
                      ),
                      Center(
                        child: Text('History',
                            style: TextStyle(
                                color: Colors.purple[300], fontSize: 40)),
                      ),
                      Center(
                        child: textfun('Military', Colors.green[300], 40),
                      ),
                      Center(
                        child: textfun('Science', Colors.blue[300], 40),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
