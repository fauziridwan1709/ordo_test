// Created by Muhamad Fauzi Ridwan on 03/10/21.

part of '_widgets.dart';

class CustomerStatusWidget extends StatelessWidget {
  const CustomerStatusWidget({
    Key? key,
    required this.renderKey,
  }) : super(key: key);

  final GlobalKey renderKey;

  @override
  Widget build(BuildContext context) {
    const imgUrl = '''
https://asset.kompas.com/crops/KB8oO-cM8mHMs5o-KTEDAR58zMw=/110x18:927x563/750x500/data/photo/2020/10/08/5f7ebed5eeca8.jpg''';
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: <Widget>[
                CustomPaint(
                  painter: CurvePainterCircle(
                      colors: [OrdoColors.greenTukode], angle: 230),
                  child: AreaBox(
                    size: 80,
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: CustomNetworkImage(
                        url: imgUrl,
                        borderRadius: BorderRadius.circular(200),
                        placeHolder: _placeHolder(),
                      ),
                    ),
                  ),
                ),
                const WidthSpace(15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'David Morel',
                      style: FontTheme.openSans16w600grey(),
                    ),
                    Text(
                      'B 1201 FA',
                      style: FontTheme.openSans16w700green(),
                    ),
                  ],
                ),
              ],
            ),
            const ChatButton(),
          ],
        ),
        const HeightSpace(25),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            // key: renderKey,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const InformationTile(
                titleLabel: 'Status',
                subtitleLabel: 'Sedang mengambil barang',
                assets: OrdoIcons.clock,
              ),
              // _buildBulb(),
              _buildBulb(key: renderKey),
              const InformationTile(
                titleLabel: 'Alamat Anda',
                subtitleLabel: 'Taman Indah Dago No. 612',
                assets: OrdoIcons.pin,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBulb({Key? key}) {
    return SizedBox(
      key: key,
      width: 24,
      child: Column(
        children: List.generate(3, (index) {
          const indicatorColor = Color(0xFF898EBC);
          return Container(
            height: 4 + index.toDouble(),
            width: 4 + index.toDouble(),
            margin: const EdgeInsets.symmetric(vertical: 4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: indicatorColor.withOpacity(.25 * (index + 1)),
            ),
          );
        }),
      ),
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
}
