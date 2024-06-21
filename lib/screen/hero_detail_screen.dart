import 'package:flutter/material.dart';
import 'package:flutter_animation/person_model.dart';

class HeroDetailsScreen extends StatefulWidget {
  final Person? person;
  const HeroDetailsScreen({super.key, this.person});

  @override
  State<HeroDetailsScreen> createState() => _HeroDetailsScreenState();
}

class _HeroDetailsScreenState extends State<HeroDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFD1C4E9),
        title: Hero(
          tag: widget.person?.name ?? '',
            child: Text(widget.person?.emoji ?? '', style:const  TextStyle(fontSize: 50),)),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Text('Person Name: ${widget.person?.name ?? ''} '),
            const SizedBox(height: 10,),
            Text('Person Age: ${widget.person?.age ?? ''} '),

          ],
        ),
      ),
    );
  }
}
