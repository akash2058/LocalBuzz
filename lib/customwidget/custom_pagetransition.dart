import 'package:flutter/material.dart';

class SplashRoute extends PageRouteBuilder {
  final Widget child;

  SplashRoute({required this.child})
      : super(
          transitionDuration: const Duration(milliseconds: 900),
          pageBuilder: (context, animation, secondaryAnimation) => child,
        );

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(begin: const Offset(2, 0), end: Offset.zero)
          .animate(animation),
      child: child,
    );
  }
}

class CustomPageRoute extends PageRouteBuilder {
  final Widget child;

  CustomPageRoute({required this.child})
      : super(
          transitionDuration: const Duration(milliseconds: 200),
          pageBuilder: (context, animation, secondaryAnimation) => child,
        );

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(begin: const Offset(2, 0), end: Offset.zero)
          .animate(animation),
      child: child,
    );
  }
}
