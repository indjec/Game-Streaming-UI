class TrendingStreamModel {
  String userName;
  String userAvatar;
  String gameName;
  String thumbnail;
  String liveWatchingCount;

  TrendingStreamModel({
    this.gameName,
    this.thumbnail,
    this.userAvatar,
    this.userName,
    this.liveWatchingCount,
  });
}

List<TrendingStreamModel> trendingStreams = [
  TrendingStreamModel(
    gameName: "BGMI",
    thumbnail: 'assets/images/bgmi.jpeg',
    userAvatar: 'assets/images/user1.jpeg',
    userName: 'LightYear Gaming',
    liveWatchingCount: "55k",
  ),
  TrendingStreamModel(
    gameName: "Valorant",
    thumbnail: 'assets/images/valo.jpg',
    userAvatar: 'assets/images/user2.jpg',
    userName: 'John Gaming',
    liveWatchingCount: "32.5k",
  ),
  TrendingStreamModel(
    gameName: "Free Fire",
    thumbnail: 'assets/images/ff.jpg',
    userAvatar: 'assets/images/user3.jpg',
    userName: 'Doe Gaming',
    liveWatchingCount: "10k",
  ),
];
