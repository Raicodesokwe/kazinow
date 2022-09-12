class ExploreService {
  final String? pic;
  final String? service;
  final String? number;

  ExploreService(
      {required this.pic, required this.service, required this.number});
}

List<ExploreService> exploreserviceList = [
  ExploreService(
      pic: 'assets/images/plumbing.png',
      service: 'Plumbing',
      number: '27 local pros available'),
  ExploreService(
      pic: 'assets/images/electricals.png',
      service: 'Wiring',
      number: '16 local pros available'),
  ExploreService(
      pic: 'assets/images/farm.jpg',
      service: 'Gardening',
      number: '5 local pros available'),
  ExploreService(
      pic: 'assets/images/braids.png',
      service: 'Hair dressing',
      number: '12 local pros available'),
  ExploreService(
      pic: 'assets/images/electricals.png',
      service: 'Electricals',
      number: '2 local pros available'),
  ExploreService(
      pic: 'assets/images/electricals.png',
      service: 'Home Cleaning',
      number: '60 local pros available'),
  ExploreService(
      pic: 'assets/images/electricals.png',
      service: 'Home Cleaning',
      number: '11 local pros available'),
];
