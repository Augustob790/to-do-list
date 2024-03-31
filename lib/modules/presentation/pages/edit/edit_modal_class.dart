// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import '../../../domain/model/task.dart';
import '../../controller/controller.dart';
import 'widget/edit_modal.dart';

class EditNewTaskClass {
  init({
    required BuildContext context,
    required Controller controller,
    required int? id,
  }) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          scrollable: true,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          contentPadding: const EdgeInsets.all(0),
          content: EditNewTask(
              controller: controller,
              add: () async {
                if (controller.titleController.text.isNotEmpty) {
                  await controller.update(Task(
                      id: id,
                      title: controller.titleController.text,
                      description: controller.descriptionController.text,
                      dataInit: controller.dateInit.toIso8601String()));
                }
                await controller.getAllTaks();
                Navigator.pop(context);
              }),
        );
      },
    );
  }
}
