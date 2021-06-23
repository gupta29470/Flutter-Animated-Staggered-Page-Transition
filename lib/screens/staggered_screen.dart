import 'package:flutter/material.dart';

import '../widgets/sliding_container_widget.dart';

class StaggeredScreen extends StatelessWidget {
  StaggeredScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SlidingContainer(
                beginOffset_1: 1,
                beginOffset_2: 0,
                containerColor: Colors.black54,
                intervalBegin: 0,
                intervalEnd: 0.5),
            SlidingContainer(
              beginOffset_1: -1,
              beginOffset_2: 0,
              containerColor: Colors.blue,
              intervalBegin: 0.5,
              intervalEnd: 1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).pop();
        },
        label: Text("Navigate Back"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

