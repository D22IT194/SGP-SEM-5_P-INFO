class OnBoarding {
  final String title;
  final String image;
  final String textspan;


  OnBoarding({
    required this.title,
    required this.image,
    required this.textspan,
  });
}

List<OnBoarding> onboardingContents = [
  OnBoarding(
    title: 'Emergency Services',
    image: 'assets/images/onboarding_image_1.png',
    textspan : 'Get Helplines call in Just a Few Taps.',
  ),
  OnBoarding(
    title: 'First Aid Guide',
    image: 'assets/images/onboarding_image_2.png',
    textspan: 'Learn to Save Lives with First Aid.',
  ),
  OnBoarding(
    title: 'Healthcare System',
    image: 'assets/images/onboarding_image_3.png',
    textspan: 'Your Health Resources Just Around \n the Corner.',
  ),
  OnBoarding(
    title: 'Welcome To P-Info',
    image: 'assets/images/onboarding_image_4.png',
    textspan: 'Your Lifesaver in Your Pocket.',
  ),
];
