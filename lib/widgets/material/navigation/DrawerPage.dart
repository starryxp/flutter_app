import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      body: Center(
        child: Text('body'),
      ),
      endDrawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Center(
                child: Text('Drawer title'),
              ),
              duration: Duration(microseconds: 3),
              curve: Curves.easeInOut,
            ),
            Container(
              child: Text('Drawer body'),
            )
          ],
        ),
      ),
    );
  }
}
