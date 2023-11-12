import 'package:flutter/material.dart';
import 'package:kisan_mitra_for_bank/Applicants/applicant_tile.dart';
import 'package:kisan_mitra_for_bank/Applicants/applicants.dart';
import 'package:kisan_mitra_for_bank/pallete.dart';
import 'package:page_transition/page_transition.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    //List of crops
    List<Person> _personList = Person.personList;
    return Container(
        child: Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        const Align(
          alignment: Alignment.center,
          child: Text("Loan Applicants List",
              style: TextStyle(color: Pallete.mainFontColor, fontSize: 20)),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          height: size.height * .5,
          child: ListView.builder(
              itemCount: _personList.length,
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: const Placeholder(),
                              type: PageTransitionType.bottomToTop));
                    },
                    child:
                        ApplicantTile(index: index, PersonList: _personList));
              }),
        ),
      ],
    ));
  }
}
