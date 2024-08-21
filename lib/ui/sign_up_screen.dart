import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nickNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(left: 6),
                child: TextFormField(
                  cursorColor: Colors.grey,
                  controller: nickNameController,
                  decoration: InputDecoration(
                      hintText: 'Nick Name', border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(left: 6),
                child: TextFormField(
                  cursorColor: Colors.grey,
                  controller: emailController,
                  decoration: InputDecoration(
                      hintText: 'Email', border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(left: 6),
                child: TextFormField(
                  cursorColor: Colors.grey,
                  controller: passwordController,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      suffixIcon: Icon(Icons.remove_red_eye_rounded),
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forget Password',
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
            SizedBox(
              height: 14,
            ),
            Container(
              child: Center(
                  child: Text(
                'SignUp',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )),
              height: 44,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  child: Icon(
                    FontAwesomeIcons.google,
                    color: Colors.black54,
                  ),
                  backgroundColor: Colors.grey.shade100,
                  radius: 26,
                ),
                CircleAvatar(
                  child: Icon(
                    FontAwesomeIcons.mobile,
                    color: Colors.black54,
                  ),
                  backgroundColor: Colors.grey.shade100,
                  radius: 26,
                ),
              ],
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an Account?"),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'LogIn',
                  style: TextStyle(color: Colors.blue),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
