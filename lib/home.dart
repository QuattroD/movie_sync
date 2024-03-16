import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:movie_sync/drawer.dart';
import 'package:http/http.dart' as http;
import 'package:movie_sync/movie_card.dart';

int _selectedIndex = 0;

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
    List<Map<String, dynamic>> dataFilm = jsonData.cast<Map<String, dynamic>>();
    return dataFilm;
  } else {
    throw Exception('Не удалось получить популярные фильмы');
  }
}

Future<List<Map<String, dynamic>>> getPopularSeries() async {
  final response =
      await http.get(Uri.parse('https://kinobox.tv/api/popular/series'));
  if (response.statusCode == 200) {
    List<dynamic> jsonData = json.decode(response.body);
    List<Map<String, dynamic>> dataSeries = jsonData.cast<Map<String, dynamic>>();
    return dataSeries;
  } else {
    throw Exception('Не удалось получить популярные сериалы');
  }
}

List<Map<String, dynamic>> popularFilms = List.empty();
List<Map<String, dynamic>> popularSeries = List.empty();

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    getPopularFilms().then((dataFilm) {
      setState(() {
        popularFilms = dataFilm;
      });
    });
    getPopularSeries().then((dataSeries) {
      setState(() {
        popularSeries = dataSeries;
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
              centerTitle: true,
              title: Center(
                child: ToggleButtons(
                  isSelected: [_selectedIndex == 0, _selectedIndex == 1],
                  onPressed: (int index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  borderRadius: BorderRadius.circular(30.0),
                  borderWidth: 1.0,
                  selectedBorderColor: Colors.grey,
                  borderColor: Colors.grey,
                  fillColor: Colors.black,
                  selectedColor: Theme.of(context).colorScheme.secondary,
                  color: Theme.of(context).colorScheme.primary,
                  children: const [
                    Text(' Популярные фильмы '),
                    Text(' Популярные сериалы '),
                  ],
                ),
              ),
            ),
            drawer: const DrawerWidget(),
            body: _selectedIndex == 0
                ? GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
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
                  )
                : GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                    ),
                    itemCount: popularSeries.length,
                    itemBuilder: (context, index) {
                      Map<String, dynamic> series = popularSeries[index];
                      return GestureDetector(
                        onTap: () {
                          print('id: ${series['id']}');
                        },
                        child: MovieCard(
                            primaryTitle: series['primaryTitle'],
                            year: series['year'],
                            rating: series['rating'],
                            posterUrl: series['posterUrl']),
                      );
                    },
                  )));
  }
}
