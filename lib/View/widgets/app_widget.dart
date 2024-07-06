import 'package:flutter/material.dart';

class AppWidget {
  static Widget greyChair() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Container(
        decoration: BoxDecoration(color: Colors.grey[800]),
        child: const Icon(Icons.chair_outlined),
      ),
    );
  }

  static Widget redChair() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red[900],
        ),
        child: const Icon(Icons.chair_outlined),
      ),
    );
  }

  static Widget whiteChair() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: const Icon(Icons.chair_outlined),
      ),
    );
  }

  static Widget yellowChair() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Container(
        decoration: const BoxDecoration(color: Colors.yellow),
        child: const Icon(Icons.chair_outlined),
      ),
    );
  }

  static Widget genresFormat(List<String> genres, Color color) {
    Widget dot = Container(
      width: 6,
      height: 6,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(50)),
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(genres.length, (index) {
        if (index < genres.length - 1) {
          return Row(
            children: <Widget>[
              Text(
                genres[index],
                style: TextStyle(color: color, fontSize: 12),
              ),
              dot
            ],
          );
        } else {
          return Text(
            genres[index],
            style: TextStyle(color: color, fontSize: 12),
          );
        }
      }),
    );
  }

  static Widget starRating(double rating) {
    Widget star(bool fill) {
      return Container(
        child: Icon(
          Icons.star,
          size: 18,
          color: fill ? Colors.yellow : Colors.grey,
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        if (index < (rating / 2).round()) {
          return star(true);
        } else
          return star(false);
      }),
    );
  }
}
