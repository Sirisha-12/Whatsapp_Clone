class ChatModel {
  final String title;
  final String subtitle;
  final String time;

  ChatModel({required this.title, required this.subtitle, required this.time});
}

List<ChatModel> chatapp = [
  ChatModel(title: 'Andrea', subtitle: 'How are you', time: '9:30'),
  ChatModel(title: 'Lucas', subtitle: 'Whatsup!!', time: '9:20'),
  ChatModel(title: 'Zayn', subtitle: 'here you go', time: '9:10'),
  ChatModel(
      title: 'Peter',
      subtitle: 'By what time will you reach there',
      time: '9:00'),
  ChatModel(title: 'Kayla', subtitle: 'How u doing', time: '8:30'),
  ChatModel(title: 'Madeline', subtitle: 'sent a photo', time: '7:30'),
];
