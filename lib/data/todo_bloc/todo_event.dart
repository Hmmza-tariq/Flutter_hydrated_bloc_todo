part of 'todo_bloc.dart';

abstract class TodoEvent extends Equatable {
  const TodoEvent();

  @override
  List<Object> get props => [];
}

class TodoStarted extends TodoEvent {}

class AddTodo extends TodoEvent {
  final Todo todo;

  const AddTodo({required this.todo});

  @override
  List<Object> get props => [todo];
}

class RemoveTodo extends TodoEvent {
  final Todo todo;

  const RemoveTodo({required this.todo});

  @override
  List<Object> get props => [todo];
}

class AlterTodo extends TodoEvent {
  final int index;

  const AlterTodo({required this.index});

  @override
  List<Object> get props => [index];
}
