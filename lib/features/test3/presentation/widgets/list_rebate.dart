// Created by Muhamad Fauzi Ridwan on 03/10/21.

part of '_widgets.dart';

class ListRebateWidget extends StatelessWidget {
  const ListRebateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final rebates = List.generate(
        6,
        (index) => const Padding(
            padding: EdgeInsets.symmetric(vertical: 6),
            child: RebateItemView()));

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
                  'Daftar Rebate',
                  style: FontTheme.poppins12w400disable(),
                ),
                Row(
                  children: <Widget>[
                    FitButton(
                      onTap: () {},
                      label: 'Semua',
                      color: OrdoColors.orange,
                    ),
                    const WidthSpace(10),
                    FitButton(
                      onTap: () {},
                      label: 'Filter',
                      color: OrdoColors.blue,
                      icon: const Icon(
                        Fontisto.equalizer,
                        size: 12,
                        color: OrdoColors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            color: OrdoColors.disableColor,
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 0, 5),
              child: Column(
                children: rebates,
              )),
        ],
      ),
    );
  }
}
