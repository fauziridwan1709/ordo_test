// Created by Muhamad Fauzi Ridwan on 02/10/21.

part of '_widgets.dart';

class PortofolioSummaryWidget extends StatelessWidget {
  const PortofolioSummaryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imgUrl = '''
https://asset.kompas.com/crops/KB8oO-cM8mHMs5o-KTEDAR58zMw=/110x18:927x563/750x500/data/photo/2020/10/08/5f7ebed5eeca8.jpg''';
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        AreaBox(
          size: 80,
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(
                color: OrdoColors.border3,
              ),
              shape: BoxShape.circle,
            ),
            child: CustomNetworkImage(
              url: imgUrl,
              borderRadius: BorderRadius.circular(200),
              placeHolder: _placeHolder(),
            ),
          ),
        ),
        Row(
          children: <Widget>[
            _buildInfo(label: 'Rating', value: 5.0),
            _buildInfo(label: 'Review', value: 100),
            _buildInfo(label: 'Pesanan', value: 162),
          ],
        ),
      ],
    );
  }

  Widget _placeHolder() {
    return Container(
      decoration: const BoxDecoration(
        color: OrdoColors.transparent,
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(OrdoImages.defaultProfile),
        ),
      ),
    );
  }

  Widget _buildInfo({
    required String label,
    required num value,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 4,
      ),
      child: Column(
        children: <Widget>[
          Text(
            value.toString(),
            style: FontTheme.poppins16w600black(),
          ),
          Text(
            label.toString(),
            style: FontTheme.poppins14w500black(),
          ),
        ],
      ),
    );
  }
}
