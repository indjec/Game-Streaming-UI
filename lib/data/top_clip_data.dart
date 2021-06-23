class TopClipModel {
  String title;
  String thumbnail;
  String userName;
  String userAvatar;

  TopClipModel({
    this.thumbnail,
    this.title,
    this.userAvatar,
    this.userName,
  });
}

List<TopClipModel> topClips = [
  TopClipModel(
    title: "Cluth Montage 🎮",
    thumbnail: 'assets/images/valo.jpg',
    userAvatar: 'assets/images/user2.jpg',
    userName: 'John Gaming',
  ),
  TopClipModel(
    thumbnail: 'assets/images/bgmi.jpeg',
    userAvatar: 'assets/images/user1.jpeg',
    userName: 'LightYear Gaming',
    title: "1v4 clutch in T1 Scrims 🏆",
  ),
  TopClipModel(
    thumbnail: 'assets/images/ff.jpg',
    userAvatar: 'assets/images/user3.jpg',
    userName: 'Doe Gaming',
    title: "God Level gameplay 🥇",
  ),
];
