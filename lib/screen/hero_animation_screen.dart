import 'package:flutter/material.dart';
import 'package:flutter_animation/person_model.dart';
import 'package:flutter_animation/screen/hero_detail_screen.dart';

class HeroAnimationScreen extends StatefulWidget {
  const HeroAnimationScreen({super.key});

  @override
  State<HeroAnimationScreen> createState() => _HeroAnimationScreenState();
}

final person = [
  Person(name: 'Ankit', age: 33, emoji: '🙋'),
  Person(name: 'Rahul', age: 34, emoji: '👨🏻‍💼'),
  Person(name: 'Anil', age: 34, emoji: '🙋🏻'),
  Person(name: 'Akash', age: 29, emoji: '🧍'),
  Person(name: 'Bhavya', age: 28, emoji: '👩🏻'),
  Person(name: 'Kajish', age: 2, emoji: '🤵🏻'),
];

class _HeroAnimationScreenState extends State<HeroAnimationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xFFD1C4E9),
        title: const Text('Hero Animation'),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: person.length,
          itemBuilder: (BuildContext context, int index) {
            final user = person[index];

            return ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HeroDetailsScreen(person: user),
                  ),
                );
              },
              trailing: const Icon(Icons.navigate_next_sharp),
              leading: Hero(
                tag: user.name,
                child: Text(
                  user.emoji,
                  style: const TextStyle(fontSize: 30),
                ),
              ),
              title: Text(user.name),
              subtitle: Text(user.age.toString()),
            );
          }),
    );
  }
}
