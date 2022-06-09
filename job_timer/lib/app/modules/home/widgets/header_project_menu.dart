import 'package:flutter/material.dart';
import 'package:job_timer/app/core/entities/project_status.dart';

class HeaderProjectMenu extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return LayoutBuilder(
      builder: ((context, constraints) => Container(
            color: Colors.red,
            height: constraints.maxHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: constraints.maxWidth * 0.5,
                  child: DropdownButtonFormField<ProjectStatus>(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      contentPadding: const EdgeInsets.all(10),
                      isCollapsed: true,
                    ),
                    items: ProjectStatus.values.map((e) {
                      return DropdownMenuItem<ProjectStatus>(
                        value: e,
                        child: Text(e.toString()),
                      );
                    }).toList(),
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(
                  width: constraints.maxWidth * 0.4,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                    label: const Text('Novo Projeto'),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  @override
  double get maxExtent => 80;

  @override
  double get minExtent => 80;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
