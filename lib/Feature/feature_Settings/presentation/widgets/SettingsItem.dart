import 'package:flutter/material.dart';

Widget settingsItem(
    {required BuildContext context,
    required IconData icon,
    required String title,
    Function()? onTap,
    List<Widget>? actions,
    bool? redColor = false}) {
  return InkWell(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: 65,
                height: 65,
                color: Theme.of(context).primaryColor.withOpacity(0.1),
                    
                child: Icon(
                  icon,
                  size: 30,color: redColor! ? Colors.red : null,
                ),
              ),
            ),
          ),
          Text(
            title,
            style: !redColor
                ? Theme.of(context).textTheme.headlineSmall
                : Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Colors.red),
          ),
          const Spacer(),
          Row(
            children: actions ?? [],
          )
        ],
      ),
    ),
  );
}
