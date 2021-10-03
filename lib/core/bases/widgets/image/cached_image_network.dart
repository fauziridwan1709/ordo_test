// Created by Muhamad Fauzi Ridwan on 7/12/21.

part of '_image.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({
    Key? key,
    this.url,
    this.placeHolder,
    this.borderRadius,
    this.isAvatar = false,
    this.fit,
  }) : super(key: key);

  final String? url;
  final Widget? placeHolder;
  final BorderRadius? borderRadius;
  final bool isAvatar;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url ?? '',
      imageBuilder: (_, imageProvider) => Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius ?? BorderRadius.circular(12),
          image: DecorationImage(
            image: imageProvider,
            fit: fit ?? BoxFit.cover,
          ),
        ),
      ),
      placeholder: (_, __) =>
          placeHolder ??
          Container(
            decoration: BoxDecoration(
              borderRadius: borderRadius ?? BorderRadius.circular(12),
              color: OrdoColors.disableColor,
            ),
          ),
      errorWidget: (_, __, dynamic ___) =>
          placeHolder ??
          Container(
            decoration: BoxDecoration(
              borderRadius: borderRadius ?? BorderRadius.circular(12),
              color: OrdoColors.disableColor,
            ),
          ),
    );
  }
}
