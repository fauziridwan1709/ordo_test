// Created by Muhamad Fauzi Ridwan on 03/10/21.

part of '_widgets.dart';

class FitButton extends StatelessWidget {
  const FitButton({
    Key? key,
    this.onTap,
    this.icon,
    this.label,
    this.color,
  }) : super(key: key);

  final VoidCallback? onTap;
  final Widget? icon;
  final String? label;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 6,
        ),
        decoration: BoxDecoration(
          color: color ?? OrdoColors.blue,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          children: [
            Text(
              label.toString(),
              style: FontTheme.poppins10w500white(),
            ),
            if (icon != null) ...[
              const WidthSpace(5),
              icon!,
            ]
          ],
        ),
      ),
    );
  }
}
