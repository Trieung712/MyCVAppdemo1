import 'package:flutter/material.dart';
import 'package:my_cv/components/template_card.dart';
import 'package:my_cv/models/template.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class BestTemplates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Templates",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: demoTemplates.length,
          itemBuilder: (context, index) {
            return TemplateCard(template: demoTemplates[index], key: ValueKey(null),);
          },
        ),
      ],
    );
  }
}
