import 'package:task_11/core/constant/color_define.dart';
import 'package:task_11/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

// Card for HomePage Horizontal Scroll
class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 0,
                color: Colors.white70,
                child: Column(
                  children: [
                    ClipRRect(
                      child: Image.asset(
                        'assets/1.jpg',
                        fit: BoxFit.fill,
                        height: 120,
                        width: 180,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    SizedBox(
                      key: key,
                      height: 110,
                      width: 190,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Flexible(
                                    child: TextWidget(
                                      text:
                                          'POLIN Museum of the History of Polish Jews',
                                      color: black,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  height: 30,
                                  width: 30,
                                  color: grey,
                                  child: const Icon(
                                    Icons.bookmark_add_outlined,
                                    size: 25,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Container(
                              key: key,
                              child: Row(
                                children: [
                                  Container(
                                    key: key,
                                    child: const Icon(
                                      Icons.location_on,
                                      size: 13,
                                    ),
                                  ),
                                  Container(
                                    key: key,
                                    child: const TextWidget(
                                      text: 'Toronto 49, 00-53',
                                      color: grey,
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Card for HomePage Verticle Scroll
class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SizedBox(
            height: 160,
            child: SizedBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 120,
                    height: 150,
                    child: ClipRRect(
                      child: Image.asset(
                        'assets/1.jpg',
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            key: key,
                            child: Text(
                              '08 march 2020',
                              style: TextStyle(
                                color: green,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: 110,
                            child: Flexible(
                              child: TextWidget(
                                text: 'Exhibition: Buildings than and now',
                                color: black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          const Spacer(),
                          SizedBox(
                            child: Row(
                              children: [
                                Container(
                                  key: key,
                                  child: const Icon(
                                    Icons.location_on,
                                    size: 13,
                                  ),
                                ),
                                Container(
                                  key: key,
                                  child: const TextWidget(
                                    text: 'Toronto 49, 00-53',
                                    color: grey,
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 30,
                    width: 30,
                    color: offWhite,
                    child: const Icon(
                      Icons.bookmark_add_outlined,
                      size: 25,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//Card for TopVisitedPage
class TopVisitCard extends StatelessWidget {
  const TopVisitCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 0,
                color: Colors.white70,
                child: Column(
                  children: [
                    ClipRRect(
                      child: Image.asset(
                        'assets/2.jpg',
                        fit: BoxFit.fill,
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    SizedBox(
                      key: key,
                      height: 110,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 200,
                                  child: Flexible(
                                    child: Text(
                                      'POLIN Museum of the History of Polish Jews',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  height: 30,
                                  width: 30,
                                  color: grey,
                                  child: const Icon(
                                    Icons.bookmark_add_outlined,
                                    size: 25,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Container(
                              key: key,
                              child: Row(
                                children: [
                                  Container(
                                    key: key,
                                    child: const Icon(
                                      Icons.location_on,
                                      size: 13,
                                    ),
                                  ),
                                  Container(
                                    key: key,
                                    child: const TextWidget(
                                      text: 'Toronto 49, 00-53',
                                      color: grey,
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Card for Ticket Page
class Card4 extends StatelessWidget {
  const Card4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 80,
            child: SizedBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: ClipRRect(
                      child: Image.asset(
                        'assets/1.jpg',
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            key: key,
                            child: Text(
                              '08 march 2020',
                              style: TextStyle(
                                color: green,
                                fontSize: 8,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: 100,
                            child: Flexible(
                              child: TextWidget(
                                text: 'Exhibition: Buildings than and now',
                                color: black,
                                fontSize: 11,
                              ),
                            ),
                          ),
                          const Spacer(),
                          SizedBox(
                            child: Row(
                              children: [
                                Container(
                                  key: key,
                                  child: const Icon(
                                    Icons.location_on,
                                    size: 13,
                                  ),
                                ),
                                Container(
                                  key: key,
                                  child: const TextWidget(
                                    text: 'Toronto 49, 00-53',
                                    color: grey,
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 30,
                    width: 30,
                    color: offWhite,
                    child: const Icon(
                      Icons.bookmark_add_outlined,
                      size: 25,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
