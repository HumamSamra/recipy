part of 'recipe_details.imports.dart';

@RoutePage()
class RecipeDetailsScreen extends StatelessWidget {
  final RecipeModel model;
  const RecipeDetailsScreen({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    final controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(model.youtubeUrl!)!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        ));
    return Scaffold(
      body: YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: controller,
        ),
        builder: (context, player) => Stack(
          children: [
            Hero(
              tag: model.id!,
              child: CachedNetworkImage(
                imageUrl: model.thumbUrl!,
                fit: BoxFit.cover,
                height: 40.h,
                width: double.infinity,
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 4.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Material(
                          color: Theme.of(context)
                              .colorScheme
                              .background
                              .withOpacity(.4),
                          borderRadius: BorderRadius.circular(5),
                          child: InkWell(
                            onTap: () {
                              context.router.maybePop();
                            },
                            borderRadius: BorderRadius.circular(5),
                            child: Ink(
                              padding: EdgeInsets.all(2.w),
                              child: const Icon(
                                Icons.arrow_back_ios_rounded,
                                size: 28,
                              ),
                            ),
                          )),
                      Material(
                          color: Theme.of(context)
                              .colorScheme
                              .background
                              .withOpacity(.4),
                          borderRadius: BorderRadius.circular(5),
                          child: InkWell(
                            onTap: () {
                              context.router.maybePop();
                            },
                            borderRadius: BorderRadius.circular(5),
                            child: Ink(
                              padding: EdgeInsets.all(2.w),
                              child: const Icon(
                                Icons.share,
                                size: 28,
                              ),
                            ),
                          )),
                    ],
                  )),
            ),
            SlidingUpPanelWidget(
              panelController: SlidingUpPanelController(),
              controlHeight: 70.h,
              anchor: 0.4,
              dragCancel: null,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 9,
                      spreadRadius: 6,
                      color: Theme.of(context)
                          .colorScheme
                          .onBackground
                          .withOpacity(0.2),
                      offset: const Offset(0, -1),
                    )
                  ],
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    const Gap(15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 80.0,
                          height: 6.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Theme.of(context)
                                .colorScheme
                                .outline
                                .withOpacity(.5),
                          ),
                        ),
                      ],
                    ),
                    const Gap(15.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: AutoSizeText(
                        model.meal!,
                        minFontSize: 26,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: AutoSizeText(
                        '${model.category!} | ${model.area!}',
                        minFontSize: 20,
                        style: TextStyle(
                          color: Theme.of(context)
                              .colorScheme
                              .outline
                              .withOpacity(0.8),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Gap(1.h),
                    player,
                    Gap(1.h),
                    Expanded(
                      child: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: AutoSizeText(
                              model.instructions!,
                              minFontSize: 16,
                              style: const TextStyle(
                                height: 1.8,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Gap(2.h)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
