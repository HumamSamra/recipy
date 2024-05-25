part of 'add_recipe.imports.dart';

@RoutePage()
class AddRecipeScreen extends StatelessWidget {
  const AddRecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Recipe"),
        elevation: 3,
        shadowColor: Colors.black,
      ),
    );
  }
}
