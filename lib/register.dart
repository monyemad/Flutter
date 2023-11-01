import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Text(
                  'Register',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.text_fields_rounded),
                    hintText: "Username",
                    hintStyle: TextStyle(fontSize: 22, color: Colors.black26),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter your username';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email_rounded),
                    hintText: "Email",
                    hintStyle: TextStyle(fontSize: 22, color: Colors.black26),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter your email';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline_rounded),
                    suffixIcon: Icon(Icons.visibility_rounded),
                    hintText: "Password",
                    hintStyle: TextStyle(fontSize: 22, color: Colors.black26),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter your password';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline_rounded),
                    suffixIcon: Icon(Icons.visibility_rounded),
                    hintText: "Confirm password",
                    hintStyle: TextStyle(fontSize: 22, color: Colors.black26),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'confirm password must be not empty';
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
                  child: const Text(
                    "Register",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
