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

        Color? getColor(int index) {
          return router.activeIndex == index
              ? Theme.of(context).colorScheme.primary
              : null;
        }

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
          bottomNavigationBar: SizedBox(
            height: 8.h,
            child: StylishBottomBar(
              backgroundColor: Theme.of(context).colorScheme.background,
              option: AnimatedBarOptions(
                iconStyle: IconStyle.animated,
                barAnimation: BarAnimation.fade,
              ),
              elevation: 60,
              items: [
                BottomBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    color: getColor(0),
                  ),
                  title: const Text('Home'),
                  selectedColor: Theme.of(context).colorScheme.primary,
                ),
                BottomBarItem(
                  icon: Icon(
                    Icons.search,
                    color: getColor(1),
                  ),
                  title: const Text('Search'),
                  selectedColor: Theme.of(context).colorScheme.primary,
                ),
                BottomBarItem(
                  icon: Icon(
                    Icons.collections_bookmark_outlined,
                    color: getColor(2),
                  ),
                  title: const Text('Recipes'),
                  selectedColor: Theme.of(context).colorScheme.primary,
                  selectedIcon: Icon(
                    Icons.collections_bookmark_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                BottomBarItem(
                  icon: Icon(
                    Icons.settings,
                    color: getColor(3),
                  ),
                  title: const Text('Settings'),
                  selectedColor: Theme.of(context).colorScheme.primary,
                  selectedIcon: Icon(
                    Icons.settings,
                    color: Theme.of(context).colorScheme.primary,
                  ),
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
          ),
        );
      },
    );
  }
}
