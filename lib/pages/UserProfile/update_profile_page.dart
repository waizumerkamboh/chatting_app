import 'package:flutter/material.dart';

import '../../widget/primary_button.dart';

class UserUpdateProfileScreen extends StatelessWidget {
  const UserUpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(10)
              ),
              child:  Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.background,
                            borderRadius: BorderRadius.circular(100)


                          ),
                          child: const Center(
                            child: Icon(Icons.image,size: 40,),
                          ),

                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Text('Personal Info',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Text('Name',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        const TextField(
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: "Waiz Kamboh",
                            prefixIcon: Icon(Icons.person)
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Text('Email id',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        const TextField(
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                              hintText: "Waiz@gmail.com",
                              prefixIcon: Icon(Icons.alternate_email_rounded)
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Text('Phone',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        const TextField(
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                              hintText: "0314439220",
                              prefixIcon: Icon(Icons.phone)
                          ),
                        ),
                        const SizedBox(height: 40,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            PrimaryButton(
                                name: "Save",
                                icon: Icons.save,
                                onTap: (){}
                            ),
                          ],
                        ),







                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
