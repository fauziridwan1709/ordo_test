// Created by Muhamad Fauzi Ridwan on 03/10/21.

part of '_widgets.dart';

class InformationTile extends StatelessWidget {
  const InformationTile({
    Key? key,
    required this.titleLabel,
    required this.subtitleLabel,
    required this.assets,
  }) : super(key: key);

  final String titleLabel;
  final String subtitleLabel;
  final String assets;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          assets,
          height: 24,
          width: 24,
        ),
        const WidthSpace(10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titleLabel.toString(),
                style: FontTheme.openSans14w400green(),
              ),
              Text(
                subtitleLabel.toString(),
                style: FontTheme.openSans15w600grey(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
