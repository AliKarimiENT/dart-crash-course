void main(List<String> args) {
  final dad = FamilyMember(name: 'Dad');
  final mom = FamilyMember(name: 'Mom');
  // the + operator returns a Family
  final family = dad + mom;
  print(family);
}

class FamilyMember {
  final String name;

  const FamilyMember({required this.name});

  @override
  String toString() {
    return 'Family member (name = $name)';
  }
}

class Family {
  final List<FamilyMember> members;

  const Family({required this.members});

  @override
  String toString() {
    return 'Family (members = $members)';
  }
}

extension ToFamily on FamilyMember {
  Family operator +(
    FamilyMember other,
  ) =>
      Family(
        members: [this, other],
      );
}
