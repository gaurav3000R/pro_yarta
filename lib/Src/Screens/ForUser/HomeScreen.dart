import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 4.0,
        title: const Text(
          "Home",
        ),
      ),
      body: InkWell(
          onTap: () {},
          child: Stack(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      FloatingActionButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'login');
                        },
                        child: Text('login'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'FrogotPassScreen');
                        },
                        child: Text('FrogotPassScreen'),
                      )
                    ],
                  )
                ],
              ),
              const Center(
                child: Text(
                  'counter',
                  style: TextStyle(
                    fontSize: 60.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
