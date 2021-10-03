// Created by Muhamad Fauzi Ridwan on 02/10/21.

part of '_pages.dart';

class TestOnePage extends StatefulWidget {
  const TestOnePage({Key? key}) : super(key: key);

  @override
  _TestOnePageState createState() => _TestOnePageState();
}

class _TestOnePageState extends BaseStateful<TestOnePage> {
  double ratio = 1;
  final statusKey = GlobalKey();

  @override
  void init() {
    ratio = 1;
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      final renderBox =
          statusKey.currentContext?.findRenderObject() as RenderBox?;
      final offset = renderBox?.localToGlobal(Offset.zero);
      final height = MediaQuery.of(context).size.height;
      final difference = (offset?.dy ?? 0) - height;
      print(difference / height);
      ratio = 1 - (difference / height);
      setState(() {});
    });
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      toolbarHeight: AppBar().preferredSize.height + 20,
      backgroundColor: OrdoColors.transparent,
      shadowColor: OrdoColors.transparent,
      title: Text(
        'LACAK PESANAN',
        style: FontTheme.poppins16w700black(),
      ),
      leading: LeadingBackButton(
        onPressed: () => nav.pop<void>(),
        leadingColor: OrdoColors.greenTukode,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: GestureDetector(
            onTap: () {},
            child: Image.asset(
              OrdoImages.bag,
              height: 16,
              width: 16,
            ),
          ),
        ),
      ],
    );
  }

  @override
  ScaffoldAttribute buildAttribute() {
    return ScaffoldAttribute(
        bottomNavigation: Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.white),
      child: BottomNavigationBar(
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: _buildIcon(OrdoIcons.note),
            label: 'note',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(OrdoIcons.data),
            label: 'data',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(OrdoIcons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(OrdoIcons.notification),
            label: 'notification',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(OrdoIcons.people),
            label: 'people',
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
    final height = sizeInfo.screenSize.height;
    final width = sizeInfo.screenSize.width;
    return Stack(
      children: [
        // Butuh API Key dan setting di google developer console untuk
        // google map jadi saya comment dulu yang ini
        // const MapUiPage(),
        SlidingUpPanel(
          maxHeight: height * .7,
          minHeight: (height * (1 - ratio)) + 2 * 56,
          parallaxEnabled: true,
          parallaxOffset: .5,
          body: InteractiveViewer(
              maxScale: 4,
              child: Image.asset(
                OrdoImages.map,
                fit: BoxFit.cover,
                width: width,
              )),
          panelBuilder: (sc) => PanelWidget(
            controller: sc,
            height: height,
            statusKey: statusKey,
          ),
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(18),
          ),
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
  Future<bool> onBackPressed() async {
    return true;
  }
}
