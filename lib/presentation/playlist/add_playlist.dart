import 'package:flutter/material.dart';
import 'package:musicvoc/core/other_consts.dart';

class AddPlaylist extends StatelessWidget {
  const AddPlaylist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.check,
                size: 25,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            kHeight10,
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    kHeight10,
                    Text(
                      'Enter Playlist Name',
                      style: TextStyle(
                        fontSize: 17,
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Type Here',
                        hintStyle: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(170, 158, 158, 158),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
