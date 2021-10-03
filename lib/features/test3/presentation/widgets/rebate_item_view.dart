// Created by Muhamad Fauzi Ridwan on 03/10/21.

part of '_widgets.dart';

class RebateItemView extends StatelessWidget {
  const RebateItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ID Transaksi',
                style: FontTheme.poppins10w500disable(),
              ),
              const HeightSpace(2),
              // hard copy
              Text(
                '#EC1201211',
                style: FontTheme.poppins10w600black56(),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rebate',
                style: FontTheme.poppins10w500disable(),
              ),
              const HeightSpace(2),
              Text(
                'Rp. 150.000',
                style: FontTheme.poppins10w600green(),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tanggal',
                style: FontTheme.poppins10w500disable(),
              ),
              const HeightSpace(2),
              Text(
                '14 Juli 2021',
                style: FontTheme.poppins10w600green(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
