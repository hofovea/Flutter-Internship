import 'dart:convert';
import 'dart:io';

mixin JsonConvertable {
  Future<bool> writeJson({required String filename}) async {
    JsonEncoder encoder = new JsonEncoder.withIndent('  ');
    var file = await File(filename).writeAsString(
        encoder.convert({'type': this.runtimeType.toString(), 'data': this}));
    print("Written to file ${file.path}");
    return true;
  }
}
