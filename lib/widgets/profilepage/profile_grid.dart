import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../model/explore_service.dart';

class ProfileGrid extends StatelessWidget {
  const ProfileGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: StaggeredGridView.countBuilder(
          itemCount: exploreserviceList.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 4,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: 120,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(exploreserviceList[index].pic!)),
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(15)),
              ),
            );
          },
          staggeredTileBuilder: (index) =>
              StaggeredTile.count(2, index.isEven ? 3 : 2)),
    );
  }
}
