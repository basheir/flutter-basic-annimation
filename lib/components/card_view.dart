import 'package:flutter/material.dart';
import 'package:flutter_annimations/components/card_view_shadow.dart';
import 'package:flutter_annimations/utitilities/app_colors.dart';

class CardView extends StatefulWidget {
  const CardView({super.key});

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customLightGray,
      body: Center(
        child: SizedBox(
            width: 330,
            height: 570,
            child: Stack(
              children: [
                const CardViewShadow(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    gradient: const LinearGradient(
                      colors: [
                        customDarkBlue,
                        customBlueLight,
                        customMediumBlue,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
