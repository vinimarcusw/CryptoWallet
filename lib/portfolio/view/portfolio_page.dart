import 'package:flutter/material.dart';

import '../widgets/body_portfolio_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const BodyPortfolioPage(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        currentIndex: selectedIndex,
        selectedItemColor: const Color.fromRGBO(224, 43, 87, 1),
        items: [
          BottomNavigationBarItem(
            label: AppLocalizations.of(context)!.bottomNavBarPortfolio,
            icon: const ImageIcon(
              AssetImage("assets/icons/warren-icon.png"),
            ),
          ),
          BottomNavigationBarItem(
            label: AppLocalizations.of(context)!.bottomNavBarMovements,
            icon: const ImageIcon(
              AssetImage("assets/icons/movement-icon.png"),
            ),
          ),
        ],
      ),
    );
  }
}
