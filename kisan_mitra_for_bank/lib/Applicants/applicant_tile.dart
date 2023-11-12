import 'package:flutter/material.dart';
import 'package:kisan_mitra_for_bank/Applicants/applicant_detail.dart';
import 'package:kisan_mitra_for_bank/Applicants/applicants.dart';
import 'package:kisan_mitra_for_bank/pallete.dart';

import 'package:page_transition/page_transition.dart';

// A widget to Display Crop Dta
class ApplicantTile extends StatelessWidget {
  const ApplicantTile({
    Key? key,
    required this.index,
    required this.PersonList,
  }) : super(key: key);

  final int index;
  final List<Person> PersonList;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      //Display Crop Detail Page
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                child: ApplicantDetail(
                  personId: PersonList[index].personId,
                ),
                type: PageTransitionType.bottomToTop));
      },

      //Design
      child: Container(
        decoration: BoxDecoration(
          color: Pallete.primaryColor.withOpacity(.1),
          borderRadius: BorderRadius.circular(15),
        ),
        height: 80.0,
        padding: const EdgeInsets.only(left: 10, top: 10),
        margin: const EdgeInsets.only(bottom: 10, top: 10),
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Crop Image over Green Circle
            // Person Name
            Positioned(
              bottom: 5,
              left: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Person Name
                  Text(
                    PersonList[index].name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Pallete.blackColor,
                    ),
                  ),

                  //Category
                  Text(PersonList[index].location),
                ],
              ),
            ),
            // Price Detail
            Container(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                children: [
                  Text(
                    r'Rs' + PersonList[index].loan_amount.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Pallete.primaryColor,
                    ),
                  ),
                  Text(
                    "Low Risk",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
