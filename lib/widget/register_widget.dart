import 'package:flutter/material.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({super.key});

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 70, 
            width: 200,
            child: TextFormField(
              style: const TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                hintText: 'Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 121, 39, 101), width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                ),
                errorStyle: TextStyle(
                  fontSize: 12, // más pequeño
                  height: 0.8,  // ocupa menos espacio
                          ),
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Enter your Name';
                }
                return null;
              },
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
          SizedBox(
            height: 70, 
            width: 200,
            child: TextFormField(
              style: const TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 121, 39, 101), width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                ),
                errorStyle: TextStyle(
                  fontSize: 12, // más pequeño
                  height: 0.8,  // ocupa menos espacio
                          ),
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Enter your Email';
                }
                return null;
              },
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
          SizedBox(
            height: 70, 
            width: 200,
            child: TextFormField(
              style: const TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                hintText: 'Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 121, 39, 101), width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                ),
                errorStyle: TextStyle(
                  fontSize: 12, // más pequeño
                  height: 0.8,  // ocupa menos espacio
                          ),
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Enter your Username';
                }
                return null;
              },
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
          SizedBox(
            height: 70,
            width: 200,
            child: TextFormField(
              style: const TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 121, 39, 101), width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                ),
                errorStyle: TextStyle(
                  fontSize: 12,
                  height: 0.8,
                ),
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Enter your password';
                }
                return null;
              },
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
          SizedBox(
            height: 70, 
            width: 200,
            child: TextFormField(
              style: const TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Confirm Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 121, 39, 101), width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                ),
                errorStyle: TextStyle(
                  fontSize: 12,
                  height: 0.8,
                ),
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Enter your Password';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Process data.
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 121, 39, 101),
                minimumSize: const Size(200, 50),
              ),
              child: const Text(
                "Register",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
