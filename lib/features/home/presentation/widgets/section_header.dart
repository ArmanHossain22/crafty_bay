import 'package:flutter/material.dart';

import '../../../../app/extensions/utils_extension.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key, required this.name, required this.onTap,
  });

  final String name;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Text(
            "Title",
            style: context.textTheme.titleMedium
        ),
        TextButton(
            onPressed: onTap,
            child: Text("See all")
        )
      ],
    );
  }
}