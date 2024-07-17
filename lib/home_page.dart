import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Xylophone',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
      ),
      body: const Column(
        children: [
          ColoredBoxButton(
            nota: 'do',
            color: Color(0xffEF443A),
          ),
          ColoredBoxButton(
            nota: 're',
            color: Color(0xffF99700),
          ),
          ColoredBoxButton(
            nota: 'mi',
            color: Color(0xffFFE93B),
          ),
          ColoredBoxButton(
            nota: 'fa',
            color: Color(0xff4CB050),
          ),
          ColoredBoxButton(
            nota: 'sol',
            color: Color(0xff2E968C),
          ),
          ColoredBoxButton(
            nota: 'lya',
            color: Color(0xff2996F5),
          ),
          ColoredBoxButton(
            nota: 'si',
            color: Color(0xff9B28B1),
          ),
        ],
      ),
      bottomNavigationBar: const SizedBox(
        height: 50,
      ),
    );
  }
}

class ColoredBoxButton extends StatelessWidget {
  const ColoredBoxButton({
    required this.nota,
    required this.color,
    super.key,
  });

  final Color color;
  final String nota;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          AudioPlayer().play(
            AssetSource('$nota.wav'),
          );
        },
        child: Container(
          height: 91,
          width: double.infinity,
          color: color,
        ),
      ),
    );
  }
}
