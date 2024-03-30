import 'package:flutter/material.dart';
import '../../domain/model/task.dart';
import '../../domain/usecases/delete_task.dart';
import '../../domain/usecases/get_all_task.dart';
import '../../domain/usecases/insert_task.dart';
import '../../domain/usecases/update_task.dart';

class HomePageController {
  final GetAllTaskUsecase getAllTaskUsecase;
  final DeleteTaskUsecase deleteTaskUsecase;
  final InsertTaskUsecase insertTaskUsecase;
  final UpdateTaskUsecase updateTaskUsecase;

  HomePageController({
    required this.getAllTaskUsecase,
    required this.deleteTaskUsecase,
    required this.insertTaskUsecase,
    required this.updateTaskUsecase,
  });

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  DateTime dateFinal = DateTime.now();
  DateTime dateInit = DateTime.now();
  List<String> categoria = [
    'Categoria',
    'Categoria 1',
    'Categoria 2',
    'Categoria 3',
    'Categoria 4',
    'Categoria 5',
    'Categoria 6',
  ];
  List<Task> tasks = [];

  inicialize() {
    titleController.text = "";
    descriptionController.text = "";
    dateInit = DateTime.now();
  }


  insert(Task task) async {
    try {
      await insertTaskUsecase(task);
    } catch (e) {
      throw e.toString();
    }
  }

  getAllTaks() async {
    try {
      tasks = await getAllTaskUsecase();
    } catch (e) {
      throw e.toString();
    }
  }

  update(Task task) async {
    try {
      await updateTaskUsecase(task);
    } catch (e) {
      throw e.toString();
    }
  }

  delete(int id) async {
    try {
      await deleteTaskUsecase(id);
    } catch (e) {
      throw e.toString();
    }
  }
}
