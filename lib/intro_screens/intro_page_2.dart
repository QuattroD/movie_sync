import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatefulWidget {
  const IntroPage2({super.key});

  @override
  State<IntroPage2> createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Center(
        child: Column(children: [
          Lottie.asset('assets/second_page.json', height: 350),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.95,
            child: const Text('Совместный просмотр в два раза веселее!',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: const Text(
              'Пригласите друзей в наш кинозал и наслаждайтесь вместе любимыми фильмами и сериалами. Создайте свой плейлист и делитесь впечатлениями в чате. Новые эмоции ждут вас!',
              style: TextStyle(color: Colors.white, fontSize: 22),
              textAlign: TextAlign.center,
            ),
          )
        ]),
      ),
    );
  }
}
