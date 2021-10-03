// Created by Muhamad Fauzi Ridwan on 02/10/21.

import 'package:flutter/material.dart';
import 'package:ordo_test/core/bases/widgets/custom/_custom.dart';
import 'package:ordo_test/core/screen/_screen.dart';
import 'package:ordo_test/core/theme/_theme.dart';

import 'core/bases/states/_states.dart';
import 'core/bases/widgets/button/_button.dart';
import 'core/bases/widgets/core/_base.dart';
import 'core/bases/widgets/spacer/_spacer.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends BaseStateful<MainPage> {
  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return null;
  }

  @override
  ScaffoldAttribute buildAttribute() {
    return ScaffoldAttribute();
  }

  @override
  Widget buildNarrowLayout(
    BuildContext context,
    SizingInformation sizeInfo,
  ) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Made by',
            style: FontTheme.poppins14w500black(),
          ),
          const HeightSpace(20),
          Text(
            'Muhamad Fauzi Ridwan',
            style: FontTheme.poppins24w700black(),
            textAlign: TextAlign.center,
          ),
          const HeightSpace(40),
          _buildButton(
            label: 'Test 1',
            onPressed: () => nav.goToTestOnePage(),
          ),
          _buildButton(
            label: 'Test 2',
            onPressed: () => nav.goToTestTwoPage(),
          ),
          _buildButton(
            label: 'Test 3',
            onPressed: () => nav.goToTestThreePage(),
          ),
        ],
      ),
    );
  }

  @override
  Widget buildWideLayout(
    BuildContext context,
    SizingInformation sizeInfo,
  ) {
    return buildNarrowLayout(context, sizeInfo);
  }

  @override
  void init() {}

  @override
  Future<bool> onBackPressed() async {
    return true;
  }

  Widget _buildButton({
    required String label,
    required VoidCallback onPressed,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: CustomButton(
        onPressed: onPressed,
        text: label,
        textStyle: FontTheme.dmSans18w700white(),
        activeColor: Colors.black,
      ),
    );
  }
}
