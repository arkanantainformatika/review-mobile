import 'package:flutter/material.dart';
import 'package:modul4/widget/textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TextEditingController username = TextEditingController();
  // TextEditingController password = TextEditingController();
  // TextEditingController username = TextEditingController();
  TextEditingController nama = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController umur = TextEditingController();
  String? jeniskelamin, hobi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const SizedBox(height: 20),
            // CustomTextfield(controller: username, label: "username", hint: "masukan username"),
            // const SizedBox(height: 20),
            // CustomTextfield(controller: password, label: "password", hint: "masukan password"),
            // const SizedBox(height: 20),
            CustomTextfield(controller: email, label: "nama", hint: "ketik nama"),
            const SizedBox(height: 20),
            CustomTextfield(controller: nama, label: "email", hint: "ketik email"),
            const SizedBox(height: 20),
            CustomTextfield(controller: umur, label: "umur", hint: "ketik umur"),
            const SizedBox(height: 20),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.only(left: 50),
                  title: const Text("Lanang"),
                  leading: Radio<String>(
                    value: "Lanang",
                    groupValue: "jenis Kelamin",
                    onChanged: (value) {
                      setState(() {
                        jeniskelamin = value;
                      });
                    }),
                ),
                SizedBox(
                  widget: 200,
                )
                ListTile(
                  contentPadding: const EdgeInsets.only(left: 50),
                  title: const Text("Wedok"),
                  leading: Radio<String>(
                    value: "wedok",
                    groupValue: "jenis Kelamin",
                    onChanged: (value) {
                      setState(() {
                        jeniskelamin = value;
                      });
                    }
                  ),
                )
              ],
            )
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    // print("username: ${username.text}\n password: ${password.text}");
                    // username.clear();
                    // password.clear();
                  });
                },
                style: ElevatedButton.styleFrom(foregroundColor: Colors.blue),
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.black),
                )),
          ],
        ),
      ),
    );
  }
}