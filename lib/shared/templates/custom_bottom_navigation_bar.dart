import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../portfolio/controller/index_provider.dart';
import '../utils/app_routes.dart';

class CustomBottomNavigationBar extends StatefulHookConsumerWidget {
  const CustomBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState
    extends ConsumerState<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    void onItemTapped(int index) {
      switch (index) {
        case 0:
          ref.read(indexProvider.notifier).state = index;
          Navigator.of(context).pushReplacement(
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  AppRoutes.routes['/portfolio']!,
            ),
          );
          break;
        case 1:
          ref.read(indexProvider.notifier).state = index;
          Navigator.of(context).pushReplacement(
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  AppRoutes.routes['/movements']!,
            ),
          );
          break;
      }
    }

    return BottomNavigationBar(
      onTap: onItemTapped,
      currentIndex: ref.watch(indexProvider),
      selectedItemColor: const Color.fromRGBO(224, 43, 87, 1),
      items: [
        BottomNavigationBarItem(
          label: AppLocalizations.of(context)!.bottomNavBarPortfolio,
          icon: const ImageIcon(
            AssetImage("assets/icons/warren-icon.png"),
            size: 22,
          ),
        ),
        BottomNavigationBarItem(
          label: AppLocalizations.of(context)!.bottomNavBarMovements,
          icon: const ImageIcon(
            AssetImage("assets/icons/movement-icon.png"),
            size: 22,
          ),
        ),
      ],
    );
  }
}
