import 'dart:core';

import 'package:onthegoapp/main/Home/Db5Model.dart';
import 'package:onthegoapp/main/Home/DbImages.dart';

// import 'DbColors.dart';

List<Db5CategoryData> generateCategories() {
  List<Db5CategoryData> categories = [];

  Db5CategoryData model = Db5CategoryData();
  model.name = "Hotels";
  model.image = d5_ic_bed;

  Db5CategoryData model1 = Db5CategoryData();
  model1.name = "Flights";
  model1.image = d5_ic_flight;

  Db5CategoryData model2 = Db5CategoryData();
  model2.name = "Foods";
  model2.image = d5_ic_food;

  Db5CategoryData model3 = Db5CategoryData();
  model3.name = "Events";
  model3.image = d5_ic_event;

  categories.add(model);
  categories.add(model1);
  categories.add(model2);
  categories.add(model3);
  return categories;
}

List<Db6BestDestinationData> generateBestDestination() {
  List<Db6BestDestinationData> bestDestinationData = [];

  Db6BestDestinationData model = Db6BestDestinationData();
  model.name = "Malawi";
  model.rating = "4";
  model.image = db5_item1;

  Db6BestDestinationData model2 = Db6BestDestinationData();
  model2.name = "Japan";
  model2.rating = "2";
  model2.image = db5_item2;

  Db6BestDestinationData model3 = Db6BestDestinationData();
  model3.name = "London";
  model3.rating = "1";
  model3.image = db5_item3;

  Db6BestDestinationData model4 = Db6BestDestinationData();
  model4.name = "San Fransisco";
  model4.rating = "5";
  model4.image = db5_item4;

  bestDestinationData.add(model);
  bestDestinationData.add(model2);
  bestDestinationData.add(model3);
  bestDestinationData.add(model4);
  bestDestinationData.add(model);
  bestDestinationData.add(model);
  return bestDestinationData;
}
