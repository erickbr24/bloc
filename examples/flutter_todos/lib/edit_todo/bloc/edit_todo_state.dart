part of 'edit_todo_bloc.dart';

enum EditTodoStatus { initial, loading, success, failure }

extension EditTodoStatusX on EditTodoStatus {
  bool get isLoadingOrSuccess => [
        EditTodoStatus.loading,
        EditTodoStatus.success,
      ].contains(this);
}

class EditTodoState extends Equatable {
  //should have the same as the object being edited
  const EditTodoState({
    this.status = EditTodoStatus.initial,
    this.initialTodo,
    this.title = '',
    this.description = '',
    this.dateCreated,
    this.deadlineDate,
  });

  final EditTodoStatus status;
  final Todo? initialTodo;
  final String title;
  final String description;
  final DateTime? dateCreated;
  final DateTime? deadlineDate;

  bool get isNewTodo => initialTodo == null;

  EditTodoState copyWith({
    EditTodoStatus? status,
    Todo? initialTodo,
    String? title,
    String? description,
    DateTime? dateCreated,
    DateTime? deadlineDate,
  }) {
    return EditTodoState(
      status: status ?? this.status,
      initialTodo: initialTodo ?? this.initialTodo,
      title: title ?? this.title,
      description: description ?? this.description,
      dateCreated: dateCreated ?? this.dateCreated,
      deadlineDate: deadlineDate ?? this.deadlineDate,
    );
  }

  @override
  List<Object?> get props =>
      [status, initialTodo, title, description, deadlineDate, dateCreated];
}
