// Created by Muhamad Fauzi Ridwan on 03/10/21.

part of '_widgets.dart';

class RebateHistoryWidget extends StatelessWidget {
  const RebateHistoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final rebates = List.generate(
        6,
        (index) => const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: RebateHistoryItemView()));
    return Container(
      padding: const EdgeInsets.symmetric(
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Riwayat Rebate',
                  style: FontTheme.poppins14w700black().copyWith(
                    color: OrdoColors.orange,
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: Column(
                children: rebates,
              )),
        ],
      ),
    );
  }
}
