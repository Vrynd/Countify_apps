import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:countify/widget/text_field.dart';
import 'package:countify/widget/stats_character.dart';

class StatsCharacter {
  final String titleStats;
  int valueStats;
  final IconData iconStats;

  StatsCharacter({
    required this.titleStats,
    this.valueStats = 0,
    required this.iconStats,
  });
}

class CalculateScreen extends StatefulWidget {
  const CalculateScreen({super.key});

  @override
  State<CalculateScreen> createState() => _CalculateScreenState();
}

class _CalculateScreenState extends State<CalculateScreen> {
  List<StatsCharacter> stats = [
    StatsCharacter(titleStats: 'Karakter', iconStats: Icons.text_fields),
    StatsCharacter(titleStats: 'Kata', iconStats: Icons.article_outlined),
    StatsCharacter(titleStats: 'Paragraf', iconStats: Icons.subject),
    StatsCharacter(
      titleStats: 'Kalimat',
      iconStats: Icons.format_list_bulleted,
    ),
    StatsCharacter(titleStats: 'Tanpa Spasi', iconStats: Icons.space_bar),
    StatsCharacter(titleStats: 'Kata Unik', iconStats: Icons.auto_fix_high),
  ];

  void updateStats(String textFields) {
    setState(() {
      final words = textFields
          .trim()
          .split(' ')
          .where((word) => word.isNotEmpty)
          .toList();

      for (var statsItem in stats) {
        switch (statsItem.titleStats) {
          case 'Karakter':
            statsItem.valueStats = textFields.length;
            break;
          case 'Tanpa Spasi':
            statsItem.valueStats = textFields.replaceAll(' ', '').length;
            break;
          case 'Kata':
            statsItem.valueStats = words.length;
            break;
          case 'Kata Unik':
            statsItem.valueStats = words.toSet().length;
            break;
          case 'Paragraf':
            statsItem.valueStats = textFields
                .trim()
                .split('\n')
                .where((paragraph) => paragraph.isNotEmpty)
                .length;
            break;
          case 'Kalimat':
            statsItem.valueStats = textFields
                .trim()
                .split('.')
                .where((sentence) => sentence.isNotEmpty)
                .length;
            break;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.grey[850],
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          CupertinoIcons.back,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: Text(
                        'Hitung Karakter',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                TextFieldWidget(onTextChange: updateStats),
                SizedBox(height: 15),
                StatsCharacterWidget(stats: stats),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
