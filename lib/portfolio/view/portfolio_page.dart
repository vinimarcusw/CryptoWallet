import 'package:flutter/material.dart';

import '../../shared/templates/custom_bottom_navigation_bar.dart';
import '../widgets/body_portfolio_page.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyPortfolioPage(),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

