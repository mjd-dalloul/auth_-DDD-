import 'package:flutter/material.dart';

class FirstWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * .6, size.height - 79);
    var firstControlPoint = Offset(size.width * .25, size.height - 110);
    path.quadraticBezierTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      firstEndPoint.dx,
      firstEndPoint.dy,
    );
    var secondEndPoint = Offset(size.width, size.height - 60);
    var secondControlPoint = Offset(size.width * .84, size.height - 50);
    path.quadraticBezierTo(
      secondControlPoint.dx,
      secondControlPoint.dy,
      secondEndPoint.dx,
      secondEndPoint.dy,
    );
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class SecondWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * .7, size.height - 40);
    var firstControlPoint = Offset(size.width * .25, size.height);
    path.quadraticBezierTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      firstEndPoint.dx,
      firstEndPoint.dy,
    );
    var secondEndPoint = Offset(size.width, size.height - 45);
    var secondControlPoint = Offset(size.width * .84, size.height - 50);
    path.quadraticBezierTo(
      secondControlPoint.dx,
      secondControlPoint.dy,
      secondEndPoint.dx,
      secondEndPoint.dy,
    );
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class ThirdWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * .6, size.height - 65);
    var firstControlPoint = Offset(size.width * .25, size.height - 110);
    path.quadraticBezierTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      firstEndPoint.dx,
      firstEndPoint.dy,
    );
    var secondEndPoint = Offset(size.width, size.height - 40);
    var secondControlPoint = Offset(size.width * .84, size.height - 30);
    path.quadraticBezierTo(
      secondControlPoint.dx,
      secondControlPoint.dy,
      secondEndPoint.dx,
      secondEndPoint.dy,
    );
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class AuthPageHeader extends StatelessWidget {
  final String title;

  const AuthPageHeader({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: SecondWaveClipper(),
          child: Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Color(0x22ff3a5a), Color(0x22ffe494d)],
            )),
          ),
        ),
        ClipPath(
          clipper: ThirdWaveClipper(),
          child: Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Color(0x44ff3a5a), Color(0x44ffe494d)],
            )),
          ),
        ),
        ClipPath(
          clipper: FirstWaveClipper(),
          child: Container(
            child: Center(
              child: Text(
                '$title',
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: Colors.white),
              ),
            ),
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Color(0xffff3a5a), Color(0xfffe494d)],
            )),
          ),
        ),
      ],
    );
  }
}
class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key key,
    @required this.label,
    @required this.icon,
    @required this.obscureText,
    @required this.validator,
    @required this.onChanged,
    this.isNumber = false,
  }) : super(key: key);
  final String label;
  final IconData icon;
  final bool obscureText;
  final bool isNumber;
  final String Function(String _) validator;
  final void Function(String _) onChanged;
  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isPassword;

  @override
  void initState() {
    isPassword = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.redAccent,
      validator: widget.validator,
      onChanged: widget.onChanged,
      obscureText: isPassword,
      keyboardType: widget.isNumber ? TextInputType.number : TextInputType.text,
      decoration: InputDecoration(
          labelText: widget.label,
          prefixIcon: InkWell(
              onTap: widget.obscureText
                  ? () => setState(() => isPassword = !isPassword)
                  : null,
              child: Icon(widget.icon, color: Colors.redAccent,))),
    );
  }
}