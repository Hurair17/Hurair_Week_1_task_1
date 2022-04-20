import 'package:flutter/material.dart';
import 'package:task_11/core/constant/color_define.dart';

class HomeBar extends StatefulWidget {
  const HomeBar({Key? key}) : super(key: key);

  @override
  State<HomeBar> createState() => _HomeBarState();
}

class _HomeBarState extends State<HomeBar> {
  var items = ['Warszawa', 'Peshawar', 'Lahore'];
  String? dropdownvalue = 'Warszawa';
  @override
  Widget build(BuildContext context) {
    print('object');
    return Material(
      child: SafeArea(
        // child: MaterialApp(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 12, right: 12),
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    size: 15,
                    color: grey,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton(
                        elevation: 5,
                        style: const TextStyle(
                          color: grey,
                          fontSize: 18,
                        ),
                        value: dropdownvalue,
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: grey,
                        ),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                              value: items, child: Text(items));
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue;
                          });
                        }),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.bookmark,
                    color: grey,
                  )
                ],
              ),
              TextField(
                cursorColor: black,
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: grey,
                      ),
                    ),
                    focusColor: grey,
                    prefixIcon: Icon(
                      Icons.search,
                      color: grey,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: grey),
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    hintText: 'Search Museums',
                    hintStyle: TextStyle(color: grey),
                    fillColor: Colors.white70,
                    filled: true),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
