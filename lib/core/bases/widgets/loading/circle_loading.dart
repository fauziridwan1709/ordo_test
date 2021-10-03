// Created by Muhamad Fauzi Ridwan on 7/15/21.

part of '_loading.dart';

class CircleLoading extends StatelessWidget {
  const CircleLoading({
    Key? key,
    this.size = 35.0,
  }) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: SizedBox(
          height: size,
          width: size,
          child: const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
