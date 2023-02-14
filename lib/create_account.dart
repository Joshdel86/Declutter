import 'package:declutter/nav.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: SingleChildScrollView(
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 35,
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Color(0xff0F68ED).withOpacity(0.2))),
                      child: Icon(Icons.arrow_back, color: Color(0xff0F68ED)),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text('CREATE ACCOUNT'),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Text('Name'),
                SizedBox(
                  height: 8,
                ),
                Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: Color(0xffB2B2B2).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
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
                  height: 40,
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
                ),
                SizedBox(
                  height: 40,
                ),
                Text('Confirm Password'),
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
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (BuildContext) => Nav()));
                    },
                    child: Text('Sign up'),
                  ),
                ),
                SizedBox(
                  height: 112,
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
