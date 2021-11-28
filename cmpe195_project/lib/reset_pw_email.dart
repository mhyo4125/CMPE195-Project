import 'imports.dart';
//import 'dart:ui' as ui;

class ResetPW extends StatefulWidget {
  final String name;
  final String email;

  const ResetPW({
    Key? key,
    this.name = "",
    this.email = "",
  }) : super(key: key);

  @override
  State<ResetPW> createState() => _ResetPWState();
}

class _ResetPWState extends State<ResetPW> {
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
                'Reset Password',
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
                      const Text('Verify Account',
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
                        height: 60,
                      ),
                      Button(
                        text: 'Submit',
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
                ],
              ),
            )));
  }
}
