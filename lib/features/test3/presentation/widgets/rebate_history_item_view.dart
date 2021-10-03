// Created by Muhamad Fauzi Ridwan on 03/10/21.

part of '_widgets.dart';

class RebateHistoryItemView extends StatelessWidget {
  const RebateHistoryItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              height: 35,
              width: 35,
              padding: const EdgeInsets.all(9),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: OrdoColors.blueGradient(),
              ),
              child: SvgPicture.asset(OrdoIcons.rebate),
            ),
            const WidthSpace(15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '#REBATEC120211',
                  style: FontTheme.poppins14w400black2().copyWith(
                    fontSize: 13,
                  ),
                ),
                Text(
                  '20 Juli 2021',
                  style: FontTheme.poppins12w400black3().copyWith(
                    fontSize: 10,
                  ),
                )
              ],
            )
          ],
        ),
        const WidthSpace(10),
        const Chip(
          label: 'Rp 150.000',
        )
      ],
    );
  }
}
