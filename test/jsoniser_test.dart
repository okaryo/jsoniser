import 'package:jsoniser/jsoniser.dart';
import 'package:test/test.dart';

class Test with Jsoniser {
  final String stringField;
  final int intField;
  final List<dynamic> listField;

  const Test(this.stringField, this.intField, this.listField);
}

void main() {
  final testClass = Test('string value', 10, ['list1', 'list2']);

  group('#toJson', () {
    test('should return json', () {
      final actual = testClass.toJson();
      final expected = {
        'stringField': 'string value',
        'intField': 10,
        'listField': [
          'list1',
          'list2',
        ],
      };
      expect(actual, expected);
    });
  });
}
