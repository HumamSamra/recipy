part of 'bottom_tabs.imports.dart';

@RoutePage()
class BottomTabsScreen extends StatelessWidget {
  const BottomTabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      routes: const [
        HomeRoute(),
        SearchRoute(),
        MyRecipesRoute(),
        SettingsRoute(),
      ],
      builder: (context, child, pageController) {
        var router = context.tabsRouter;
        return Scaffold(
          body: child,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.router.push(const AddRecipeRoute());
            },
            shape: const CircleBorder(),
            child: const Icon(
              Icons.add,
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: StylishBottomBar(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
            option: AnimatedBarOptions(
              iconStyle: IconStyle.animated,
            ),
            items: [
              BottomBarItem(
                icon: const Icon(Icons.home_outlined),
                title: const Text('Home'),
              ),
              BottomBarItem(
                icon: const Icon(Icons.search),
                title: const Text('Search'),
              ),
              BottomBarItem(
                icon: const Icon(Icons.collections_bookmark_outlined),
                title: const Text('Recipes'),
              ),
              BottomBarItem(
                icon: const Icon(Icons.settings),
                title: const Text('Settings'),
              ),
            ],
            fabLocation: StylishBarFabLocation.center,
            notchStyle: NotchStyle.circle,
            hasNotch: true,
            currentIndex: router.activeIndex,
            onTap: (index) {
              router.setActiveIndex(index);
            },
          ),
        );
      },
    );
  }
}
