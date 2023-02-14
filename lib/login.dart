import 'package:declutter/create_account.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Color(0xffB2B2B2).withOpacity(0.2))),
                        child: Icon(
                          Icons.arrow_back,
                          color: Color(0xff2E2D2D),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text('LOG IN'),
                  ],
                ),
                SizedBox(
                  height: 80,
                ),
                Text('E-mail'),
                SizedBox(
                  height: 8,
                ),
                Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffB2B2B2),
                    ),
                    color: Color(0xffB2B2B2).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      // filled: true,
                      // fillColor: Color(0xffB2B2B2),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                Text('Password'),
                SizedBox(
                  height: 8,
                ),
                Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffB2B2B2),
                    ),
                    color: Color(0xffB2B2B2).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      // filled: true,
                      // fillColor: Color(0xffB2B2B2),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Container(
                      width: 23,
                      height: 23,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Color(0xffB2B2B2))),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text('Keep me logged in.'),
                    SizedBox(
                      width: 50,
                    ),
                    Text('Forgot password?'),
                  ],
                ),
                SizedBox(
                  height: 80,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext) => CreateAccount()));
                    },
                    child: Text('Log in'),
                  ),
                ),
                SizedBox(
                  height: 112,
                ),
                RichText(
                  text: TextSpan(
                      text: 'Don\'t have an account?',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' Create account',
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 18),
                            recognizer: TapGestureRecognizer()..onTap = () {})
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
