// Created by Muhamad Fauzi Ridwan on 02/10/21.

part of '_widgets.dart';

class PortofolioBioWidget extends StatelessWidget {
  const PortofolioBioWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Dina Florist',
          style: FontTheme.poppins14w600black(),
        ),
        const HeightSpace(5),
        Text(
          '''
Toko Bunga terbaiks se Indonesia Raya Harga Murah Produk Berkualitas''',
          style: FontTheme.poppins12w500black(),
        ),
        const HeightSpace(15),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 6,
            ),
            decoration: BoxDecoration(
              color: OrdoColors.white,
              border: Border.all(color: OrdoColors.border2),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              'PORTOFOLIO',
              style: FontTheme.poppins12w600black(),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}
