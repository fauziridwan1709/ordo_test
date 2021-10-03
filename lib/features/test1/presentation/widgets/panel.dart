// Created by Muhamad Fauzi Ridwan on 03/10/21.

part of '_widgets.dart';

class PanelWidget extends StatelessWidget {
  const PanelWidget({
    Key? key,
    required this.controller,
    required this.height,
    required this.statusKey,
  }) : super(key: key);

  final ScrollController controller;
  final double height;
  final GlobalKey statusKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
        color: OrdoColors.white,
        boxShadow: BoxShadowDecorator().defaultShadow(),
      ),
      child: Column(
        children: [
          const HeightSpace(15),
          Container(
            width: 80,
            height: 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(400),
              color: OrdoColors.greenTukode,
            ),
          ),
          Expanded(
            child: ListView(
              controller: controller,
              children: <Widget>[
                const HeightSpace(20),
                CustomerStatusWidget(renderKey: statusKey),
                const HeightSpace(15),
                const CustomerOrder(),
                const HeightSpace(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Catatan Pesanan',
                      style: FontTheme.poppins14w600black(),
                    ),
                    const HeightSpace(10),
                    Text(
                      '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna ullamco laboris nisi ut aliquip ex ea commodo.''',
                      style: FontTheme.poppins10w500grey(),
                    ),
                  ],
                ),
                const HeightSpace(50),
              ],
              // ],
            ),
          ),
        ],
      ),
    );
  }
}
