// Created by Muhamad Fauzi Ridwan on 02/10/21.

part of '_widgets.dart';

class PortofolioFeedsWidget extends StatelessWidget {
  const PortofolioFeedsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final images = List.generate(
        3, (index) => '${Constants.imagePath}/bunga_${index + 1}.png');
    final children = List.generate(
      25,
      (index) => FeedItemView(
        model: FeedModel(
            customerName: 'Nama Customer',
            rating: 5,
            assets: images[Random().nextInt(3)]),
      ),
    );
    return GridView.count(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 3,
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      children: children,
    );
  }
}
