import 'package:countify/screens/calculate_screen.dart';
import 'package:flutter/material.dart';

class StatsCharacterWidget extends StatelessWidget {
  final List<StatsCharacter> stats;

  const StatsCharacterWidget({super.key, required this.stats});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1.3,
      ),
      itemBuilder: (BuildContext context, int index) {
        final statItem = stats[index];

        return Card(
          elevation: 5.0,
          color: Color(0xFF1E1E1E),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color: Color(0xFF2C2C2C), width: 1.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(statItem.iconStats, color: Colors.white, size: 26),
                SizedBox(height: 6.0),
                Text(
                  statItem.titleStats,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18.0,
                    color: Color(0xFFB3B3B3),
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  statItem.valueStats.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 28.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: stats.length,
    );
  }
}
