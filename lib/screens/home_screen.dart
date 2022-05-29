import 'package:flutter/material.dart';
import 'package:multimedia_app/screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Center(
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                height: 300,
                width: 300,
                margin: const EdgeInsets.fromLTRB(50, 450, 150, 80),
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.purple,
                        offset: Offset(0, 50),
                        blurRadius: 100,
                        spreadRadius: 0.1),
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
              ),
              Container(
                height: 300,
                width: 300,
                margin: const EdgeInsets.fromLTRB(180, 400, 150, 120),
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.yellow,
                        offset: Offset(0, 50),
                        blurRadius: 100,
                        spreadRadius: 0.1),
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    children: [
                      Container(
                        height: size.height * 0.22,
                        width: size.width * 0.3,
                        decoration: const BoxDecoration(
                          color: Colors.amber,
                          image: DecorationImage(
                              image: AssetImage('assets/images/womanstick.png'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Container(
                        height: size.height * 0.22,
                        width: size.width * 0.3,
                        decoration: const BoxDecoration(
                          color: Colors.amber,
                          image: DecorationImage(
                              image: AssetImage('assets/images/redman.png'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: size.height * 0.27,
                        width: size.width * 0.30,
                        decoration: const BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          image: DecorationImage(
                            alignment: Alignment.center,
                            image: AssetImage('assets/images/greenline.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Container(
                        height: size.height * 0.27,
                        width: size.width * 0.30,
                        decoration: const BoxDecoration(
                          color: Colors.amber,
                          image: DecorationImage(
                              image: AssetImage('assets/images/womentwo.png'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: size.height * 0.22,
                        width: size.width * 0.3,
                        decoration: const BoxDecoration(
                          color: Colors.amber,
                          image: DecorationImage(
                            image: AssetImage('assets/images/redman.png'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Container(
                        height: size.height * 0.22,
                        width: size.width * 0.3,
                        decoration: const BoxDecoration(
                          color: Colors.amber,
                          image: DecorationImage(
                            image: AssetImage('assets/images/womanstick.png'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(70, 480, 70, 20),
                //    color: Colors.greenAccent,
                child: Column(
                  children: [
                    Text(
                      "Glad to see you!",
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: const Color(0xFFFAFAFA),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    const Text(
                      "Watch, create and have fun",
                      style: TextStyle(color: Colors.white70),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: size.height * 0.09,
                          width: size.width * 0.6,
                          decoration: const BoxDecoration(
                            color: Color(0xFF51454E),
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 160),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.double_arrow,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 5,
                          top: 4,
                          child: Container(
                            height: size.height * 0.08,
                            width: size.width * 0.33,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFEB32),
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 80),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ProfileScreen(),
                                    ),
                                  );
                                },
                                icon: const Icon(
                                  Icons.arrow_forward_outlined,
                                  color: Colors.black,
                                  size: 30,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
