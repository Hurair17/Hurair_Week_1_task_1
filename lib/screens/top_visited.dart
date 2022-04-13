import 'package:flutter/material.dart';
import 'package:task_11/core/constant/color_define.dart';
import 'package:task_11/core/widgets/Cards.dart';
import 'package:task_11/core/widgets/text_widget.dart';

class TopVisited extends StatefulWidget {
  const TopVisited({Key? key}) : super(key: key);

  @override
  State<TopVisited> createState() => _TopVisitedState();
}

class _TopVisitedState extends State<TopVisited> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          // appBar: AppBar(
          //   bottom:

          // ),

          body: SafeArea(
            // child: MaterialApp(

            child: ListView(
              children: [
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
                TabBar(
                  // indicatorSize: TabBarIndicatorSize.tab,
                  isScrollable: true,
                  tabs: [
                    Tab(
                        child: Text('Top Visited',
                            style: TextStyle(color: green, fontSize: 15))),
                    Tab(
                        child: Text(
                      'Art',
                      style: TextStyle(color: yellow, fontSize: 15),
                    )),
                    const Tab(
                        child: Text('History',
                            style:
                                TextStyle(color: Colors.purple, fontSize: 15))),
                    Tab(
                        child: Text('Military',
                            style: TextStyle(
                                color: Colors.green[300], fontSize: 15))),
                    Tab(
                        child: Text('Science',
                            style: TextStyle(
                                color: Colors.blue[300], fontSize: 15))),
                  ],
                ),
                SizedBox(
                  height: 600,
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
                        child: Text('Art Page',
                            style: TextStyle(
                                color: Colors.yellow[300], fontSize: 30)),
                      ),
                      Center(
                        child: Text('History',
                            style: TextStyle(
                                color: Colors.purple[300], fontSize: 30)),
                      ),
                      Center(
                        child: Text('Military',
                            style: TextStyle(
                                color: Colors.green[300], fontSize: 30)),
                      ),
                      Center(
                        child: Text('Science',
                            style: TextStyle(
                                color: Colors.blue[300], fontSize: 30)),
                      )
                    ],
                  ),
                ),
                // const TopVisitCard(),
                // const TopVisitCard(),
                // const TopVisitCard(),
                // const TopVisitCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
