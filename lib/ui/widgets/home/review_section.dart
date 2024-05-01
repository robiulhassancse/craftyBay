
import 'package:ecommerce/ui/screens/create_review_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReviewListScreen extends StatefulWidget {
  const ReviewListScreen({super.key});

  @override
  State<ReviewListScreen> createState() => _ReviewListScreenState();
}

class _ReviewListScreenState extends State<ReviewListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('Reviews'),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context,index){
                return SizedBox(
                  height: 130,
                  child: Card(
                    margin: const EdgeInsets.all(8),
                    color: Colors.white,
                    elevation: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey.shade300,
                                radius: 16,
                                child: const Icon(Icons.person,size: 20,color: Colors.white70,),
                              ),
                              const SizedBox(width: 8,),
                              const Text('Robiul Hassan',style: TextStyle(fontWeight: FontWeight.w600),),
                            ],
                          ),
                          const SizedBox(height: 8,),
                          Text('''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type ''',style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey.shade700,
                          ),),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.2),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      children: [
                        Wrap(
                          children: [
                            Text('Reviews',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                            SizedBox(width: 4,),
                            Text('(1000)',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                          ],
                        )
                      ],
                    ),
                   FloatingActionButton(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(50),
                     ),
                     backgroundColor: Colors.green,
                     onPressed: (){
                       Get.to(()=> CreateReviewScreen());
                     },child: const Icon(Icons.add,size: 30,color: Colors.white,),)
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
