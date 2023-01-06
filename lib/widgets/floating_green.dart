import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';

class FloatingGreen extends StatefulWidget {
  const FloatingGreen({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingGreen();
  }
}

class _FloatingGreen extends State<FloatingGreen> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "FAB",
      child: Icon(pressed ? Icons.favorite : Icons.favorite_border),
    );
  }

  void onPressed() {
    String msg;

    setState(() {
      pressed = !pressed;
    });

    if (pressed) msg = "Agregado a favoritos!";
    else msg = "Eliminado de favoritos!";

    print(msg);

    Flushbar(
      message: msg,
      duration: Duration(seconds: 1),
      flushbarPosition: FlushbarPosition.BOTTOM,
      barBlur: 20,
      backgroundColor: Colors.black.withOpacity(0.5),
      borderRadius: BorderRadius.zero,
    ).show(context);

  }

}
