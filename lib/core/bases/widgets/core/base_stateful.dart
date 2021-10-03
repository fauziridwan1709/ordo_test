part of '_base.dart';

abstract class BaseStateful<T extends StatefulWidget> extends State<T>
    with Diagnosticable
    implements BaseStateNormal {
  GlobalKey<RefreshIndicatorState>? refreshIndicatorKey;
  String? appName;

  ///decorator things
  BoxShapeDecorator? boxDecorator;
  TextInputDecorator? inputDecorator;

  @override
  void initState() {
    super.initState();
    refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();
    boxDecorator = BoxShapeDecorator();
    inputDecorator = TextInputDecorator();
    init();
  }

  ScaffoldAttribute buildAttribute();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: OrdoColors.transparent,
    ));
    return WillPopScope(
        onWillPop: onBackPressed,
        child: CustomScaffold(
          attr: buildAttribute(),
          body: SizingInformationBuilder(
            builder: (context, sizeInfo) {
              if (sizeInfo.deviceType == DeviceScreenType.mobile) {
                return buildNarrowLayout(context, sizeInfo);
              }
              return buildWideLayout(context, sizeInfo);
            },
          ),
          appBar: buildAppBar(context),
        ));
  }
}
