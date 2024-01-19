import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatefulWidget {
  const IntroPage1({super.key});

  @override
  State<IntroPage1> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Column(children: [
          Lottie.asset('assets/first_page.json', height: 350),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.95,
            child: const Text('Добро пожаловать в MovieSync!',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: const Text(
              'Откройте для себя новый уровень онлайн-развлечений с нашим приложением для совместного просмотра фильмов и сериалов. \nПриятного вам времени в нашем кинозале!',
              style: TextStyle(color: Colors.white, fontSize: 22),
              textAlign: TextAlign.center,
            ),
          )
        ]),
      ),
    );
  }
}
