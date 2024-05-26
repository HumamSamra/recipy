part of 'home.imports.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final refreshController = RefreshController();
    return BlocConsumer<HomeBloc, HomeState>(listener: (context, state) {
      if (state.requestState == RequestState.ERROR) {
        refreshController.refreshFailed();
      } else if (state.requestState == RequestState.LOADED) {
        refreshController.refreshCompleted();
      }
    }, builder: (context, state) {
      return RefreshableList(
        enableLoading: false,
        onRefhresh: () {
          context.read<HomeBloc>().add(const HomeEvent.started());
        },
        refreshController: refreshController,
        children: [
          Gap(2.h),
          const DefaultBanner(
            title: 'Homepage',
            subTitle: 'Search your favorite food',
            icon: Icons.home_outlined,
          ),
          Gap(1.h),
          DefaultSubBanner(
            title: 'Recent Recipes',
            icon: Icons.fastfood_outlined,
            onTap: () {
              AutoTabsRouter.of(context).setActiveIndex(1);
            },
          ),
          Gap(1.h),
          Builder(
            builder: (context) {
              if (state.requestState == RequestState.LOADED) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1.w),
                  child: Wrap(
                    spacing: 2.w,
                    alignment: WrapAlignment.center,
                    children: [
                      for (final item in state.recipes)
                        RecipeCard(
                          title: item.meal!,
                          subTitle: item.category!,
                          imagePath: item.thumbUrl!,
                          onTap: () {},
                        ),
                    ],
                  ),
                );
              } else if (state.requestState == RequestState.ERROR) {
                return Center(
                  child: AutoSizeText(
                    state.message!,
                    minFontSize: 18,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
                );
              } else {
                return const Center(
                  child: AutoSizeText('Loading..'),
                );
              }
            },
          )
        ],
      );
    });
  }
}
