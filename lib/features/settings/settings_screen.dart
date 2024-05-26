part of 'settings_screen.imports.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Gap(4.h),
          const DefaultBanner(
            title: 'Settings',
            subTitle: 'Adjust your preferences',
            icon: Icons.settings,
          ),
          ListTile(
            onTap: () => _showSelectTheme(context),
            leading: const Icon(FontAwesomeIcons.circleHalfStroke),
            title: const Text("Theme Mode"),
            subtitle: const Text("Change your App Theme"),
          ),
          ListTile(
            onTap: () => _showSelectPrimaryColor(context),
            leading: const Icon(Icons.color_lens_outlined),
            title: const Text("Primary Color"),
            subtitle: const Text("Change your Primary Color"),
          ),
          ListTile(
            onTap: () => _showSelectFontFamily(context),
            leading: const Icon(Icons.font_download_outlined),
            title: const Text("Primary Font"),
            subtitle: const Text("Change your App Font"),
          ),
        ],
      ),
    );
  }

  _showSelectPrimaryColor(BuildContext context) {
    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      enableDrag: true,
      isDismissible: true,
      isScrollControlled: false,
      builder: (context) {
        var currectActive = context.read<ThemeBloc>().state.color;
        return ListView(
          shrinkWrap: true,
          children: [
            const DefaultBanner(
              title: 'Primary Color',
              subTitle: 'Change current App Color',
            ),
            for (var color in AppColors.supportedColorsNames)
              ListTile(
                onTap: () {
                  context
                      .read<ThemeBloc>()
                      .add(ThemeEvent.changeColor(Utils.textToColor(color)));
                },
                leading: Container(
                  width: 30,
                  height: 30,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Utils.textToColor(color),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                title: Text(
                  color,
                  style: TextStyle(
                    fontWeight: currectActive == Utils.textToColor(color)
                        ? FontWeight.bold
                        : null,
                  ),
                ),
                subtitle: const Text("Change to this color"),
              )
          ],
        );
      },
    );
  }

  _showSelectFontFamily(BuildContext context) {
    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      enableDrag: true,
      isDismissible: true,
      isScrollControlled: false,
      builder: (context) {
        var currectActive = context.read<ThemeBloc>().state.font;
        return ListView(
          shrinkWrap: true,
          children: [
            const DefaultBanner(
              title: 'Font Theme',
              subTitle: 'Change current App Font',
            ),
            for (var font in AppFonts.fontFamilies)
              ListTile(
                onTap: () {
                  context.read<ThemeBloc>().add(ThemeEvent.changeFont(
                      font.replaceAll(' ', '_').toLowerCase()));
                },
                title: Text(
                  font,
                  style: TextStyle(
                    fontWeight: currectActive == font ? FontWeight.bold : null,
                    fontFamily: font,
                  ),
                ),
                subtitle: Text(
                  "Change to this font",
                  style: TextStyle(
                    fontFamily: font,
                  ),
                ),
              )
          ],
        );
      },
    );
  }

  _showSelectTheme(BuildContext context) {
    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      enableDrag: true,
      isDismissible: true,
      isScrollControlled: false,
      builder: (context) {
        var currectActive = context.read<ThemeBloc>().state.themeMode;
        return ListView(
          shrinkWrap: true,
          children: [
            const DefaultBanner(
              title: 'Theme Mode',
              subTitle: 'Change current App Theme',
            ),
            for (var theme in ThemeMode.values)
              ListTile(
                onTap: () {
                  context.read<ThemeBloc>().add(ThemeEvent.changeTheme(theme));
                },
                leading: Icon(theme == ThemeMode.dark
                    ? FontAwesomeIcons.moon
                    : theme == ThemeMode.light
                        ? FontAwesomeIcons.sun
                        : FontAwesomeIcons.gears),
                title: Text(
                  theme.name,
                  style: TextStyle(
                    fontWeight: currectActive == theme ? FontWeight.bold : null,
                  ),
                ),
                subtitle: Text(
                  "Change to ${theme.name} mode",
                ),
              )
          ],
        );
      },
    );
  }
}
