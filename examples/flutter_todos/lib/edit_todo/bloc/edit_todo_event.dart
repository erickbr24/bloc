part of 'edit_todo_bloc.dart';

abstract class EditTodoEvent extends Equatable {
  const EditTodoEvent();

  @override
  List<Object> get props => [];
}

class EditTodoTitleChanged extends EditTodoEvent {
  const EditTodoTitleChanged(this.title);

  final String title;

  @override
  List<Object> get props => [title];
}

class EditTodoDescriptionChanged extends EditTodoEvent {
  const EditTodoDescriptionChanged(this.description);

  final String description;

  @override
  List<Object> get props => [description];
}

class EditTodoDeadlineDateChanged extends EditTodoEvent {
  const EditTodoDeadlineDateChanged(this.deadlineDate);

  final DateTime deadlineDate;

  @override
  List<Object> get props => [deadlineDate];
}

class EditTodoSubmitted extends EditTodoEvent {
  const EditTodoSubmitted();
}
