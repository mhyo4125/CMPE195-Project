import 'imports.dart';

class Button extends StatelessWidget {
  const Button({
    this.text = '',
    this.color1 = PresetColors.primary500,
    this.color2 = PresetColors.secondary500,
    required this.onPressed,
    this.isSmall = false,
    Key? key,
  }) : super(key: key);

  final Color color1;
  final Color color2;
  final String text;
  final Function() onPressed;
  final bool isSmall;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            color1,
            color2,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      width: isSmall ? 100 : 290,
      height: isSmall ? 38 : 43,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          backgroundColor: PresetColors.transparent,
          shadowColor: PresetColors.transparent,
          primary: Colors.white,
        ),
        onPressed: () => onPressed.call(),
        child: Text(
          text,
          style: const TextStyle(
            fontFamily: 'ProximaNova',
            fontWeight: FontWeight.w300,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
