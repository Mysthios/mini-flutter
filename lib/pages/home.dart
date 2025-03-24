import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/best_modell.dart';
import 'package:flutter_application_1/models/recomended_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<RecomendedModel> recomended = [];
  List<BestModel> best = [];


  void _getRecomended() {
    recomended = RecomendedModel.getRecomended();
  }


  @override
  void initState() {
    _getRecomended();
  }

  @override
  Widget build(BuildContext context) {
    _getRecomended();
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          searchField(),
          SizedBox(height: 30),
          recomendedSection(),
          SizedBox(height: 50),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  'Best of All Time',
                  style: TextStyle(
                    color: Color(0xff1D1617),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: 150,
                child: ListView.separated(
                  itemCount: best.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 20, right: 20),
                  separatorBuilder: (context, index) => SizedBox(width: 23),
                  itemBuilder: (context, index) {
                    return Container(
                      width: 120,
                      decoration: BoxDecoration(
                        color: best[index].boxColor,
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: SvgPicture.asset(best[index].iconPath),
                            ),
                          ),
                          Text(
                            best[index].name,
                            style: TextStyle(
                              color: Color(0xff1D1617),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }


// ===============================================
  Column recomendedSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Text(
            'Recommended',
            style: TextStyle(
              color: Color(0xff1D1617),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 30),
        Container(
          height: 150,
          child: ListView.separated(
            itemCount: recomended.length,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20, right: 20),
            separatorBuilder: (context, index) => SizedBox(width: 23),
            itemBuilder: (context, index) {
              return Container(
                width: 120,
                decoration: BoxDecoration(
                  color: recomended[index].boxColor,
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: SvgPicture.asset(recomended[index].iconPath),
                      ),
                    ),
                    Text(
                      recomended[index].name,
                      style: TextStyle(
                        color: Color(0xff1D1617),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }


// ===============================================
  Container searchField() {
    return Container(
      margin: EdgeInsets.only(top: 40, left: 20, right: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xff1D1617).withOpacity(0.11),
            blurRadius: 40,
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.all(15), //padding, ukuran kotak
          hintText: 'search',
          hintStyle: TextStyle(
            color: Color.fromARGB(255, 163, 163, 163),
            fontSize: 17,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(18),
            child: SvgPicture.asset('assets/icons/search.svg'),
          ),
          suffixIcon: Container(
            width: 100,
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  VerticalDivider(
                    color: Color.fromARGB(255, 0, 0, 0),
                    indent: 10,
                    endIndent: 10,
                    thickness: 0.1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: SvgPicture.asset('assets/icons/filter.svg'),
                  ),
                ],
              ),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18), //rounded
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }


// ===============================================
  AppBar appBar() {
    return AppBar(
      title: Text(
        'Home Page',
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.white38,
      elevation: 0.0,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset(
            'assets/icons/left arrow.svg',
            height: 13,
            width: 13,
          ),
        ),
      ),

      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            width: 30,
            decoration: BoxDecoration(
              color: Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(
              'assets/icons/dots.svg',
              height: 15,
              width: 15,
            ),
          ),
        ),
      ],
    );
  }
}
