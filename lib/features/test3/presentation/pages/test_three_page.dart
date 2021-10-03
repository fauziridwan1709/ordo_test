// Created by Muhamad Fauzi Ridwan on 02/10/21.

part of '_pages.dart';

class TestThreePage extends StatefulWidget {
  const TestThreePage({
    Key? key,
  }) : super(key: key);

  @override
  _TestThreePageState createState() => _TestThreePageState();
}

class _TestThreePageState extends BaseStateful<TestThreePage> {
  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      toolbarHeight: AppBar().preferredSize.height + 20,
      backgroundColor: OrdoColors.transparent,
      shadowColor: OrdoColors.transparent,
      title: Text(
        'FINANSIAL',
        style: FontTheme.poppins16w700black(),
      ),
      leading: LeadingBackButton(
        onPressed: () => nav.pop<void>(),
        leadingColor: OrdoColors.orange,
      ),
      actions: [
        IconButton(
          icon: Image.asset(
            OrdoImages.statistic,
            height: 24,
            width: 24,
          ),
          color: OrdoColors.blue,
          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset(
            OrdoImages.notifActive,
            height: 28,
            width: 26,
          ),
          color: OrdoColors.black100,
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  ScaffoldAttribute buildAttribute() {
    return ScaffoldAttribute(
      bottomNavigation: Theme(
        data: Theme.of(context).copyWith(canvasColor: OrdoColors.white),
        child: BottomNavigationBar(
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: _buildIcon(OrdoIcons.home),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: _buildIcon(OrdoIcons.book),
              label: 'book',
            ),
            BottomNavigationBarItem(
              icon: _buildIcon(OrdoIcons.restore),
              label: 'restore',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon(String svgIcon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SvgPicture.asset(svgIcon),
    );
  }

  @override
  Widget buildNarrowLayout(
    BuildContext context,
    SizingInformation sizeInfo,
  ) {
    return Stack(
      children: [
        ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          children: const [
            CardTotalBonusWidget(),
            HeightSpace(20),
            CardPendingWidget(),
            HeightSpace(20),
            ListRebateWidget(),
            HeightSpace(20),
            RebateHistoryWidget(),
            HeightSpace(40),
          ],
        ),
        const Positioned(
          bottom: 20,
          right: 20,
          left: 20,
          child: CustomToolButton(),
        ),
      ],
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
}
