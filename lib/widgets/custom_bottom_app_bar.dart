import 'package:flutter/material.dart';
import 'package:nofapp/core/app_export.dart';

class CustomBottomAppBar extends StatefulWidget {
  CustomBottomAppBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomAppBarState createState() => CustomBottomAppBarState();
}

class CustomBottomAppBarState extends State<CustomBottomAppBar> {
  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: ImageConstant.imgHomeGray50002,
        activeIcon: ImageConstant.imgHomeGray50002,
        type: BottomBarEnum.Homegray50002,
        isSelected: true),
    BottomMenuModel(
      icon: ImageConstant.imgGroup1686553925chat,
      activeIcon: ImageConstant.imgGroup1686553925chat,
      type: BottomBarEnum.Group1686553925chat,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSearch,
      activeIcon: ImageConstant.imgSearch,
      type: BottomBarEnum.Search,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: SizedBox(
        height: 80.v,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            bottomMenuList.length,
            (index) {
              return InkWell(
                onTap: () {
                  for (var element in bottomMenuList) {
                    element.isSelected = false;
                  }
                  bottomMenuList[index].isSelected = true;
                  widget.onChanged?.call(bottomMenuList[index].type);
                  setState(() {});
                },
                child: bottomMenuList[index].isSelected
                    ? CustomImageView(
                        imagePath: bottomMenuList[index].activeIcon,
                        height: 32.adaptSize,
                        width: 32.adaptSize,
                        color: appTheme.gray50002,
                      )
                    : CustomImageView(
                        imagePath: bottomMenuList[index].icon,
                        height: 32.adaptSize,
                        width: 32.adaptSize,
                        color: appTheme.gray50002,
                      ),
              );
            },
          ),
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Homegray50002,
  Group1686553925chat,
  Search,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
    this.isSelected = false,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;

  bool isSelected;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
