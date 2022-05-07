class User {
  late int id;
  late String name;
  late String surname;
  late int pays_id;
  late String email;
  late String phone;
  late int groupe_id;
  late DateTime created_at;
  late var title;

  User(this.id, this.name, this.surname, this.pays_id, this.email, this.phone,
      this.groupe_id, this.created_at, this.title);
}
