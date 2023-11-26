

class OnboardingContent {
  String image;
  String title;
  // String description;

  OnboardingContent({required this.image,required this.title});
}

List<OnboardingContent> contents = [
  OnboardingContent(
    image: 'assets/images/first_onBoarding.png',
    title: 'التعريف باللاسيه الروماني',
    // description: "عبارة عن الزخرفة بأشرطة خاصة تسمي أشرطة اللاسيه وهذه الأشرطة يتم تثبيتها علي خطوط الرسم الموجود في التصميم",
  ),
  OnboardingContent(
    image: 'assets/images/second_onBoarding.png',
    title: 'الأدوات والخامات المستخدمة',
    // description: "الخامات المستخدمة في اللاسيه الروماني كالتصميم الورقي والخيوط وخامات التقوية",
  ),
  OnboardingContent(
    image: 'assets/images/third_onBoarding.png',
    title: 'خطوات تنفيذ اللاسيه الروماني',
    // description: "شريط اللاسيه ينفذ الشريط باستخدام ابرة الكروشيه المناسبة للخيط المستخدم",
  ),
  OnboardingContent(
    image: 'assets/images/fourth_onBoarding.png',
    title: 'الغرز والتقنيات',
    // description: "تتنوع الغرز والتقنيات التي يتم تنفيذها في مفروشات اللاسيه الروماني",
  ),
];