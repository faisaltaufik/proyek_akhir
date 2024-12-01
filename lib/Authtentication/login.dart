import 'package:flutter/material.dart';
import 'package:proyek_akhir/Views/home_screen.dart';
import './signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Image.asset(
                        "lib/assets/login.jpg",
                        width: 300,
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "Coffee Shop Apps",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Poppins-Bold",
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 10),
                      // username field
                      Container(
                        margin: const EdgeInsets.all(8),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.deepPurple.withOpacity(.2),
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.lock),
                            border: InputBorder.none,
                            hintText: "Username",
                          ),
                        ),
                      ),
                      // password field
                      Container(
                        margin: const EdgeInsets.all(8),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.deepPurple.withOpacity(.2),
                        ),
                        child: TextFormField(
                          obscureText: !isVisible,
                          decoration: InputDecoration(
                            icon: const Icon(Icons.person),
                            border: InputBorder.none,
                            hintText: "Password",
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isVisible = !isVisible;
                                });
                              },
                              icon: Icon(isVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 10),
                      // Login button
                      Container(
                        margin: const EdgeInsets.all(8),
                        height: 55,
                        width: MediaQuery.of(context).size.width * .9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.teal[400],
                        ),
                        child: TextButton(
                          onPressed: () {
                            // navigate to home screen
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()));
                          },
                          child: const Text(
                            "LOGIN",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      // Sign up button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have an account?"),
                          TextButton(
                            onPressed: () {
                              // navigate to sign up
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SignUp()));
                            },
                            child: const Text("SIGN UP"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          } else {
            return Center(
              child: SizedBox(
                width: 600,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Image.asset(
                          "lib/assets/login.jpg",
                          width: 300,
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          "Coffee Shop Apps",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Poppins-Bold",
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 10),
                        // username field
                        Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.deepPurple.withOpacity(.2),
                          ),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              icon: Icon(Icons.lock),
                              border: InputBorder.none,
                              hintText: "Username",
                            ),
                          ),
                        ),
                        // password field
                        Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.deepPurple.withOpacity(.2),
                          ),
                          child: TextFormField(
                            obscureText: !isVisible,
                            decoration: InputDecoration(
                              icon: const Icon(Icons.person),
                              border: InputBorder.none,
                              hintText: "Password",
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isVisible = !isVisible;
                                  });
                                },
                                icon: Icon(isVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 10),
                        // Login button
                        Container(
                          margin: const EdgeInsets.all(8),
                          height: 55,
                          width: MediaQuery.of(context).size.width * .9,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.teal[400],
                          ),
                          child: TextButton(
                            onPressed: () {
                              // navigate to home screen
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HomeScreen()));
                            },
                            child: const Text(
                              "LOGIN",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                        // Sign up button
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Don't have an account?"),
                            TextButton(
                              onPressed: () {
                                // navigate to sign up
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const SignUp()));
                              },
                              child: const Text("SIGN UP"),
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
        },
      ),
    );
  }
}
