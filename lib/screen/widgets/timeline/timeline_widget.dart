import 'package:flutter/material.dart';

class TimelineItem extends StatelessWidget {

  const TimelineItem(
      {super.key, required this.title,
      required this.subTitle,
      required this.time,
      required this.icon,
      this.isFirst = false,
      this.isLast = false,
      this.showEditIcon = false});
  final String title;
  final String subTitle;
  final String time;
  final IconData icon;
  final bool isFirst;
  final bool isLast;
  final bool showEditIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.symmetric(horizontal: 10.0),
      //padding: EdgeInsets.all(10.0),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            children: [
              if (!isFirst)
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: SizedBox(
                    width: 2.0,
                    height: 20.0,
                    child: VerticalDivider(
                      color: Colors.white,
                      thickness: 2,
                      width: 10,
                    ),
                  ),
                ),
              Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3000),
                      color: const Color(0xff574928)),
                  child: Center(
                      child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3000),
                        color: Theme.of(context).primaryColor),
                    child: Icon(icon, size: 16.0, color: Colors.black),
                  ))),
            ],
          ),
          const SizedBox(width: 30.0),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(title,
                          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(subTitle,
                          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 12, fontWeight: FontWeight.w500 , color: Colors.grey)),
                    ],
                  ),
                  Container(
                      child: showEditIcon
                          ? Icon(
                              Icons.edit,
                              color: Theme.of(context).primaryColor,
                            )
                          : Container())
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
