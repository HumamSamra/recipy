abstract class ApiEndpoints {
  static const _baseUrl = "https://www.themealdb.com/api/json/v1/1/";
  static const getRecipes = "${_baseUrl}search.php";
  static const getCategories = '/list.php?c=list';
  static const getAreas = '/list.php?a=list';
  static const getIngredients = '/list.php?i=list';

  static get baseUrl => _baseUrl;
}
