import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'RNDR.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<void> insertRestaurant(Restaurant restaurant) async {
  final db = await database;
  await db.insert(
    'restaurants',
    restaurant.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<Restaurant>> restaurants() async {
  final Database db = await database;

  final List<Map<String, dynamic>> maps = await db.query('maps');

  return List.generate(maps.length, (i) {
    return Restaurant(
      id: maps[i]['id'],
      name: maps[i]['name'],
      address: maps[i]['address'],
      image: maps[i]['image'],
    );
  });
}

Future<void> updateRestaurant(Restaurant restaurant) async {
  final db = await database;

  await db.update(
    'restaurants',
    restaurant.toMap(),
    // It ensure the matching id of a Book.
    where: "id = ?",
    whereArgs: [restaurant.id],
  );
}

Future<void> deleteRestaurant(int id) async {
  final db = await database;

  // This function removes books from the database.
  await db.delete(
    'restaurants',
    where: "id = ?",
    whereArgs: [id],
  );
}

class Restaurant {
  final int id;
  final String name;
  final String address;
  final String image;

  Restaurant(
      {required this.id,
      required this.name,
      required this.address,
      required this.image});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'address': address,
      'image': image,
    };
  }

  // Implement toString to make it easier to see information when using the print statement.
  @override
  String toString() {
    return 'Restaurant{id: $id, name: $name, address: $address, image: $image}';
  }
}
