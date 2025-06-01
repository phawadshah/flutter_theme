import 'package:flutter/material.dart';
import 'package:sgm_admin/common/widgets/text.dart';

class TextsPage extends StatelessWidget {
  const TextsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const KText(
          "Texts",
          style: KTextStyle.HEADING_TITLE_2,
        ),
        centerTitle: false,
        titleSpacing: 0,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              KText(
                "Text Small",
                style: KTextStyle.TEXT_SMALL_REGULAR,
              ),
              SizedBox(height: 10),
              KText(
                "Text Normal",
                style: KTextStyle.TEXT_NORMAL_REGULAR,
              ),
              SizedBox(height: 10),
              KText(
                "Text Large",
                style: KTextStyle.TEXT_LARGE_REGULAR,
              ),
              SizedBox(height: 10),
              KText(
                "Text Extra Large",
                style: KTextStyle.TEXT_EXTRA_LARGE_REGULAR,
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              KText(
                "Text Medium Small",
                style: KTextStyle.TEXT_SMALL_MEDIUM,
              ),
              SizedBox(height: 10),
              KText(
                "Text Medium Normal",
                style: KTextStyle.TEXT_NORMAL_MEDIUM,
              ),
              SizedBox(height: 10),
              KText(
                "Text Medium Large",
                style: KTextStyle.TEXT_LARGE_MEDIUM,
              ),
              SizedBox(height: 10),
              KText(
                "Text Medium Extra Large",
                style: KTextStyle.TEXT_EXTRA_LARGE_MEDIUM,
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              KText(
                "Text Bold Small",
                style: KTextStyle.TEXT_SMALL_BOLD,
              ),
              SizedBox(height: 10),
              KText(
                "Text Bold Normal",
                style: KTextStyle.TEXT_NORMAL_BOLD,
              ),
              SizedBox(height: 10),
              KText(
                "Text Bold Large",
                style: KTextStyle.TEXT_LARGE_BOLD,
              ),
              SizedBox(height: 10),
              KText(
                "Text Bold Extra Large",
                style: KTextStyle.TEXT_EXTRA_LARGE_BOLD,
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
