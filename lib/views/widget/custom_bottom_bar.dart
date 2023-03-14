import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  BottomNavigationBar build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index)
      {

      },
      currentIndex: 1,
      items: const [
        BottomNavigationBarItem(
          label: 'label',
          icon: Icon(Icons.import_contacts_sharp),
        ),
        BottomNavigationBarItem(
          label: 'label',
          icon: Icon(Icons.import_contacts_sharp),
        ),
        BottomNavigationBarItem(
          label: 'label',
          icon: Icon(Icons.import_contacts_sharp),
        ),
      ],
    );
  }
}
