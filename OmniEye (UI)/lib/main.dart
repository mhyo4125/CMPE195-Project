import 'package:cmpe195_project/project_grid.dart';

import 'imports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OmniEye',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: const MyHomePage(title: 'OmniEye Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PresetColors.dark,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Welcome to',
                style: TextStyle(
                    fontSize: 75,
                    fontFamily: 'ProximaNova',
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 15,
            ),
            const Text('OmniEye',
                style: TextStyle(
                    fontSize: 120,
                    fontFamily: 'Dots',
                    color: Colors.teal,
                    fontWeight: FontWeight.bold)),
            const Padding(
              padding: EdgeInsets.all(5),
              child: Image(
                image: AssetImage('eye_no_glow.png'),
                height: 350,
                width: 700,
                fit: BoxFit.contain,
              ),
            ),
            const Text(
              'Bringing visions to life',
              style: TextStyle(
                fontFamily: 'ProximaNova',
                fontWeight: FontWeight.w100,
                fontSize: 25,
                fontStyle: FontStyle.italic,
                color: PresetColors.primary100,
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: Button(
                text: 'Log in',
                color1: Colors.teal,
                color2: PresetColors.silver,
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const SignIn()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: Button(
                text: 'Sign up',
                color1: Colors.teal,
                color2: PresetColors.silver,
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const SignUp()));
                },
              ),
            ),
            // FOR TESTING PURPOSES //
            Padding(
              padding: const EdgeInsets.all(3),
              child: Button(
                text: 'TEST A WIDGET',
                color1: Colors.red,
                color2: PresetColors.silver,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ProjectGrid()));
                },
              ),
            ),
            // FOR TESTING PURPOSES //
          ],
        ),
      ),
    );
  }
}
