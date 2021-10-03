// Created by Muhamad Fauzi Ridwan on 03/10/21.

part of '_widgets.dart';

class FeedItemView extends StatelessWidget {
  const FeedItemView({
    Key? key,
    this.height = 50,
    this.width = 50,
    this.aspectRatio = 1.0,
    required this.model,
  }) : super(key: key);

  final double? height;
  final double? width;
  final double aspectRatio;
  final FeedModel model;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: SizedBox(
        height: height,
        width: width,
        child: Stack(
          children: [
            Image.asset(model.assets.toString()),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: OrdoColors.black.withOpacity(.41),
                ),
                child: Text(
                  model.customerName.toString(),
                  style: FontTheme.poppins10w500white(),
                ),
              ),
            ),
            Positioned(
              top: 5,
              right: 5,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF202237),
                        Color(0xFF595FA0),
                      ]),
                  // color: OrdoColors.black80,
                ),
                child: Row(
                  children: <Widget>[
                    const Icon(
                      Icons.star,
                      size: 14,
                      color: OrdoColors.yellow,
                    ),
                    Text(
                      model.rating.toString(),
                      style: FontTheme.poppins10w500white(),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
