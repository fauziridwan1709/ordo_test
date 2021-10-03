// Created by Muhamad Fauzi Ridwan on 03/10/21.

part of '_widgets.dart';

class Chip extends StatelessWidget {
  const Chip({
    Key? key,
    this.color,
    this.label = 'label',
  }) : super(key: key);

  final Color? color;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: color ?? OrdoColors.orange,
        borderRadius: BorderRadius.circular(400),
      ),
      child: Text(
        label.toString(),
        style: FontTheme.poppins12w600white().copyWith(
          fontSize: 11,
        ),
      ),
    );
  }
}
