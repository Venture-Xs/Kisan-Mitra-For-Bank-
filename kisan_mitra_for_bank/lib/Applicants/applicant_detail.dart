import 'package:flutter/material.dart';

import 'package:kisan_mitra_for_bank/Applicants/applicants.dart';
import 'package:kisan_mitra_for_bank/pallete.dart';

class ApplicantDetail extends StatefulWidget {
  final int personId;
  const ApplicantDetail({Key? key, required this.personId}) : super(key: key);

  @override
  State<ApplicantDetail> createState() => _ApplicantDetailState();
}

//calling list of plants
List<Person> _personList = Person.personList;

class _ApplicantDetailState extends State<ApplicantDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(children: [
        const SizedBox(
          height: 30,
        ),
        const Align(
          alignment: Alignment.center,
          child: Text("Applicant Detail",
              style: TextStyle(color: Colors.black, fontSize: 20)),
        ),

        //Applicant Detail
        Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(children: [
              //Applicant Name

              Text(_personList[widget.personId].name,
                  style: const TextStyle(
                      color: Pallete.mainFontColor,
                      fontSize: 23,
                      fontWeight: FontWeight.bold)),
              Text(_personList[widget.personId].location,
                  style: TextStyle(color: Colors.black, fontSize: 20)),

              //Applicant Address
              Row(
                children: [
                  Text("Age: ",
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                  const SizedBox(width: 30),
                  Text(_personList[widget.personId].age.toString(),
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                ],
              ),

              //Applicant Contact
              Row(
                children: [
                  const Text("Applicant Contact :",
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                  const SizedBox(width: 30),
                  Text("9841234567",
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                ],
              ),

              //Applicant Income
              Row(
                children: [
                  Text("Applicant Income:",
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                  const SizedBox(width: 30),
                  Text(_personList[widget.personId].income.toString(),
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                ],
              ),

              //Applicant Asset Value
              Row(
                children: [
                  const Text("Applicant Asset Value: ",
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                  const SizedBox(width: 30),
                  Text(_personList[widget.personId].asset_value.toString(),
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                ],
              ),
              SizedBox(height: 5),
              //Applicant Crops
              Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Applicant Crops: ",
                        style: TextStyle(color: Colors.black, fontSize: 18)),
                  ),
                  const SizedBox(height: 5),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(_personList[widget.personId].crops.toString(),
                        style: TextStyle(color: Colors.black, fontSize: 18)),
                  ),
                ],
              ),

              const SizedBox(height: 5),

              //Applicant Govt Schemes
              Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Applicant Govt Schemes",
                        style: TextStyle(color: Colors.black, fontSize: 18)),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        _personList[widget.personId].gov_schemes.toString(),
                        style: TextStyle(color: Colors.black, fontSize: 18)),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),

              //Applicant Loan Amount
              Row(
                children: [
                  Text("Loan Amount: ",
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                  const SizedBox(width: 30),
                  Text(_personList[widget.personId].loan_amount.toString(),
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                ],
              ),

              SizedBox(
                height: 5,
              ),

              //Applicant Loan Crop
              Row(
                children: [
                  Text("Loan Crop:",
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                  const SizedBox(width: 30),
                  Text(_personList[widget.personId].loan_crop.toString(),
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                ],
              ),

              //Applicant Cibil Score
              Row(
                children: [
                  Text("Cibil Score :",
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                  const SizedBox(width: 30),
                  Text(_personList[widget.personId].cibil_score.toString(),
                      style:
                          TextStyle(color: Pallete.primaryColor, fontSize: 20)),
                ],
              ),
            ]))
      ])),
    );
  }
}
