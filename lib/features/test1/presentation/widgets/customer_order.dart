// Created by Muhamad Fauzi Ridwan on 03/10/21.

part of '_widgets.dart';

class CustomerOrder extends StatelessWidget {
  const CustomerOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyData = [
      OrderModel(
        itemName: 'Strawberry',
        price: 'Rp 75.000',
        massUnits: 100,
        massType: 'gram',
        numOfItem: 2,
        note: '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna ullamco laboris nisi ut aliquip ex ea commodo.''',
      ),
      OrderModel(
        itemName: 'Nanas',
        price: 'Rp 75.000',
        massUnits: 100,
        massType: 'gram',
        numOfItem: 2,
        note: '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna ullamco laboris nisi ut aliquip ex ea commodo.''',
      ),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Pesanan',
          style: FontTheme.poppins14w600black(),
        ),
        const HeightSpace(10),
        Column(
          children: List.generate(2, (index) {
            final orderItem = dummyData[index];
            return _buildItemOrder(model: orderItem);
          }),
        ),
      ],
    );
  }

  Widget _buildItemOrder({required OrderModel model}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeightSpace(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: OrdoColors.white,
                    boxShadow: BoxShadowDecorator().defaultShadow(),
                  ),
                  child: Image.asset(
                    OrdoImages.order,
                    height: 40,
                    width: 40,
                  ),
                ),
                const WidthSpace(15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.itemName.toString(),
                      style: FontTheme.inter15w600green(),
                    ),
                    const HeightSpace(4),
                    Text(
                      '${model.massUnits?.round()} ${model.massType}',
                      style: FontTheme.inter11w500green(),
                    ),
                    const HeightSpace(4),
                    Text(
                      model.price.toString(),
                      style: FontTheme.openSans13w600green(),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              '${model.numOfItem} Item',
              style: FontTheme.inter12w700black(),
            ),
          ],
        ),
        const HeightSpace(10),
        Text(
          'Catatan Item',
          style: FontTheme.poppins12w600black(),
        ),
        const HeightSpace(5),
        Text(
          model.note.toString(),
          style: FontTheme.poppins10w500grey(),
        ),
        const HeightSpace(10),
        const Divider(
          color: OrdoColors.disableColor,
        ),
      ],
    );
  }
}
