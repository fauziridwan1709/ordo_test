// Created by Muhamad Fauzi Ridwan on 03/10/21.

part of '_button.dart';

class LeadingBackButton extends StatelessWidget {
  const LeadingBackButton({
    Key? key,
    this.onPressed,
    this.leadingColor,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final Color? leadingColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: leadingColor ?? const Color(0xFF202237),
          ),
          child: SvgPicture.asset(
            OrdoIcons.back,
            height: 12,
            width: 12,
          ),
        ),
      ),
    );
  }
}
