part of 'search.imports.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Gap(2.h),
            const DefaultBanner(
              title: 'Search',
              subTitle: 'Discover online, and local foods',
              icon: Icons.search,
            ),
            const DefaultSearchField(),
            DefaultSubBanner(
              title: 'Your Recipes',
              icon: Icons.collections_bookmark_outlined,
              onTap: () {
                AutoTabsRouter.of(context).setActiveIndex(2);
              },
            ),
            Gap(1.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.w),
              child: Wrap(
                spacing: 2.w,
                alignment: WrapAlignment.center,
                children: [
                  for (int i = 0; i < 2; i++)
                    Container(
                      padding: EdgeInsets.only(
                          left: 2.w, right: 2.w, top: 1.h, bottom: 1.h),
                      margin: EdgeInsets.only(
                        bottom: 2.h,
                      ),
                      width: 47.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context)
                            .colorScheme
                            .outline
                            .withOpacity(0.1),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: CachedNetworkImage(
                              imageUrl:
                                  'https://www.themealdb.com/images/media/meals/58oia61564916529.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Gap(1.h),
                          const SizedBox(
                            width: double.infinity,
                            child: AutoSizeText(
                              'Nigh-dish soup',
                              minFontSize: 20,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: double.infinity,
                            child: AutoSizeText(
                              'This recipe is the Best recipe ever to make some easy night dish',
                              minFontSize: 16,
                              maxFontSize: 18,
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Gap(1.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                                child: const Text("View"),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
