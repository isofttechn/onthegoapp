import 'package:onthegoapp/main/task/taskcartegory/TaskModel.dart';

List<TaskCategoryDataModel> generateCategories() {
  List<TaskCategoryDataModel> categories = [];

  TaskCategoryDataModel model = TaskCategoryDataModel("Hotels", "");

  TaskCategoryDataModel model1 = TaskCategoryDataModel("Flights", "");

  TaskCategoryDataModel model2 = TaskCategoryDataModel("Foods", "");

  TaskCategoryDataModel model3 = TaskCategoryDataModel("Events", "");

  categories.addAll([model, model1, model2, model3]);

  return categories;
}
