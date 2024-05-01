import 'package:flutter/material.dart';

class CreateReviewScreen extends StatefulWidget {
  const CreateReviewScreen({super.key});

  @override
  State<CreateReviewScreen> createState() => _CreateReviewScreenState();
}

class _CreateReviewScreenState extends State<CreateReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('Create Review'),
        elevation: 1,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'First Name',
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Last Name',
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  maxLines: 8,
                  decoration: const InputDecoration(
                      hintText: 'Write Review',
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16)),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: double.infinity,
                    child: ElevatedButton(onPressed: () {}, child: const Text('Submit',style: TextStyle(
                      color: Colors.white,
                    ),)))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
