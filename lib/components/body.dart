import 'package:flutter/material.dart';
import 'package:multimedia_app/components/first_column.dart';
import 'package:multimedia_app/components/second_column.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300,
          width: 300,
          margin: const EdgeInsets.fromLTRB(0, 40, 0, 530),
          decoration: const BoxDecoration(
            color: Colors.transparent,
            boxShadow: [
              BoxShadow(
                  color: Colors.purple,
                  offset: Offset(0, 50),
                  blurRadius: 100,
                  spreadRadius: 1),
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
        ),
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FirstColumn(),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Video",
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                  ),
                  Text(
                    "Photo",
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.grey,
                        ),
                  ),
                  Text(
                    "Reels",
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.grey,
                        ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const SecondColumn(),
            ],
          ),
        ),
      ],
    );
  }
}
