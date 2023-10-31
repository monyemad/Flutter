import 'package:flutter/material.dart';
import 'package:test_application/register.dart';

class Login extends StatelessWidget {
  Login({super.key});

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Text(
                  'Login',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: email,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email_rounded),
                    hintText: "Email Address",
                    hintStyle: TextStyle(fontSize: 22, color: Colors.black26),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter your email address';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: password,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline_rounded),
                    suffixIcon: Icon(Icons.visibility_rounded),
                    hintText: "Password",
                    hintStyle: TextStyle(fontSize: 22, color: Colors.black26),
                    border: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter your password';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        alignment: Alignment.center,
                        maximumSize: const Size(330, 100),
                        padding: const EdgeInsets.all(12),
                        side: const BorderSide(
                            style: BorderStyle.solid, color: Colors.black12),
                        backgroundColor: Colors.deepPurple),
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 5,
                        )
                      ],
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const RegisterScreen();
                        }));
                      },
                      child: const Text(
                        'Register Now',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
