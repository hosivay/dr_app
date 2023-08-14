import 'package:flutter/material.dart';

Widget settingsItem({
  required BuildContext context,
  required IconData icon,
  required String title ,
  Function()? onTap  
}) {
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
                  size: 30,
                ),
              ),
            ),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall,
          )
        ],
      ),
    ),
  );
}
