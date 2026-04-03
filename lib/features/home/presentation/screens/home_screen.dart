import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../app/asset_paths.dart';
import '../../../shared/presentation/widgets/home_category_list.dart';
import '../widgets/app_bar_icon_button.dart';
import '../widgets/home_slider.dart';
import '../widgets/product_search_bar.dart';
import '../widgets/section_header.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          spacing: 16,
          children: [
            ProductSearchBar(),
            HomeSlider(),
            SectionHeader(
              onTap: ()
              {
                
              },
              name: "All Categories",
            ),
            HomeCategoryList()
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: SvgPicture.asset(AssetPaths.navLogoSvg),
      actions: [
        AppBarIconButton(
          onTap: (){

          },
          icon: Icons.person,
        ),
        const SizedBox(width: 8),
        AppBarIconButton(
          onTap: (){

          },
          icon: Icons.call,
        ),
        const SizedBox(width: 8),
        AppBarIconButton(
          onTap: (){

          },
          icon: Icons.notifications_active_sharp,
        )
      ],
    );
  }
}
