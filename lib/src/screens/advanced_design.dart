import 'package:flutter/material.dart';
import 'package:modelos_ui/src/widgets/Background.dart';
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
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(),
        ],
      ),
    );
  }
}
