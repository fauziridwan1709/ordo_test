// Created by Muhamad Fauzi Ridwan on 7/15/21.

part of '_loading.dart';

class LinearLoading extends StatelessWidget {
  const LinearLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: LinearProgressIndicator(),
    );
  }
}
