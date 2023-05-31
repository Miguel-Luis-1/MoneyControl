class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

ToDo.fromMap(Map map)
    : this.id = map['id'],
      this.todoText = map['todoText'],
      this.isDone = false;


  Map toMap(){

    return {
      'id': this.id,
      'todoText': this.todoText,
      'isDone': this.isDone,
    };

  }

  static List<ToDo> todoList() {
    return [

    ];
  }


}