import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'staggered_screen.dart';

class BlankScreen extends StatelessWidget {
  const BlankScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            PageRouteBuilder(
              transitionDuration: Duration(seconds: 1),
              reverseTransitionDuration: Duration(seconds: 1),
              pageBuilder: (context, animation, secondaryAnimation) {
                return ListenableProvider(
                  create: (context) => animation,
                  child: StaggeredScreen(),
                );
              },
            ),
          );
        },
        child: Icon(
          Icons.arrow_forward,
        ),
      ),
    );
  }
}
