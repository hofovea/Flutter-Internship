import 'package:guest_counter_with_freezed/models/data_generator.dart';
import 'package:guest_counter_with_freezed/models/dinner/dinner.dart';

void main(List<String> arguments) async {
  // Dinner dinner = Dinner.fromList(DataGenerator.getInvitationList());
  // print(
  //     'Number of guests: ${dinner.numberOfInvitations}\nGuests: ${dinner.guests}');
  // print('Dinner price: ${dinner.getPrice()}');
  // print('-----------JSON TASK2------------');
  // String guestsJson = DataGenerator.getGuestsJson();
  // var jsonMap = json.decode(guestsJson);
  // Dinner dinner1 = Dinner.fromJson(jsonMap);
  // print(
  //     'Number of guests: ${dinner1.numberOfInvitations}\nGuests: ${dinner1.guests}');
  // print('Dinner price: ${dinner1.getPrice()}');
  print('-----------ASYNC TASK------------');
  DataGenerator.writeJsonGuestsToFile();
  Dinner dinnerAsync = await DataGenerator.getJDinnerFromFile();
  print(
      'Number of guests: ${dinnerAsync.numberOfInvitations}\nGuests: ${dinnerAsync.guests}');
  print('Dinner price: ${await dinnerAsync.getPrice()}');
  dinnerAsync.saveGuestsToJsonFile();
}
