import 'package:flutter/material.dart';
import 'package:pa_rentalcam/screens/home/search.dart';

import '../../app/styles/app_styles.dart';

class FilterListDialog extends StatefulWidget {
  const FilterListDialog({Key? key}) : super(key: key);

  @override
  State<FilterListDialog> createState() => _FilterListDialogState();
}

class _FilterListDialogState extends State<FilterListDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: EdgeInsets.only(
          left: 24,
          right: 24,
          top: 10,
          bottom: 24,
        ),
        child: Column(
          children: [
            _closeButton(),
            const SizedBox(height: 10),
            Text(
              'Filter kamera',
              style: AppStyles.textBlackColor.copyWith(
                fontSize: 16,
                fontWeight: AppStyles.semiBold,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: _buildCameraFilter(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _closeButton() {
    return Align(
      alignment: Alignment.centerRight,
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.close,
          size: 30,
        ),
      ),
    );
  }

  final listFilter = [
    "Sony",
    "Canon",
    "Fuji",
  ];
  Widget _buildCameraFilter() {
    return SingleChildScrollView(
      child: Column(
        children: listFilter.map((e) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => search(filter: e)));
            },
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffFBA651),
              ),
              margin: EdgeInsets.all(6),
              padding: EdgeInsets.symmetric(horizontal: 12),
              alignment: Alignment.center,
              child: Text(
                e,
                style: AppStyles.textBlackColor.copyWith(
                    fontSize: 16,
                    fontWeight: AppStyles.semiBold,
                    color: Colors.white),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
