

abstract class LivingThing {
  
  void breathe(){
    print('Breathing...');
  }
}

class Cat extends LivingThing {
  final String name;
  
  Cat(this.name);
  
  @override
  bool operator ==(covariant Cat other) => (other.name == name);
  
  @override
  // used the name to check if instances are unique
  int get hashCode => name.hashCode;
  
  void printName(){
    print(name);
  }
  
  factory Cat.fluffy(){
    return Cat('Fluffy');
  }
  
  factory Cat.sniffles(){
    return Cat('Sniffles');
  }
}

extension Run on Cat {
  void run(){
    print('$name is running...');
  }
}

class Person{
  final String firstName;
  final String lastName;
  
  Person(this.firstName, this.lastName);
  
}

extension FullName on Person{
  
  String get fullName => '$firstName $lastName';
}

void main(){
  final cat1 = Cat.fluffy();
  final cat2 = Cat.fluffy();
  final cat3 = Cat.sniffles();
  final mark = Person('Mark', 'Madhukar');
  
  cat3.run();
  cat1.printName();
  cat2.printName();
  print(cat1 == cat2);
  print(mark.fullName);
}