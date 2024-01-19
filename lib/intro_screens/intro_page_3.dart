import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatefulWidget {
  const IntroPage3({super.key});

  @override
  State<IntroPage3> createState() => _IntroPage3State();
}

class _IntroPage3State extends State<IntroPage3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: Column(children: [
          Lottie.asset('assets/third_page.json', height: 350),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.95,
            child: const Text('Создайте свою кинематографическую вселенную!',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: const Text(
              'MovieSync — место, где вы становитесь режиссером своих кинопереживаний. Собирайте свой уникальный кинопрофиль, добавляйте любимые фильмы и сериалы, делитесь своим вкусом с друзьями. Ваша кинематографическая вселенная начинается прямо сейчас!',
              style: TextStyle(color: Colors.white, fontSize: 22),
              textAlign: TextAlign.center,
            ),
          )
        ]),
      ),
    );
  }
}
