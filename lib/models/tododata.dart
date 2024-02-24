class Tododata {
  final String todos;
  final bool isdone;


  Tododata({
    required this.todos,
    required this.isdone,

  });

  factory Tododata.fromJson(Map<String, dynamic> json) {
    return Tododata(
      todos: json['todos'],
      isdone: json['isdone'],
    );
  }
}