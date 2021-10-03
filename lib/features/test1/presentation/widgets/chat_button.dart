// Created by Muhamad Fauzi Ridwan on 03/10/21.

part of '_widgets.dart';

class ChatButton extends StatelessWidget {
  const ChatButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: OrdoColors.greenGradient(),
      ),
      child: const Icon(
        Icons.mark_chat_unread_rounded,
        color: OrdoColors.white,
      ),
    );
  }
}
