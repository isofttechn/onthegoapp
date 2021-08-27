import 'package:onthegoapp/main/task/taskcartegory/TaskModel.dart';

List<TaskCategoryDataModel> generateCategories() {
  List<TaskCategoryDataModel> categories = [];

  TaskCategoryDataModel model = TaskCategoryDataModel();
  model.name = "Hotels";
  // model.image = t7_ic_bed;

  TaskCategoryDataModel model1 = TaskCategoryDataModel();
  model1.name = "Flights";
  // model1.image = t7_ic_flight;

  TaskCategoryDataModel model2 = TaskCategoryDataModel();
  model2.name = "Foods";
  // model2.image = t7_ic_food;

  TaskCategoryDataModel model3 = TaskCategoryDataModel();
  model3.name = "Events";
  // model3.image = t7_ic_event;

  categories.add(model);
  categories.add(model1);
  categories.add(model2);
  categories.add(model3);

  return categories;
}
