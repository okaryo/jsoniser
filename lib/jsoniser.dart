library jsoniser;

import 'dart:mirrors';

mixin Jsoniser<T> {
  Map<String, dynamic> toJson() {
    final mirror = reflect(this);
    final Map<String, dynamic> json = {};

    for (var value in mirror.type.declarations.values) {
      if (value is VariableMirror) {
        final fieldName = MirrorSystem.getName(value.simpleName);
        json[fieldName] = mirror.getField(value.simpleName).reflectee;
      }
    }
    return json;
  }

  // T fromJson(Map<String, dynamic> json) {}
}
