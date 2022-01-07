import 'dart:ui';

class AppColors {
  static const Color white =  Color(0xFFE5E5E5);
  static const Color unselectedLabel = Color(0x00b8b8b8);


  //TODO : MOVE LIST BELOW to another file

  static List<MyTopic> topics = [
    MyTopic('🎶 Music'),
    MyTopic('💼 Business'),
    MyTopic('🎨 Design'),
    MyTopic('📖 Book'),
    MyTopic('📷 Photography'),
    MyTopic('🏛 Architecture'),
    MyTopic('✍🏻 Writing'),
    MyTopic('‍🏫 Education'),
    MyTopic('🎮 Entertainment'),
    MyTopic('🍃 Nature'),
    MyTopic('🏝 Travel'),
    MyTopic('🏓 Sports'),
    MyTopic('⚕️ Health'),
    MyTopic('🍳 Recipes'),
    MyTopic('💪 Gym & Fitness'),
  ];
}

class MyTopic {
  String title;
  bool isSelected;

  MyTopic(this.title, {this.isSelected = false});
}
