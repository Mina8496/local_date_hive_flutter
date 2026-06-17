import 'package:hive_flutter/adapters.dart';
import 'package:local_date_hive_flutter/features/models/person.dart';

class PersonAdapter extends TypeAdapter<Person> {
  @override
  Person read(BinaryReader reader) {
    return Person(
      name: reader.readString(),
      age: reader.readInt(),
      friends: reader.readList().cast<Person>(),
      salary: reader.readDouble(),
    );
  }

  @override
  int get typeId => 0;

  @override
  void write(BinaryWriter writer, Person obj) {
    writer.writeString(obj.name);
    writer.writeInt(obj.age);
    writer.writeList(obj.friends);
    writer.writeDouble(obj.salary);
  }
}
