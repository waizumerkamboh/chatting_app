import 'package:flutter/material.dart';

class NewContactTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const NewContactTile({super.key, required this.title, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
        child: Row(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Theme.of(context).colorScheme.primary
              ),
              child: Icon(icon,
                size: 30,),
            ),
            SizedBox(width: 20,),
            Text(title,
              style: Theme.of(context).textTheme.bodyLarge,

            )
          ],
        ),

      ),
    );
  }
}
