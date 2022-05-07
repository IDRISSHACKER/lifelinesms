class Message {
  late int id;
  late String content;
  late DateTime created_at;
  late var name;
  late var surname;
  late var phone;
  late var pays_id;
  late var email;

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
