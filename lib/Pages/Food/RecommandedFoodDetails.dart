import 'package:e_commerce_app/utils/Dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/Colors.dart';

class RecommandedFoodDetails extends StatelessWidget {
  const RecommandedFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            bottom: PreferredSize(preferredSize: Size.fromHeight(0),child: Text("Pizza"),),
            pinned: true,
            backgroundColor: AppColors.mainColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('assets/images/Pizza.jpg',
                  width: double.maxFinite, fit: BoxFit.cover),
            ),
          ),
          SliverToBoxAdapter(
            child: Text('hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi'),
          )
        ],
      ),
    );
  }
}
