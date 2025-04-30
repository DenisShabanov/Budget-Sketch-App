import 'package:buget_sketch_app/main_shell_page/view/main_shell_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PreviousPage extends StatelessWidget {
  const PreviousPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Budget Sketch',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                Image.asset('assets/image/previous_page_img.png'),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5.0,
                    horizontal: 30,
                  ),
                  child: Center(
                    child: Text(
                      'Ваш путь к финансовой свободе начинается здесь! Budget Buddy поможет вам контролировать финансы, планировать траты и уверенно двигаться к мечтам.',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        height: 2,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainShellPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 4,
                    backgroundColor: Color.fromARGB(255, 147, 51, 234),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 40),
                  ),
                  child: Text(
                    "Continue",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
