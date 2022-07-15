import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('custom button'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              MyCustomButton(
                buttonText: 'custom button 1',
                onTap: () {},
                buttonColor: Colors.pinkAccent,
                textColor: Colors.yellowAccent,
                borderRadius: 25.0,
              ),
              const SizedBox(
                height: 20,
              ),
              MyCustomButton(
                buttonText: 'custom button 1',
                onTap: () {},
                buttonColor: Colors.yellowAccent,
                textColor: Colors.greenAccent,
                borderRadius: 0.0,
              ),
              const SizedBox(
                height: 20,
              ),
              MyCustomButton(
                buttonText: 'custom button 1',
                onTap: () {},
                textColor: Colors.greenAccent,
                borderRadius: 0.0,
                borderColor: Colors.black,
              ),
              const SizedBox(
                height: 20,
              ),
              MyHomePage(
                textColor: Colors.white,
                backgroundColor: Colors.black,
                borderColor: Colors.yellow,
                text: "Kajal",
                width: 100,
                height: 40,
                onTap: () {
                  print('bansal');
                },
              ),
              const SizedBox(
                height: 20,
              ),
              MyHomePage(
                textColor: Colors.pinkAccent,
                backgroundColor: Colors.amberAccent,
                borderColor: Colors.greenAccent,
                text: "Kajal",
                width: 500,
                height: 50,
                isIcon: true,
                icon: Icons.music_video,
                onTap: () {
                  print('kajal');
                },
                // icon: icon,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCustomButton extends StatelessWidget {
  MyCustomButton(
      {Key? key,
      this.textColor,
      this.borderRadius,
      this.buttonColor,
      this.borderColor,
      required this.buttonText,
      required this.onTap})
      : super(key: key);
  VoidCallback onTap;
  Color? buttonColor;
  double? borderRadius;
  Color? textColor;
  Color? borderColor;
  String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: buttonColor ?? Colors.white,
        border: Border.all(color: borderColor ?? Colors.white),
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                  color: textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;
  final String text;
  final IconData? icon;
  double height;
  double width;
  final bool? isIcon;
  VoidCallback onTap;

  MyHomePage({
    Key? key,
    required this.textColor,
    required this.backgroundColor,
    required this.borderColor,
    required this.text,
    this.icon,
    required this.onTap,
    this.isIcon = false,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: borderColor,
                width: 1.0,
              )),
          child: Center(
            child: isIcon == false
                ? Text(
                    text,
                    style: TextStyle(
                      color: textColor,
                    ),
                  )
                : Icon(
                    icon,
                    color: textColor,
                  ),
          ),
        ),
      ),
    );
  }
}
