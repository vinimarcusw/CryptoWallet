import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../widgets/details_page_body.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back,
              color: Color.fromRGBO(47, 47, 51, 1)),
        ),
        backgroundColor: Colors.white,
        title: Text(
          AppLocalizations.of(context)!.detailsAppBarTitle,
          style: const TextStyle(
              color: Color.fromRGBO(47, 47, 51, 1),
              fontWeight: FontWeight.w700,
              fontSize: 21),
        ),
      ),
      body: const DetailsPageBody(),
    );
  }
}
