import 'package:flutter/material.dart';
import 'package:sgm_admin/common/widgets/button.dart';
import 'package:sgm_admin/common/widgets/tab_bar.dart';
import 'package:sgm_admin/common/widgets/text.dart';
import 'package:sgm_admin/utils/extensions/space_extension.dart';
import 'package:sgm_admin/utils/extensions/theme_data_extension.dart';
import 'package:sgm_admin/utils/tokens/icon_sizes.dart';
import 'package:sgm_admin/utils/tokens/spaces.dart';

// class ButtonsPage extends StatelessWidget {
//   List<Widget> _getButtons() {
//     return KButtonStyle.values
//         .map((style) => Padding(
//               padding: const EdgeInsets.only(bottom: KPaddings.betweenSection),
//               child: BuildButtons(style: style),
//             ))
//         .toList();
//   }

//   const ButtonsPage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         // scrolledUnderElevation: .1,

//         title: Text(
//           "Buttons",
//           style: context.kTexts.HEADING_TITLE_2,
//         ),
//         // bottom: KAppBarBottom(
//         //   key: key,
//         // ),
//       ),
//       body: SizedBox(
//         width: double.infinity,
//         height: double.infinity,
//         child: SingleChildScrollView(
//             padding:
//                 const EdgeInsets.symmetric(horizontal: KPaddings.sideDefault),
//             child: Column(
//               children: [
//                 KSpaces.spaceL.height,
//                 Column(
//                   children: _getButtons(),
//                 ),
//               ],
//             )),
//       ),
//     );
//   }
// }

// class BuildButtons extends StatelessWidget {
//   final KButtonStyle style;
//   const BuildButtons({
//     super.key,
//     required this.style,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         KButton(label: style.name.replaceAll("_", " "), style: style),
//         KSpaces.spaceXXS.height,
//         Row(
//           children: [
//             Expanded(
//               child: KButton(
//                 label: "Lable",
//                 style: style,
//               ),
//             ),
//             KSpaces.spaceXS.width,
//             Expanded(
//               child: KButton(
//                 icon: const Icon(
//                   Icons.grid_4x4,
//                   size: KIconSizes.iconXS,
//                 ),
//                 label: "Label",
//                 style: style,
//               ),
//             ),
//           ],
//         ),
//         KSpaces.spaceXXS.height,
//         Row(
//           children: [
//             Expanded(
//               child: KButton(
//                 label: "Lable",
//                 trailing: const Icon(
//                   Icons.arrow_forward_ios,
//                   size: KIconSizes.iconXXS,
//                 ),
//                 style: style,
//               ),
//             ),
//             KSpaces.spaceXS.width,
//             Expanded(
//               child: KButton(
//                 icon: const Icon(
//                   Icons.grid_4x4,
//                   size: KIconSizes.iconXS,
//                 ),
//                 label: "Label",
//                 trailing: const Icon(
//                   Icons.arrow_forward_ios,
//                   size: KIconSizes.iconXXS,
//                 ),
//                 style: style,
//               ),
//             ),
//           ],
//         ),
//         KSpaces.spaceXXS.height,
//         Row(
//           children: [
//             Expanded(
//               flex: 1,
//               child: KButton(
//                 label: "Lable",
//                 style: style,
//               ),
//             ),
//             KSpaces.spaceXS.width,
//             Expanded(
//               flex: 2,
//               child: KButton(
//                 icon: const Icon(
//                   Icons.grid_4x4,
//                   size: KIconSizes.iconS,
//                 ),
//                 style: style,
//               ),
//             ),
//           ],
//         ),
//         KSpaces.spaceXXS.height,
//         Row(
//           children: [
//             Expanded(
//               flex: 1,
//               child: KButton(
//                 label: "Lable",
//                 style: style,
//               ),
//             ),
//             KSpaces.spaceXS.width,
//             Expanded(
//               flex: 3,
//               child: KButton(
//                 icon: const Icon(
//                   Icons.grid_4x4,
//                   size: KIconSizes.iconS,
//                 ),
//                 style: style,
//               ),
//             ),
//           ],
//         )
//       ],
//     );
//   }
// }

// class KAppBarBottom extends StatelessWidget implements PreferredSizeWidget {
//   const KAppBarBottom({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: KPaddings.sideDefault),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const KText(
//             "Button",
//             style: KTextStyle.HEADING_TITLE_1,
//             textAlign: TextAlign.start,
//           ),
//           KSpaces.spaceL.height,
//           const KTabBar(
//             labels: [
//               "Basic",
//               "Status",
//               "Gradient",
//               "Mix",
//             ],
//           ),
//           KSpaces.spaceS.height,
//         ],
//       ),
//     );
//   }

//   @override
//   Size get preferredSize => const Size.fromHeight(100);
// }
