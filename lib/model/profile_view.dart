class ProfileView {
  final String? videoView;
  final String? profilePic;
  final String? name;
  final String? description;

  ProfileView(
      {required this.videoView,
      required this.profilePic,
      required this.name,
      required this.description});
}

List<ProfileView> profileviewList = [
  ProfileView(
      videoView: 'assets/images/electricals.png',
      profilePic: 'assets/images/blackelectrician.jpg',
      description: 'electrician',
      name: 'Njoro stima'),
  ProfileView(
      videoView: 'assets/images/braids.png',
      description: 'hair stylist',
      profilePic: 'assets/images/hairdresser.png',
      name: 'Suzy braids'),
  ProfileView(
      videoView: 'assets/images/farm.jpg',
      profilePic: 'assets/images/farmer.jpg',
      description: 'farmer',
      name: 'Onyi farmer'),
  ProfileView(
      videoView: 'assets/images/plumbing.png',
      profilePic: 'assets/images/plumber.jpg',
      description: 'plumber',
      name: 'Muli plumber'),
  ProfileView(
      videoView: 'assets/images/electricals.png',
      profilePic: 'assets/images/wiring.jpg',
      description: 'electrician',
      name: 'Ken wiring'),
];
