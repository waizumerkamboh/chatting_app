import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String name;
  final IconData icon;
  final VoidCallback onTap;
  const PrimaryButton({super.key, required this.name, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding:  const EdgeInsets.symmetric(horizontal: 40,vertical: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).colorScheme.primary
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            const SizedBox(width: 10,),
            Text(
              name,
              style: Theme.of(context).textTheme.bodyLarge,
            )


          ],
        ),
      ),
    )
    ;
  }
}
