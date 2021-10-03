part of '_bar.dart';

class EmptyAppBar extends PreferredSize {
  EmptyAppBar({Key? key})
      : super(
          key: key,
          preferredSize: const Size.fromHeight(0),
          child: Container(color: OrdoColors.transparent),
        );
}
