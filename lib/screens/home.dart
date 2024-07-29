import 'package:flutter/material.dart';
import 'package:invest/colors.dart';
import 'package:invest/screens/dashboard/dasboard.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient( colors: [Color(0xfffedfff), Color(0xffe6effe)], stops: [0.25, 0.75], begin: Alignment.topRight, end: Alignment.bottomLeft, )
        ),
        child: Padding(
        
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 56),
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height / 1.8,
              
              child: Image.asset('assets/image.png'),
            ),
            const SizedBox(height: 56,),
            Text('Investments -\nsimple and reliable',textAlign: TextAlign.start,style: TextStyle(color: black,fontWeight: FontWeight.bold,fontSize: 32,)),
            const SizedBox(height: 24,),
            const Text('Earn money with your favorite brands, buy shares directly from your card and track your portfolio',style: TextStyle(fontWeight: FontWeight.w600),),
            const SizedBox(height: 24,),
            SizedBox(
              width: MediaQuery.of(context).size.width - 50,
              height: 50,
              child:  ElevatedButton
              
              (
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(black)),
                onPressed: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return const DashBoard();
                 }));
                }, child: const Text('Continue',style: TextStyle(color: Colors.white),)))
          ],
        ),
            ),
      ),);
  }
}