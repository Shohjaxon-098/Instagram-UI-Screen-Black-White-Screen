import 'package:flutter/material.dart';
import 'package:flutter_application_4/pages/home_page.dart';
import 'package:flutter_application_4/pages/screen_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _textEditingController = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ));
          },
          color: Theme.of(context).colorScheme.secondary,
        ),
        toolbarHeight: 88,
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
      ),
      backgroundColor:Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
              "Instagram",
              style: TextStyle(
                fontSize: 59,
                fontFamily: "Billabong",
              ),
            ),
              SizedBox(
                height: 39,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.055,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.tertiary,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextField(
                        controller: _textEditingController,
                        decoration: InputDecoration(
                          labelText: "Username",
                          labelStyle: TextStyle(
                              color:  Colors.grey,
                              fontWeight: FontWeight.w500),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(10, 0, 0, 0))),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.055,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.tertiary,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextField(
                        controller: passwordcontroller,
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(
                              color:  Colors.grey,
                              fontWeight: FontWeight.w500),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(10, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "Forgot password?",
                        style:
                            TextStyle(color: Color.fromARGB(255, 55, 151, 239)),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.055,
                      child: ElevatedButton(
                        onPressed: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ScreenPage(),));
                        },
                        child: Text(
                          "Log in",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14,color: Theme.of(context).colorScheme.scrim),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 26,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: ImageIcon(AssetImage("assets/images/Icon.png")),
                    label: Text("Log in with Facebook"),
                  ),
                ],
              ),
              SizedBox(
                height: 42,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 132,
                    height: 1,
                    color: const Color.fromARGB(40, 0, 0, 0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Text(
                      "OR",
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    width: 132,
                    height: 1,
                    color: const Color.fromARGB(40, 0, 0, 0),
                  ),
                ],
              ),
              SizedBox(
                height: 42,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign up.",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 101,
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 20,
              ),
              Text("Instagram o Facebook",style: TextStyle(color: Colors.grey,fontSize: 12
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
