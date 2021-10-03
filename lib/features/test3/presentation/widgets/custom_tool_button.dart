// Created by Muhamad Fauzi Ridwan on 03/10/21.

part of '_widgets.dart';

class CustomToolButton extends StatelessWidget {
  const CustomToolButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF53B2FC),
              Color(0xFF127CCE),
            ]),
        borderRadius: BorderRadius.circular(8),
      ),
      child: NavigationToolbar(
        middle: Text(
          'Complain',
          style: FontTheme.poppins14w700white(),
        ),
        trailing: const Icon(
          Icons.arrow_right_alt,
          color: OrdoColors.white,
          size: 28,
        ),
      ),
    );
  }
}
