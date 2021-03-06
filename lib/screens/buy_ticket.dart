import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_11/core/constant/color_define.dart';
import 'package:task_11/core/widgets/Cards.dart';
import 'package:task_11/core/widgets/text_widget.dart';
import 'package:task_11/provider/buy_ticket_provider.dart';
import 'package:task_11/screens/root_screen.dart';

class BuyTicket extends StatefulWidget {
  const BuyTicket({Key? key}) : super(key: key);

  @override
  State<BuyTicket> createState() => _BuyTicketState();
}

class _BuyTicketState extends State<BuyTicket> {
  // List of Days
  var items = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Friday',
    'Saturday'
  ];
  String? dropdownvalue = 'Sunday'; // intial day is sunday
  String txt =
      'It is a historical Museum which presents the 100 years useum which presents the 100 years of jeweish life in the polish lands. It is also a place of ';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            //Background image of stack
            SizedBox(
              height: 300,
              child: Image.asset(
                'assets/4.jpg',
                fit: BoxFit.fill,
              ),
            ),

            // Stcke Widget Different Position for Widgets
            Positioned(
              top: 200,
              child: Container(
                padding: const EdgeInsets.only(left: 12, right: 12),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                width: 360,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 440,

                      // ListView for all the portion to scroll
                      child: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'POLIN Museum',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: black,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Icon(Icons.bookmark),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: txt,
                                    // : 3,
                                    style: TextStyle(
                                      color: black,
                                      fontSize: 12,
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: Text("...more",
                                        style: TextStyle(
                                            fontSize: 12, color: yellow)),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      child: const Icon(
                                        Icons.maps_ugc_rounded,
                                        size: 40,
                                      ),
                                    ),
                                    Column(children: [
                                      TextWidget(
                                        text: 'Anielewicza 6,',
                                        color: black,
                                        fontSize: 15,
                                      ),
                                      const TextWidget(
                                        text: '00-157, Warszawa',
                                        color: grey,
                                        fontSize: 12,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      )
                                    ])
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      child: const Icon(
                                        Icons.map,
                                        size: 40,
                                      ),
                                    ),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const TextWidget(
                                            text: 'Today Open:',
                                            color: grey,
                                            fontSize: 15,
                                          ),
                                          SizedBox(
                                            height: 15,
                                            child: DropdownButtonHideUnderline(
                                              child: DropdownButton(
                                                value: context
                                                    .watch<BuyTicketProvider>()
                                                    .dropdownvalue,
                                                items:
                                                    items.map((String items) {
                                                  return DropdownMenuItem(
                                                    value: items,
                                                    child: Text(items),
                                                  );
                                                }).toList(),
                                                onChanged: (String? newValue) {
                                                  // setState(() {
                                                  //   dropdownvalue = newValue;
                                                  // });
                                                  String newstr =
                                                      newValue ?? 'Sunday';
                                                  int index =
                                                      items.indexOf(newstr);
                                                  context
                                                      .read<BuyTicketProvider>()
                                                      .setDay(index);
                                                },
                                                style: const TextStyle(
                                                  color: grey,
                                                ),
                                                elevation: 0,
                                              ),
                                            ),
                                          ),
                                        ]),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          TextWidget(
                            text: 'News',
                            fontSize: 20,
                            color: green,
                          ),
                          const Card4(),
                          const Card4(),
                          const Card4(),
                          const Card4(),
                          const Card4(),
                          const Card4(),
                          const Card4(),
                        ],
                      ),
                    ),

                    // Container for Elevated Button
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: yellow,
                          onPrimary: black,

                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          minimumSize: const Size(350, 60), //////// HERE
                          alignment: Alignment.center,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Home()));
                        },
                        child: const Text(
                          'Buy Ticket',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
