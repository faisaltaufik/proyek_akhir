import 'package:flutter/material.dart';
import './login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isVisiblePassword = false;
  bool isVisibleConfirmPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 600) {
          return Center(
            child: SingleChildScrollView(
              child: Form(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const ListTile(
                        title: Text(
                          "Register New Account",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
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
                          obscureText: !isVisiblePassword,
                          decoration: InputDecoration(
                            icon: const Icon(Icons.person),
                            border: InputBorder.none,
                            hintText: "Password",
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isVisiblePassword = !isVisiblePassword;
                                });
                              },
                              icon: Icon(isVisiblePassword
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            ),
                          ),
                        ),
                      ),
                      // confirm password field
                      Container(
                        margin: const EdgeInsets.all(8),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.deepPurple.withOpacity(.2),
                        ),
                        child: TextFormField(
                          obscureText: !isVisibleConfirmPassword,
                          decoration: InputDecoration(
                            icon: const Icon(Icons.person),
                            border: InputBorder.none,
                            hintText: "Confirm Password",
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isVisibleConfirmPassword =
                                      !isVisibleConfirmPassword;
                                });
                              },
                              icon: Icon(isVisibleConfirmPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width * .9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.teal[400],
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
                          },
                          child: const Text(
                            "SIGN UP",
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
                          const Text("Already have an account?"),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginScreen()));
                            },
                            child: const Text("LOGIN"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        } else {
          return Center(
            child: SizedBox(
              width: 600,
              child: SingleChildScrollView(
                child: Form(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const ListTile(
                          title: Text(
                            "Register New Account",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
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
                            obscureText: !isVisiblePassword,
                            decoration: InputDecoration(
                              icon: const Icon(Icons.person),
                              border: InputBorder.none,
                              hintText: "Password",
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isVisiblePassword = !isVisiblePassword;
                                  });
                                },
                                icon: Icon(isVisiblePassword
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                              ),
                            ),
                          ),
                        ),
                        // confirm password field
                        Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.deepPurple.withOpacity(.2),
                          ),
                          child: TextFormField(
                            obscureText: !isVisibleConfirmPassword,
                            decoration: InputDecoration(
                              icon: const Icon(Icons.person),
                              border: InputBorder.none,
                              hintText: "Confirm Password",
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isVisibleConfirmPassword =
                                        !isVisibleConfirmPassword;
                                  });
                                },
                                icon: Icon(isVisibleConfirmPassword
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginScreen()));
                            },
                            child: const Text(
                              "SIGN UP",
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
                            const Text("Already have an account?"),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginScreen()));
                              },
                              child: const Text("LOGIN"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }
      }),
    );
  }
}
