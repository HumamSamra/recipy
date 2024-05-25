part of 'home.imports.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Gap(4.h),
          const AutoSizeText(
            'Home page',
            minFontSize: 30,
            textAlign: TextAlign.center,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4.w, vertical: 15),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.outline.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  hintText: 'Search Recent...'),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Row(
              children: [
                const Icon(Icons.fastfood_outlined),
                Gap(2.w),
                const AutoSizeText(
                  'Recent:',
                  minFontSize: 25,
                ),
                const Spacer(),
                TextButton(onPressed: () {}, child: const Text("View all"))
              ],
            ),
          ),
          Gap(1.h),
          Wrap(
            spacing: 4.w,
            alignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < 10; i++)
                Container(
                  padding: const EdgeInsets.all(15.0),
                  margin: EdgeInsets.only(bottom: 2.h),
                  width: 45.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:
                        Theme.of(context).colorScheme.outline.withOpacity(0.1),
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
        ],
      ),
    );
  }
}
