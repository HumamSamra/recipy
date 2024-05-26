part of 'my_recipes.imports.dart';

@RoutePage()
class MyRecipesScreen extends StatelessWidget {
  const MyRecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Gap(4.h),
          const DefaultBanner(
            title: 'Saved Recipes',
            subTitle: 'Manage and watch your recipes',
            icon: Icons.collections_bookmark_outlined,
          ),
          Gap(1.h),
          for (int i = 0; i < 10; i++)
            ListTile(
              onTap: () {},
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CachedNetworkImage(
                  imageUrl:
                      'https://www.themealdb.com/images/media/meals/58oia61564916529.jpg',
                ),
              ),
              title: const AutoSizeText('My Small Dish made by me'),
              subtitle: const AutoSizeText(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry, text of the printing and typesetting industry.",
                textAlign: TextAlign.justify,
              ),
            ),
        ],
      ),
    );
  }
}
