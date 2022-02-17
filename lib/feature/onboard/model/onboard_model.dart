class OnboardModel {
  String lottieImage;
  String title;
  String discription;

  OnboardModel(
      {required this.lottieImage,
      required this.title,
      required this.discription});
}

List<OnboardModel> onboardList = [
  OnboardModel(
      lottieImage: 'assets/lottie/belirti.json',
      title: 'Symptoms of Covid-19',
      discription:
          'Covid-19 affects different people in different ways. Most infected people will develop mild to moderate illness'),
  OnboardModel(
      lottieImage: 'assets/lottie/maske.json',
      title: 'Covid-19 Information',
      discription:
          'Most people who fall sick with COVID-19 will experience mild to moderate symptoms'),
  OnboardModel(
      lottieImage: 'assets/lottie/asi.json',
      title: 'Just Stay at Home',
      discription:
          'Stay at home to self quarantine ourself from Covid-19,hopefully everything gonna be fine soon'),
];
