class OnboardingContent {
  String image;
  String title;
  String description;

  OnboardingContent(
      {required this.image, required this.title, required this.description});
}

List<OnboardingContent> contents = [
  OnboardingContent(
      title: 'Prepare to speak confidently',
      image: 'assets/images/pic1.PNG',
      description:
          "Take personalized lessons with expert\n tutors and native speakers"),
  OnboardingContent(
      title: 'Learn with the best online tutors',
      image: 'assets/images/pic2.PNG',
      description:
          "View tutor videos, profiles and reviews to\n choose the perfect tutor"),
  OnboardingContent(
      title: 'Stay connected',
      image: 'assets/images/pic3.PNG',
      description: "Message tutors and get notifications about\n your lessons"),
];
