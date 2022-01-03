class OnBoarding {
  final String title;
  final String subtitle;
  final String image;

  OnBoarding({
    required this.title,
    required this.subtitle,
    required this.image,
  });
}

List<OnBoarding> onboardingContents = [
  OnBoarding(
    title: 'Welcome to Parkez',
    subtitle:'WE CAN HELP YOU PARK YOUR CAR EASIER',
    image: 'https://raw.githubusercontent.com/tonydavidx/habit-app-flutter/main/assets/images/onboarding_image_1.png',
  ),
  OnBoarding(
    title: 'park your car easily',
    subtitle:'HAVE ACCESS TO PARKING THROUGH YOUR PHONE',
    image: 'https://raw.githubusercontent.com/tonydavidx/habit-app-flutter/main/assets/images/onboarding_image_2.png',
  ),
  OnBoarding(
    title: 'Keep track of your car',
    subtitle:'ALWAYS KEEP TRACK OF YOUR CARS LOCATION',
    image: 'https://raw.githubusercontent.com/tonydavidx/habit-app-flutter/main/assets/images/onboarding_image_3.png',
  ),
  OnBoarding(
    title: 'Join a easy parking app',
    subtitle:'JOIN AN EASY TO USE PARKING APP',
    image: 'https://raw.githubusercontent.com/tonydavidx/habit-app-flutter/main/assets/images/onboarding_image_4.png',
  ),
];