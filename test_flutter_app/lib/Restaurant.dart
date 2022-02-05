import 'dart:async';

import 'package:flutter/widgets.dart';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';



class Restaurant
{
  final int id;
  final String name;
  final String address;
  final String image;

  Restaurant({required this.id, required this.name, required this.address, required this.image})

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
    return 'Dog{id: $id, name: $name, age: $age}';
  }
}
void main() async {
WidgetsFlutterBinding.ensureInitialized();

final Future<Database> database = openDatabase(  
  join(await getDatabasesPath(), 'restaurant_database.db'),  
  // When you create a database, it also needs to create a table to store books.  
  onCreate: (db, version) {  
    // Run the CREATE TABLE statement.  
    return db.execute(  
      "CREATE TABLE books(id INTEGER PRIMARY KEY, name TEXT, address TEXT, image TEXT)",  
    );  
  },  
  // Set the version to perform database upgrades and downgrades.  
  version: 1,  
);  



Future<void> insertRestaurant(Restaurant restaurant) async {  
  final  db = await database;  
  await db.insert(  
    'restaurants',  
    restaurant.toMap(),  
    conflictAlgorithm: ConflictAlgorithm.replace,  
  );  
}  
  
// Create a Book and add it to the books table.  
var r1 = Restaurant(  
  id: 0,
  name: 'Rudy',  
  address: '619 College St',  
  image: 'https://cdn.discordapp.com/attachments/930235747036958760/939639337673449512/o.png',  
);  
  
await insertRestaurant(r1);  


Future<List<Restaurant>> restaurants() async {  
  final Database db = await database;  
   
  final List<Map<String, dynamic>> maps = await db.query('maps');  
  
  return List.generate(maps.length, (i) {  
    return Restaurant(  
      id: maps[i]['id']
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
}