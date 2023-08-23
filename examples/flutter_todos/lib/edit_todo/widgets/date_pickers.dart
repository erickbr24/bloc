import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/edit_todo_bloc.dart';

class _DeadlineDateField extends StatelessWidget {
  const _DeadlineDateField();

  @override
  Widget build(BuildContext context) {
    final state = context.select((EditTodoBloc bloc) => bloc.state);

    return ListTile(
      title: Text('Due Date'),
      subtitle: Text(state.deadlineDate.toString()), // Format this as desired
      onTap: state.status.isLoadingOrSuccess
          ? null
          : () async {
              final date = await showDatePicker(
                context: context,
                initialDate: state.deadlineDate ?? DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime(2100),
              );

              if (date != null) {
                context
                    .read<EditTodoBloc>()
                    .add(EditTodoDeadlineDateChanged(date));
              }
            },
    );
  }
}
