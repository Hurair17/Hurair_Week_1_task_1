import 'package:flutter/material.dart';
import 'package:task_11/core/constant/color_define.dart';
import 'package:task_11/core/widgets/text_widget.dart';
import 'package:task_11/screens/botoom_nav_bar.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.all(15),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios),
              ),
              const SizedBox(
                height: 100,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: 'Log in to Muz',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: green,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const TextWidget(
                    text: 'Email Address',
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                  const TxtFormField(
                    hintText: 'Password',
                  ),
                  const SizedBox(height: 30),
                  const TextWidget(
                    text: 'Password',
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                  const TxtFormField(
                    obscureText: true,
                    hintText: 'Password',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forget Password?',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
              const SizedBox(height: 80),
              Center(
                // alignment: Alignment.center,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: offWhite,
                    onPrimary: black,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    minimumSize: const Size(300, 60),
                    alignment: Alignment.center,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Home()));
                  },
                  child: const Text(
                    'Log in',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
