// Created by Muhamad Fauzi Ridwan on 03/10/21.

part of '_widgets.dart';

class CardPendingWidget extends StatelessWidget {
  const CardPendingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: OrdoColors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: BoxShadowDecorator().defaultShadow(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'PENDING BONUS',
            style: FontTheme.poppins14w700black().copyWith(
              color: OrdoColors.orange,
            ),
          ),
          // gaperlu ada formatter untuk menampilkan data di FrontEnd
          // karena lebih baik dari BackEnd sudah dalam string seperti ini
          Text(
            'Rp 5.000.000,00',
            style: FontTheme.poppins24w600black(),
          ),
        ],
      ),
    );
  }
}
