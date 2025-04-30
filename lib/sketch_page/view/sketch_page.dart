import 'package:buget_sketch_app/sketch_page/widgets/sketch_page_chek_box.dart';
import 'package:buget_sketch_app/sketch_page/widgets/sketch_page_input_fields.dart';
import 'package:flutter/material.dart';

class SketchPage extends StatefulWidget {
  const SketchPage({super.key});

  @override
  State<SketchPage> createState() => _SketchPageState();
}

class _SketchPageState extends State<SketchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.close, size: 25),
        ),
        title: Text(
          'Новая транзакция',
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.6,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Text(
                      'Тип',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.black,

                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  SketchPageChekBox(),
                  SketchPageInputFields(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
