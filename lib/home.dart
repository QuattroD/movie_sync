import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:movie_sync/drawer.dart';
import 'package:http/http.dart' as http;
import 'package:movie_sync/movie_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

Future<List<Map<String, dynamic>>> getPopularFilms() async {
  final response =
      await http.get(Uri.parse('https://kinobox.tv/api/popular/films'));

  if (response.statusCode == 200) {
    List<dynamic> jsonData = json.decode(response.body);
    List<Map<String, dynamic>> data = jsonData.cast<Map<String, dynamic>>();
    return data;
  } else {
    throw Exception('Не удалось получить популярные фильмы');
  }
}

List<Map<String, dynamic>> popularFilms = List.empty();

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    getPopularFilms().then((data) {
      setState(() {
        popularFilms = data;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Theme.of(context).colorScheme.background,
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.secondary,
            ),
            drawer: const DrawerWidget(),
            body: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: popularFilms.length,
              itemBuilder: (context, index) {
                Map<String, dynamic> movie = popularFilms[index];
                return GestureDetector(
                  onTap: () {
                    print('id: ${movie['id']}');
                  },
                  child: MovieCard(
                      primaryTitle: movie['primaryTitle'],
                      year: movie['year'],
                      rating: movie['rating'],
                      posterUrl: movie['posterUrl']),
                );
              }, 
            )));
  }
}
