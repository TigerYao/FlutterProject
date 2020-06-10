import 'package:flutter/material.dart';

class CustomPageRoute extends PageRouteBuilder {
  final Widget animView;

  CustomPageRoute(this.animView)
      : super(
            transitionDuration: Duration(milliseconds: 500),
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return animView;
            },
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              return SlideTransition(
                child: child,
                position: Tween<Offset>(
                        begin: Offset(0.0, 1.0), end: Offset(0.0, 0.0))
                    .animate(CurvedAnimation(
                        parent: animation, curve: Curves.easeInToLinear)),
              );
            });
}
