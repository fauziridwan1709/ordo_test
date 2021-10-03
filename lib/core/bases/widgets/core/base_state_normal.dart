part of '_base.dart';

abstract class BaseStateNormal {
  void init();

  PreferredSizeWidget? buildAppBar(BuildContext context);

  /// Mobile layout
  Widget buildNarrowLayout(
    BuildContext context,
    SizingInformation sizeInfo,
  );

  /// Tablet layout
  Widget buildWideLayout(
    BuildContext context,
    SizingInformation sizeInfo,
  );

  @protected
  Future<bool> onBackPressed();
}
