# jsoniser

Dart package that provides class serialization to json.

## Usage
```dart
class User with Jsoniser {
  final string name;
  final int age;

  const User(this.name, this.age);
}

final user = User('okaryo', 100);
print(user.toJson());
// {'name': 'okaryo', 'age': 100}
```
