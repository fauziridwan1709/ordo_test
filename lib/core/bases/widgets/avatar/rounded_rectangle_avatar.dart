part of '_avatar.dart';

class RoundedRectangleAvatar extends StatelessWidget {
  const RoundedRectangleAvatar({
    Key? key,
    this.size = 80,
    this.url,
  }) : super(key: key);
  final double size;
  final String? url;

  @override
  Widget build(BuildContext context) {
    // var profile = GlobalState.profile();
    final createUrl = url!;
    return AreaBox(
      size: size,
      child: CustomNetworkImage(
        url: createUrl,
        placeHolder: Container(
          decoration: BoxDecoration(
              boxShadow: BoxShadowDecorator().defaultShadow(),
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xFFFCFCFC),
              image: const DecorationImage(
                  image: AssetImage('assets/images/flutter_logo.png'))),
        ),
      ),
    );
  }
}
