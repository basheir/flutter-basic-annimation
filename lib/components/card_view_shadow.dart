import 'package:flutter/cupertino.dart';

import '../utitilities/app_colors.dart';

class CardViewShadow extends StatelessWidget {
  const CardViewShadow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        gradient: const LinearGradient(
          colors: [customBlueLight, customMediumBlue],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        boxShadow: [
          const BoxShadow(
            color: customDarkBlue,
            offset: Offset(0, 12),
          ),
          BoxShadow(
              color: customBlueLight.withOpacity(0.85),
              offset: const Offset(0, 3))
        ],
      ),
    );
  }
}
