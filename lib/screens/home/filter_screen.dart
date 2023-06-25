import 'package:flutter/material.dart';
import 'package:pa_rentalcam/screens/home/search.dart';

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
    "Cannon",
    "Fuji",
  ];

  Widget _buildCameraFilter() {
    return SingleChildScrollView(
        child: Column(
      children: listFilter
          .map((e) => GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => search(filter: e)));
              },
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Text(e),
              )))
          .toList(),
    ));
  }
}
