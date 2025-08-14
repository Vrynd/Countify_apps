import 'package:flutter/material.dart';
import 'package:countify/screens/calculate_screen.dart';

class CalculateStateWidget extends StatelessWidget {
  const CalculateStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CalculateScreen();
            },
          ),
        );
      },
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF2980B9), // biru gelap
              Color(0xFF6DD5FA), // biru muda
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(25.0),
          boxShadow: [
            BoxShadow(
              color: Color(0x1A000000), // bayangan hitam transparan
              blurRadius: 10, // blur halus
              offset: Offset(0, 5), // bayangan sedikit ke bawah
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 23.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: CircleAvatar(
                  radius: 26,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.text_fields_rounded,
                    size: 36.0,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hitung Karakter',
                    style: TextStyle(
                      fontSize: 26.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // SizedBox(height: 2.0),
                  Text(
                    'Cek jumlah karakter dan kata tanpa ribet. ',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
