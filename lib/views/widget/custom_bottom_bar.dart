import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  BottomNavigationBar build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index)
      {

      },
      currentIndex: 0,
      items: const [
        BottomNavigationBarItem(
          label: 'Business',
          icon: Icon(Icons.business_sharp),
        ),
        BottomNavigationBarItem(
          label: 'Economy',
          icon: Icon(Icons.monetization_on_rounded),
        ),
        BottomNavigationBarItem(
          label: 'Sports',
          icon: Icon(Icons.sports_basketball_rounded),
        ),
      ],
    );
  }
}
