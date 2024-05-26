part of 'home.imports.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final refreshController = RefreshController();
    return Scaffold(
      body: SafeArea(
        child: SmartRefresher(
          enablePullDown: true,
          enablePullUp: true,
          header: const ClassicHeader(
            refreshStyle: RefreshStyle.Behind,
          ),
          footer: const ClassicFooter(
            loadStyle: LoadStyle.ShowWhenLoading,
          ),
          controller: refreshController,
          onRefresh: _onRefresh,
          onLoading: _onLoading,
          child: ListView(
            children: [
              Gap(2.h),
              const DefaultBanner(
                title: 'Homepage',
                subTitle: 'Search your favorite food',
                icon: Icons.home_outlined,
              ),
              Gap(1.h),
              for (int i = 0; i < 2; i++)
                Padding(
                  padding: EdgeInsets.only(bottom: 1.h),
                  child: FoodPost(
                    category: 'Night-dish foods',
                    imagePath:
                        'https://www.themealdb.com/images/media/meals/58oia61564916529.jpg',
                    text:
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged",
                    secondary: i % 2 == 0,
                    onSave: () {},
                    onView: () {},
                  ),
                ),
              DefaultSubBanner(
                title: 'Latest Recipes',
                icon: Icons.fastfood_outlined,
                onTap: () {
                  AutoTabsRouter.of(context).setActiveIndex(1);
                },
              ),
              Gap(1.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.w),
                child: Wrap(
                  spacing: 2.w,
                  alignment: WrapAlignment.center,
                  children: [
                    for (int i = 0; i < 4; i++)
                      Container(
                        padding: EdgeInsets.only(
                            left: 2.w, right: 2.w, top: 1.h, bottom: 1.h),
                        margin: EdgeInsets.only(bottom: 2.h),
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
      ),
    );
  }

  Future _onRefresh() async {
    await Future.delayed(const Duration(seconds: 1));
    return;
  }

  Future _onLoading() async {
    await Future.delayed(const Duration(seconds: 1));
    return;
  }
}
