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
      return DefaultScaffold(
        child: Column(
          children: [
            Gap(1.h),
            DefaultSubBanner(
              title: 'Recent Recipes',
              icon: Icons.fastfood_outlined,
              onTap: () {
                AutoTabsRouter.of(context).setActiveIndex(1);
              },
            ),
            Gap(1.h),
            Expanded(
              child: RefreshableList(
                enableLoading: false,
                onRefresh: () {
                  context.read<HomeBloc>().add(const HomeEvent.started());
                },
                refreshController: refreshController,
                children: [
                  Builder(
                    builder: (context) {
                      if (state.requestState == RequestState.ERROR) {
                        return Center(
                          child: AutoSizeText(
                            state.message!,
                            minFontSize: 18,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.error,
                            ),
                          ),
                        );
                      } else if (state.requestState == RequestState.LOADING) {
                        return Center(
                          child: Wrap(
                            spacing: 3.w,
                            children: [
                              for (int i = 0; i < 10; i++)
                                Padding(
                                  padding: EdgeInsets.only(bottom: 1.h),
                                  child: ShimmerLoading(
                                    height: 30.h,
                                    width: 45.w,
                                  ),
                                )
                            ],
                          ),
                        );
                      }

                      return Center(
                        child: Wrap(
                          spacing: 3.w,
                          children: [
                            for (final item in state.recipes)
                              RecipeCard(
                                title: item.meal!,
                                subTitle: item.category!,
                                imagePath: item.thumbUrl!,
                                onTap: () {
                                  context.router.push(RecipeDetailsRoute(
                                    model: item,
                                  ));
                                },
                              ),
                          ],
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
