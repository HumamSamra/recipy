part of 'search.imports.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    final refreshController = RefreshController();

    return DefaultScaffold(
      child: Column(
        children: [
          Gap(2.h),
          const DefaultBanner(
            title: 'Search',
            subTitle: 'What are you thinking of?',
            icon: Icons.search,
          ),
          DefaultSearchField(
            controller: searchController,
            onChanged: (value) {
              context
                  .read<SearchBloc>()
                  .add(SearchEvent.search(searchController.text));
            },
          ),
          Gap(1.h),
          Expanded(
            child: RefreshableList(
              enableLoading: false,
              onRefresh: () {
                context
                    .read<SearchBloc>()
                    .add(SearchEvent.search(searchController.text));
              },
              children: [
                BlocConsumer<SearchBloc, SearchState>(
                    listener: (context, state) {
                  if (state.requestState == RequestState.ERROR) {
                    refreshController.refreshFailed();
                  } else if (state.requestState == RequestState.LOADING) {
                    refreshController.refreshCompleted();
                  }
                }, builder: (context, state) {
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

                  if (state.recipes.isEmpty) {
                    return Center(
                      child: AutoSizeText(
                        'No Recipes found',
                        minFontSize: 14,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                    );
                  }
                  return Center(
                    child: Wrap(
                      spacing: 2.w,
                      children: [
                        for (var item in state.recipes)
                          RecipeCard(
                            title: item.meal!,
                            subTitle: item.category ?? '',
                            imagePath: item.thumbUrl!,
                            onTap: () {
                              context.router
                                  .push(RecipeDetailsRoute(model: item));
                            },
                          ),
                      ],
                    ),
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
