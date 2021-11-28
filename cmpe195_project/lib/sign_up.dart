import 'imports.dart';
//import 'dart:ui' as ui;

class SignUp extends StatefulWidget {
  final String name;
  final String email;
  final String password;

  const SignUp({
    Key? key,
    this.name = "",
    this.email = "",
    this.password = "",
  }) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Scaffold(
            backgroundColor: PresetColors.dark,
            appBar: AppBar(
              backgroundColor: Colors.teal,
              title: const Text(
                'Let\'s Get Started!',
                style: TextStyle(
                  fontFamily: 'ProximaNova',
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            body: Center(
              child: ListView(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(
                        height: 30,
                      ),
                      const Text('Sign Up',
                          style: TextStyle(
                            fontFamily: 'ProximaNova',
                            fontWeight: FontWeight.w800,
                            fontSize: 80,
                            color: Colors.white,
                          )),
                      const SizedBox(
                        height: 90,
                      ),
                      SizedBox(
                        width: 400,
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            icon: const Icon(Icons.person),
                            filled: true,
                            fillColor: PresetColors.silver,
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 10.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.teal),
                              borderRadius: (BorderRadius.circular(10)),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                            hintText: 'First name',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 400,
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            icon: const Icon(Icons.email),
                            filled: true,
                            fillColor: PresetColors.silver,
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 10.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.teal),
                              borderRadius: (BorderRadius.circular(10)),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                            hintText: 'Email',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 400,
                        child: TextFormField(
                          obscureText: true,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            icon: const Icon(Icons.lock),
                            filled: true,
                            fillColor: PresetColors.silver,
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 10.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.teal),
                              borderRadius: (BorderRadius.circular(10)),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                            hintText: 'Password',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Button(
                        text: 'Continue',
                        color1: Colors.teal,
                        color2: Colors.grey,
                        onPressed: () {
                          //
                          // NEEDS IMPLEMENTATION
                          //
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            )));
  }
}
