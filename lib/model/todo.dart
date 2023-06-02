class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

ToDo.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        todoText = map['todoText'],
        isDone = map['isDone'];

Map<String, dynamic> toMap() {
  return {
    'id': id,
    'todoText': todoText,
    'isDone': isDone,
  };

  }

  static List<ToDo> todoList() {
    return [

    ];
  }


}