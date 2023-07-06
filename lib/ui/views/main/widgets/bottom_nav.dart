import 'package:flutter/material.dart';

import '../../../common/app_colors.dart';
import 'bar_items.dart';

class BottomNav extends StatelessWidget {
  const BottomNav(
      {required this.items,
      required this.onTabSelected,
      required this.currentSelectedIndex,
      Key? key})
      : super(key: key);
  final List<BottomBarItem> items;
  final ValueChanged<int> onTabSelected;
  final int currentSelectedIndex;

  _updateIndex(int index) {
    onTabSelected(index);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _items = List.generate(items.length, (int index) {
      return _buildTabItem(
        item: items[index],
        index: index,
        onPressed: _updateIndex,
        context: context,
      );
    });
    return Container(
      // top border
      decoration: const BoxDecoration(
        color: AppColors.background,
        border: Border(
          top: BorderSide(color: Color.fromARGB(25, 0, 0, 0), width: 0.5),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // BottomPlayer(),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: _items,
          ),
        ],
      ),
    );
  }

  Widget _buildTabItem({
    required BottomBarItem item,
    required int index,
    required ValueChanged<int> onPressed,
    required BuildContext context,
  }) {
    Color color =
        currentSelectedIndex == index ? AppColors.primary : AppColors.secondary;
    FontWeight fontWeight =
        currentSelectedIndex == index ? FontWeight.w600 : FontWeight.w400;
    return Expanded(
      child: SizedBox(
        height: 72,
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () => onPressed(index),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(item.icon, color: color, size: 20),
                const SizedBox(height: 9),
                Text(
                  item.title,
                  style: TextStyle(
                      color: color, fontSize: 10.0, fontWeight: fontWeight),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
