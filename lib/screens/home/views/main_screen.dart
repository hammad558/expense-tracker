
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/Data/Data.dart';
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child : Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width :50,
                        height :50,
                        decoration: BoxDecoration(
                          shape:  BoxShape.circle,
                          color: Colors.yellow
                        ),
                      ),
                      Icon(CupertinoIcons.person_3_fill,
                      color: Colors.yellow[900])
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('welcome',style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color : Theme.of(context).colorScheme.outline
                    ),
                    ),
                      Text('Hammad',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onBackground

                      ),

                      )
                    ],
                  )
                ],
              ),
              IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.settings))
            ],
          ),
           const SizedBox(height: 20,),
           Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width/2,
            decoration: BoxDecoration(
                gradient : LinearGradient(
                    colors :[
                      Theme.of(context).colorScheme.primary,
                      Theme.of(context).colorScheme.secondary,
                      Theme.of(context).colorScheme.tertiary,
                    ],
                    transform: const GradientRotation(3.14/4)


                ),
              borderRadius:  BorderRadius.circular(25)
            ),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 const Text(
                   'Total Balance',
                   style :TextStyle(
                     fontSize: 16,
                     color : Colors.white,
                       fontWeight: FontWeight.w600
                   )

                 ),
                const  SizedBox(height:12 ,),
                 const Text(' RS 5000 ',
                  style : TextStyle(
                    fontSize: 40,
                    color :Colors.white,
                    fontWeight: FontWeight.bold
                  )
                 ),
                 const  SizedBox(height:12 ,),
                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 20),
                   child: Row(
                     children: [
                       Row(
                         children: [
                           Container(
                             width :25,
                             height : 25,
                             decoration: const BoxDecoration(
                               color: Colors.white,
                               shape: BoxShape.circle
                             ),
                             child: const Center(
                               child : Icon(
                                 CupertinoIcons.arrow_down,
                                 color: Colors.greenAccent,
                                 size : 12,
                               )
                             ),

                           ),
                           SizedBox(width :8),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               const Text(
                                   'Income',
                                   style :TextStyle(
                                       fontSize: 16,
                                       color : Colors.white,
                                       fontWeight: FontWeight.w600
                                   )

                               ),
                               const Text(' RS 3000 ',
                                   style : TextStyle(
                                       fontSize: 40,
                                       color :Colors.white,
                                       fontWeight: FontWeight.bold
                                   )
                                ),
                             ],
                           )
                         ],
                       ),
                       Row(
                         children: [
                           Container(
                             width :25,
                             height : 25,
                             decoration: const BoxDecoration(
                                 color: Colors.white,
                                 shape: BoxShape.circle
                             ),
                             child: const Center(
                                 child : Icon(
                                   CupertinoIcons.arrow_down,
                                   color: Colors.red ,
                                   size : 12,
                                 )
                             ),

                           ),
                           SizedBox(width :8),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               const Text(
                                   'Expenses',
                                   style :TextStyle(
                                       fontSize: 16,
                                       color : Colors.white,
                                       fontWeight: FontWeight.w600
                                   )

                               ),
                               const Text(' RS 1000 ',
                                   style : TextStyle(
                                       fontSize: 40,
                                       color :Colors.white,
                                       fontWeight: FontWeight.bold
                                   )
                               ),
                             ],
                           )
                         ],
                       )
                     ],
                   ),
                 )
               ],
             ),

          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text(
                ' Transactions',
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.outline,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                ' View All',
                style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.outline,
                    fontWeight: FontWeight.bold
                ),
              )
            ],

          ),
          const SizedBox(height: 20,),
          Expanded(
            child: ListView.builder(
              itemCount: TransactionsData.length,
              itemBuilder: (context,int i){
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(

                                width : 50,
                                height : 50,
                                decoration: BoxDecoration(
                                  color : TransactionsData[i]['color'],
                                  shape: BoxShape.circle
                                ),
                              ),

                               Icon(
                                Icons.food_bank,
                                color: Colors.white,
                               )
                              ],
                              ),
                            ],
                          ),
                          SizedBox(width: 12),
                          Text(
                            TransactionsData[i]['name'],
                            style: TextStyle(
                              fontSize: 14,
                              color : Theme.of(context).colorScheme.outline,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                               Text(
                                 TransactionsData[i]['totalAmount'] ,
                                 style :TextStyle(
                                   fontSize: 14,
                                     color : Theme.of(context).colorScheme.outline,
                                     fontWeight: FontWeight.w600
                                 ),
                               ),
                              Text(
                               TransactionsData[i]['date'],
                                style :TextStyle(
                                    fontSize: 14,
                                    color : Theme.of(context).colorScheme.outline,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              }
            ),
          )
        ],
      ),
    ),
    );
  }
}
