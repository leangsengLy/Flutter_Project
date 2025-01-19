import 'package:aba_app/widget/serviceContent.dart';
import 'package:flutter/material.dart';

class CoperateService extends StatelessWidget {
  const CoperateService({
    super.key,
    required this.label,
    this.isViewAll = false,
    required this.listServer,
  });
  final String label;
  final List<Map<String, dynamic>> listServer;
  final bool isViewAll;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Text(
                  isViewAll ? "VIEW ALL" : "",
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                isViewAll
                    ? const Icon(
                        Icons.navigate_next_outlined,
                        color: Colors.white,
                      )
                    : const Text(""),
              ],
            )
          ],
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.all(18),
          height: 135,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color.fromARGB(29, 0, 0, 0),
            borderRadius: BorderRadius.circular(20),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: listServer.isNotEmpty
                  ? [
                      ...listServer.map(
                        (val) => ServiceContent(
                          image: val['image'],
                          lable: val['label'],
                        ),
                      )
                    ]
                  : [const Text('No data')],
            ),
          ),
        )
      ],
    );
  }
}
