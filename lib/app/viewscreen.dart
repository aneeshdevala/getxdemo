import 'package:demoapp/app/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';

import 'package:get/get_state_manager/get_state_manager.dart';

class MyHomePage extends GetView<HomeController> {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(35),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                controller: controller.titlecontroller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  hintText: 'Add text',
                ),
              ),
              const Divider(),
              Obx(() => SingleChildScrollView(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.addtext.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            leading: Text('${index + 1}'),
                            title: Text(controller.addtext[index]),
                          ),
                        );
                      },
                    ),
                  )),
              ElevatedButton(
                  onPressed: () {
                    controller.updateButton();
                  },
                  child: const Text('update'))
            ],
          ),
        ),
      )),
    );
  }
}
