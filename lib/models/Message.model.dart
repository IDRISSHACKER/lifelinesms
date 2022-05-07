class Message {
  late int id;
  late String content;
  late DateTime created_at;
  late String name;
  late String surname;
  late String phone;
  late String pays_id;
  late String email;

  Message(
    this.id,
    this.content,
    this.created_at,
    this.name,
    this.surname,
    this.phone,
    this.pays_id,
    this.email
  );
}
