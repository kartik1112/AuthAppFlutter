import 'package:authtutorial/widgets/button_widget.dart';
import 'package:authtutorial/widgets/input_textfield.dart';
import 'package:authtutorial/widgets/square_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final username = TextEditingController();
  final password = TextEditingController();

  signUserIn() {
    print("object");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Icon(
              Icons.lock,
              size: 100,
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "Welcome back you've been missed!",
              style: TextStyle(color: Colors.grey[700], fontSize: 16),
            ),
            const SizedBox(
              height: 25,
            ),
            InputTextFieldWidget(
                controller: username, isPass: false, hint: "Username"),
            const SizedBox(
              height: 25,
            ),
            InputTextFieldWidget(
                controller: password, isPass: true, hint: "Password"),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    textAlign: TextAlign.right,
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ),
              ],
            ),
            ButtonWidget(
              onTapFunction: signUserIn,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Or continue with",
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SquareTile(imagePath: 'lib/assets/google_icon.png'),
                const SizedBox(
                  width: 10,
                ),
                SquareTile(imagePath: 'lib/assets/apple_icon.png')
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a Member?",
                  style: TextStyle(color: Colors.grey.shade800, fontSize: 16),
                ),
                const Text(
                  " Register now",
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
