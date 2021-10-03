// Created by Muhamad Fauzi Ridwan on 02/10/21.

part of '_pages.dart';

class TestTwoPage extends StatefulWidget {
  const TestTwoPage({Key? key}) : super(key: key);

  @override
  _TestTwoPageState createState() => _TestTwoPageState();
}

class _TestTwoPageState extends BaseStateful<TestTwoPage> {
  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      toolbarHeight: AppBar().preferredSize.height + 20,
      backgroundColor: OrdoColors.transparent,
      shadowColor: OrdoColors.transparent,
      title: Text(
        'PORTOFOLIO VENDOR',
        style: FontTheme.poppins16w700black(),
      ),
      leading: LeadingBackButton(
        onPressed: () => nav.pop<void>(),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications),
          color: OrdoColors.black100,
          onPressed: () {},
        )
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
            icon: _buildIcon(OrdoIcons.beranda),
            label: 'beranda',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(OrdoIcons.data),
            label: 'data',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(OrdoIcons.upload),
            label: 'upload',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(OrdoIcons.statistic),
            label: 'statistic',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(OrdoIcons.helmet),
            label: 'helmet',
          ),
        ],
      ),
    ));
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
    return ListView(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      children: const [
        PortofolioSummaryWidget(),
        HeightSpace(20),
        PortofolioBioWidget(),
        HeightSpace(20),
        PortofolioFeedsWidget(),
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
