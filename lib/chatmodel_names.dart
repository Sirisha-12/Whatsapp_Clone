class ChatModel {
  // final String imageUrl;
  final String title;
  final String subtitle;
  final String time;

  ChatModel(
      {
      // required this.imageUrl,
      required this.title,
      required this.subtitle,
      required this.time});
}

List<ChatModel> chatapp = [
  ChatModel(
      // imageUrl:
      //     'https://images.pexels.com/photos/7275385/pexels-photo-7275385.jpeg?auto=compress&cs=tinysrgb&w=400',
      title: 'Andrea',
      subtitle: 'How are you',
      time: '9:30'),
  ChatModel(
      // imageUrl:
      //     'https://images.pexels.com/photos/7038052/pexels-photo-7038052.jpeg?auto=compress&cs=tinysrgb&w=400',
      title: 'Lucas',
      subtitle: 'Whatsup!!',
      time: '9:20'),
  ChatModel(
      // imageUrl:
      //     'https://images.pexels.com/photos/3492100/pexels-photo-3492100.jpeg?auto=compress&cs=tinysrgb&w=400',
      title: 'Zayn',
      subtitle: 'here you go',
      time: '9:10'),
  ChatModel(
      // imageUrl:
      //     'https://images.pexels.com/photos/5384445/pexels-photo-5384445.jpeg?auto=compress&cs=tinysrgb&w=400',
      title: 'Peter',
      subtitle: 'By what time will you reach there',
      time: '9:00'),
  ChatModel(
      //     imageUrl:
      //         'https://images.pexels.com/photos/8090136/pexels-photo-8090136.jpeg?auto=compress&cs=tinysrgb&w=400',
      title: 'Kayla',
      subtitle: 'How u doing',
      time: '8:30'),
  ChatModel(
      // imageUrl:
      //     'https://images.pexels.com/photos/4382484/pexels-photo-4382484.jpeg?auto=compress&cs=tinysrgb&w=400',
      title: 'Madeline',
      subtitle: 'sent a photo',
      time: '7:30'),
];
