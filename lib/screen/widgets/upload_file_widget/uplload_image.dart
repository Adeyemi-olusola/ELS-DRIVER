import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class UploadImageWidget extends StatefulWidget {
  const UploadImageWidget({super.key});

  @override
  State<UploadImageWidget> createState() => _UploadImageWidgetState();
}

class _UploadImageWidgetState extends State<UploadImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DottedBorder(
          color: Theme.of(context).primaryColor,
          strokeWidth: 1,
          dashPattern: const <double>[9, 9],
          radius: Radius.circular(10),
          child: Container(
            decoration: BoxDecoration(color: Theme.of(context).cardColor),
            width: MediaQuery.of(context).size.width,
            height: 55,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.file_copy,
                  color: Theme.of(context).primaryColor,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Upload your picture',
                  style: Theme.of(context).textTheme.bodySmall,
                )
              ],
            ),
          )),
    );
  }
}
