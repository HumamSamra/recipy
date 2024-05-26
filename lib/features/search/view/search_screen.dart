part of 'search.imports.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Gap(4.h),
          const DefaultBanner(
            title: 'Search',
            subTitle: 'Discover online, and local foods',
            icon: Icons.search,
          ),
          Gap(1.h),
          for (int i = 0; i < 10; i++)
            FoodPost(
              category: 'Night-dish foods',
              imagePath:
                  'https://www.themealdb.com/images/media/meals/58oia61564916529.jpg',
              text:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged",
              secondary: i % 2 == 0,
              onSave: () {},
              onView: () {},
            ),
        ],
      ),
    );
  }
}
