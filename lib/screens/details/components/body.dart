import 'package:flutter/material.dart';

import 'package:my_cv/components/default_button.dart';
import 'package:my_cv/models/template.dart';
import 'package:my_cv/screens/use_template/use_template.dart';
import 'package:my_cv/size_config.dart';
import 'package:my_cv/screens/details/components/color_dots.dart';
import 'package:my_cv/screens/details/components/template_description.dart';
import 'package:my_cv/screens/details/components/top_rounded_container.dart';
import 'package:my_cv/screens/details/components/template_images.dart';

class Body extends StatelessWidget {
  final Template template;

  const Body({required Key key, required this.template}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TemplateImages(template: template, key: ValueKey(null),),
        TopRoundedContainer(
          color: Colors.white,
          key: ValueKey(null),
          child: Column(
            children: [
              TemplateDescription(
                template: template,
                pressOnSeeMore: () {}, key: ValueKey(null),
              ),
              TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                key: ValueKey(null),
                child: Column(
                  children: [
                    TopRoundedContainer(
                      color: Colors.white,
                      key: ValueKey(null),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          bottom: getProportionateScreenWidth(40),
                          top: getProportionateScreenWidth(15),
                        ),
                        child: DefaultButton(
                          text: "Use Template",
                          press: () {
                            if (template.id == 1) {
                              Navigator.pushNamed(
                                  context, UseTemplateScreen.routeName);
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
