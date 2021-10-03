part of '_custom.dart';

class CustomScaffold extends Scaffold {
  CustomScaffold({
    ScaffoldAttribute? attr,
    PreferredSizeWidget? appBar,
    Widget? body,
  }) : super(
          key: attr!.scaffoldKey,
          resizeToAvoidBottomInset: attr.resize,
          backgroundColor: attr.backgroundColor,
          floatingActionButton: attr.fab,
          floatingActionButtonLocation: attr.fabLocation,
          appBar: appBar,
          body: body,
          bottomNavigationBar: attr.bottomNavigation,
        );
}

class ScaffoldAttribute {
  ScaffoldAttribute({
    this.scaffoldKey,
    this.backgroundColor = OrdoColors.backgroundColor,
    this.resize = true,
    this.fabLocation,
    this.fab,
    this.bottomNavigation,
  });

  GlobalKey<ScaffoldState>? scaffoldKey;
  Color? backgroundColor;
  bool resize;
  FloatingActionButtonLocation? fabLocation;
  Widget? fab;
  Widget? bottomNavigation;
}
