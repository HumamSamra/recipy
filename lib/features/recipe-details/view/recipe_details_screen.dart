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
    final panelController = PanelController();
    final scrollController = ScrollController();

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
            Stack(
              children: [
                CachedNetworkImage(
                  imageUrl: model.thumbUrl!,
                  fit: BoxFit.cover,
                  height: 40.h,
                  width: double.infinity,
                ),
                Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: const [
                        .2,
                        1,
                      ],
                          colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.5),
                      ])),
                ),
              ],
            ),
            SafeArea(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 3.h, horizontal: 4.w),
                    child: Row(
                      children: [
                        SquaredButton.backButton(context),
                        const Spacer(),
                        SquaredButton(
                          icon: Icons.share,
                          onTap: () {},
                        ),
                        const Gap(10),
                        SquaredButton(
                          icon: Icons.save_outlined,
                          onTap: () {},
                        )
                      ],
                    )),
              ),
            ),
            SlidingUpPanel(
              maxHeight: 100.h,
              minHeight: 70.h,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(30)),
              color: Theme.of(context).colorScheme.background,
              controller: panelController,
              panelSnapping: true,
              snapPoint: 0.9,
              panel: Column(
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
                      controller: scrollController,
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
                      ],
                    ),
                  ),
                  Gap(2.h)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
