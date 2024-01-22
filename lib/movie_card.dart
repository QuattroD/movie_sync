import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final String primaryTitle;
  final int year;
  final double? rating;
  final String posterUrl;
  const MovieCard({
    super.key,
    required this.primaryTitle,
    required this.year,
    required this.rating,
    required this.posterUrl,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Colors.grey.shade700;
    if (rating != null) {
      backgroundColor = rating! > 7.0 ? Colors.green : Colors.grey.shade700;
    }
    return Card(
      elevation: 5,
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Image.network(
            posterUrl,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Colors.black.withOpacity(0.8), Colors.transparent],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.8),
                          borderRadius: const BorderRadius.all(Radius.circular(5))),
                      child: Text(
                        '$year',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                           color: backgroundColor,
                          borderRadius: const BorderRadius.all(Radius.circular(5))),
                      child: Row(
                        children: [
                          rating != null
                              ? Text(
                                  rating!.toStringAsFixed(1),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                  ),
                                )
                              : const Text(
                                  '—',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                  ),
                                )
                        ],
                      ),
                    ),
                  ],
                ),
                Text(
                  primaryTitle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
