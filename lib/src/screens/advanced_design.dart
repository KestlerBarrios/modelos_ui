import 'package:flutter/material.dart';
import 'package:modelos_ui/src/widgets/Background.dart';
import 'package:modelos_ui/src/widgets/card_table.dart';
import 'package:modelos_ui/src/widgets/custom_button_navigation.dart';
import 'package:modelos_ui/src/widgets/page_title.dart';

class AdvancedDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: CustomButtomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PageTitle(),
          CardTable(),
        ],
      ),
    );
  }
}
