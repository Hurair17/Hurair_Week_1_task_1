import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_11/core/constant/color_define.dart';
import 'package:task_11/provider/home_bar_provider.dart';

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
    return ChangeNotifierProvider(
      create: (context) => HomeBarProvider(),
      child: Material(
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
                          value: context.watch<HomeBarProvider>().dropdownvalue,
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: grey,
                          ),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                                value: items, child: Text(items));
                          }).toList(),
                          onChanged: (String? newValue) {
                            String newStr = newValue ?? 'Warszawa';
                            int index = items.indexOf(newStr) ?? 0;
                            context.read<HomeBarProvider>().setValue(index);
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
      ),
    );
  }
}
