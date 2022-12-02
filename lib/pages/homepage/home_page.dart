import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text.rich(
                    TextSpan(
                        text: 'Hello Can!\n',
                        style: TextStyle(
                            fontFamily: 'FuturaHeavyBT',
                            color: Color(0xff6667AB),
                            fontSize: 30,),
                        children: [
                          TextSpan(
                            text: 'How are you feeling today?',
                            style: TextStyle(
                                color: Color(0xff9E9EB0),
                                fontFamily: 'FUTURAL',
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ]),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffFFC088),
                        borderRadius: BorderRadius.circular(23.0)),
                    child: Image.asset('assets/images/emoji.png', width: 64,),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            width: double.infinity,
            height: 105,
            child: Stack(
              children: [
                Positioned(
                  right: 0.0,
                  child: Container(
                    width: MediaQuery.of(context).size.width - 75,
                    height: 105,
                    decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                Positioned(
                  left: -16.0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Image.asset('assets/images/time_management.png', width: 95, ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Todays\'s Meds', style: TextStyle(fontSize: 22, fontFamily: 'FuturaHeavyBT',  color: Colors.white),),
                            SizedBox(height: 12,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Xeloda, 1 pill', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),),
                                SizedBox(width: 100,),
                                Text('3:00 PM', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
