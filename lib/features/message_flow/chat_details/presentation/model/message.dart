
class Message {
  final String text;
  final bool isMe;
  final String? location;

  Message({required this.text, required this.isMe, this.location});
}