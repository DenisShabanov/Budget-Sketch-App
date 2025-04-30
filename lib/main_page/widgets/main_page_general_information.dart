import 'package:flutter/material.dart';

class MainPageGeneralInformation extends StatefulWidget {
  const MainPageGeneralInformation({super.key});

  @override
  State<MainPageGeneralInformation> createState() =>
      _MainPageGeneralInformationState();
}

class _MainPageGeneralInformationState
    extends State<MainPageGeneralInformation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 147, 51, 234),
        borderRadius: BorderRadius.circular(10),
      ),

      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Мой баланс",
              style: TextTheme.of(
                context,
              ).bodyLarge?.copyWith(fontWeight: FontWeight.w700),
            ),
            Text(
              "\$125,400",
              style: TextTheme.of(
                context,
              ).labelLarge?.copyWith(color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.arrow_drop_down, color: Colors.red),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          'Расходы',
                          style: TextTheme.of(
                            context,
                          ).bodyMedium?.copyWith(color: Colors.white),
                        ),
                        Text(
                          '\$45,200',
                          style: TextTheme.of(context).bodySmall,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Доходы',
                          style: TextTheme.of(
                            context,
                          ).bodyMedium?.copyWith(color: Colors.white),
                        ),
                        Text(
                          '\$170,600',
                          style: TextTheme.of(context).bodySmall,
                        ),
                      ],
                    ),
                    Icon(Icons.arrow_drop_up, color: Colors.green),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
