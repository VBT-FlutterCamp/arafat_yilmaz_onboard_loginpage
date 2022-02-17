import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool sifre = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  height: 200,
                ),
                const Text(
                  "Welcome back!",
                  style: TextStyle(fontSize: 30, color: Colors.grey),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Desing Relish",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(97, 124, 25, 103)),
                ),
                const SizedBox(
                  height: 50,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    //hintText: "Aciklama",
                    labelText: "Email Adress",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: sifre,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () => sifreGizle(),
                        icon: Icon(sifre
                            ? Icons.remove_red_eye
                            : Icons.visibility_off)),
                    //hintText: "Aciklama",
                    labelText: "Password",
                    focusColor: Colors.purple,
                    border: const OutlineInputBorder(),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.grey),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Center(
                    child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("LOGIN"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).primaryColor),
                      minimumSize:
                          MaterialStateProperty.all(const Size.fromHeight(50)),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(15))),
                )),
                const SizedBox(
                  height: 50,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: RichText(
                    text: TextSpan(
                      text: "Don't you have an account? ",
                      style: const TextStyle(color: Colors.grey),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Create',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              //
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  sifreGizle() {
    setState(() {
      sifre ? sifre = false : sifre = true;
    });
  }
}
