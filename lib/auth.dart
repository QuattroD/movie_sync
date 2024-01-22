import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.03)),
            const Icon(
              Icons.lock,
              size: 95,
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.01)),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: const Text(
                'Добро пожаловать обратно, мы по вам скучали!',
                style: TextStyle(color: Colors.black, fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.01)),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.90,
              child: TextField(
                controller: email,
                decoration: const InputDecoration(
                    hintText: 'Введите email',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.grey))),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.01)),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.90,
              child: TextField(
                obscureText: true,
                controller: password,
                decoration: const InputDecoration(
                    hintText: 'Введите пароль',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.grey))),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.005)),
            Container(
                alignment: const Alignment(0.85, 0),
                child: GestureDetector(
                  onTap: () {},
                  child: const Text('Забыли пароль?'),
                )),
            Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.01)),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.08,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Войти',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  )),
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.01)),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 1,
                    width: 100,
                    decoration: BoxDecoration(color: Colors.grey.shade400),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.01)),
                  const Text(
                    'Или продолжить с',
                    style: TextStyle(fontSize: 15),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.03)),
                  Container(
                    height: 1,
                    width: 100,
                    decoration: BoxDecoration(color: Colors.grey.shade400),
                  ),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.02)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: const BoxDecoration(color: Colors.grey),
                  child: const Text('google'),
                ),
                Container(
                  width: 90,
                  height: 90,
                  decoration: const BoxDecoration(color: Colors.grey),
                  child: const Text('vk'),
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.02)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Нет аккаунт? ',
                  style: TextStyle(color: Colors.grey),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/reg');
                  },
                  child: const Text(
                    'Зарегистрироваться сейчас?',
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
