import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:nutech/pages/personal_information.dart';
import 'package:nutech/pages/qualification.dart';
import 'package:badges/badges.dart';

import '../components/c_dropdown_b.dart';
import '../components/c_edit_profile_field.dart';
import '../components/profile_dropdown.dart';
import '../widgets/country.dart';

class EditProfile extends StatefulWidget {
  EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController dateinput = TextEditingController();
  List<DropdownMenuItem<String>> get genderDropdownItems {
    return [
      const DropdownMenuItem<String>(
        child: Text('Male'),
        value: '1',
      ),
      const DropdownMenuItem<String>(
        child: Text('Female'),
        value: '2',
      ),
      const DropdownMenuItem<String>(
        child: Text('Other'),
        value: '3',
      ),
    ];
  }

  List<DropdownMenuItem<String>> get disabilityDropdownItems {
    return [
      const DropdownMenuItem<String>(
        child: Text('Yes'),
        value: '1',
      ),
      const DropdownMenuItem<String>(
        child: Text('No'),
        value: '2',
      ),
    ];
  }

  List<DropdownMenuItem<String>> get minorityDropdownItems {
    return [
      const DropdownMenuItem<String>(
        child: Text('Yes'),
        value: '1',
      ),
      const DropdownMenuItem<String>(
        child: Text('No'),
        value: '2',
      ),
    ];
  }

  List<DropdownMenuItem<Country>> get dropdownCountry {
    return [
      DropdownMenuItem<Country>(
        child: const Text('Pakistan'),
        value: Country(id: 1, name: 'Pakistan'),
      ),
      DropdownMenuItem<Country>(
        child: const Text('Canada'),
        value: Country(id: 2, name: 'Canada'),
      ),
      DropdownMenuItem<Country>(
        child: const Text('India'),
        value: Country(id: 3, name: 'India'),
      )
    ];
  }

  List<DropdownMenuItem<String>> get statusDropdownItems {
    return [
      const DropdownMenuItem<String>(
        child: Text('Married'),
        value: '1',
      ),
      const DropdownMenuItem<String>(
        child: Text('Unmarried'),
        value: '2',
      ),
    ];
  }

  @override
  void _startAddQualification(BuildContext ctx) {
    Qualification();
    /*showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          child: Qualification(),
          behavior: HitTestBehavior.opaque,
        );
      },
    );*/
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            //top: 0,
            bottom: 0,
            right: 0,
            child: SvgPicture.asset(
              'assets/svg/qualification_bottom.svg',
              fit: BoxFit.cover,
            ),
          ),

          /*Padding(
            padding: EdgeInsets.only(left: 117.w, top: 60.h),
            child: Container(
                width: 142.w,
                height: 146.h,
                child: Image.asset('assets/images/profile_top.png')),
          ),
          Positioned(
            //top: 0,
            bottom: 0,
            right: 0,
            child: SvgPicture.asset(
              'assets/svg/qualification_bottom.svg',
              fit: BoxFit.cover,
            ),
          ),
          RPadding(
            padding: REdgeInsets.only(left: 215.w, top: 150.h),
            child: FloatingActionButton(
              onPressed: () {},
              child: Image.asset('assets/images/pointer_icon.png'),
              backgroundColor: Color(0xFF8B010B),
            ),
          ),*/

          SafeArea(
            child: SingleChildScrollView(
              child: RPadding(
                padding: REdgeInsets.fromLTRB(22, 0, 26, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => PersonalInformation()));
                              },
                              icon: const Icon(
                                Icons.arrow_back,
                              ),
                              color: Colors.black,
                            ),
                          ],
                        ),
                        //backgroundColor: Colors.white,
                        // foregroundColor: ,

                        Column(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => Qualification()));
                                  },
                                  icon: Image.asset(
                                      'assets/images/profile_icon.png'),
                                  color: Colors.black,
                                ),
                                IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => Qualification()));
                                  },
                                  icon: Text(
                                    'Logout',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Red Hat Display',
                                    ),
                                  ),
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Badge(
                      toAnimate: true,
                      shape: BadgeShape.circle,
                      badgeColor: Theme.of(context).primaryColor,
                      position: BadgePosition.bottomEnd(),
                      badgeContent: Image.asset(
                        'assets/images/pointer_icon.png',
                        width: 05.w,
                      ),
                      child: Container(
                          width: 142.w,
                          height: 146.h,
                          child: Image.asset('assets/images/profile_top.png')),
                    ),

                    Text(
                      'Neel Abbas',
                      style: TextStyle(
                        color: Color(0xFF8B010B),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Red Hat Display',
                      ),
                    ),
                    Text(
                      'Student',
                      style: TextStyle(
                        color: Color(0xFF5D5E5E),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Red Hat Display',
                      ),
                    ),

                    RPadding(
                      padding: REdgeInsets.only(left: 24),
                      child: Column(
                        children: [
                          CEditProfileFormField(
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
                            hintText: '13302-1728416212-1',
                            prefixIcon: Image.asset(
                                'assets/images/signup_finger_icon.png'),
                          ),
                          CEditProfileFormField(
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.name,
                            hintText: 'Father Name',
                            prefixIcon:
                                Image.asset('assets/images/full_name.png'),
                          ),
                          CProfileDropdownButtonFormField(
                              // value: _currentOccupationSelectedValue,
                              isExpanded: true,
                              onChanged: (value) {
                                print(value);
                              },
                              hintText: ' Female',
                              prefixIcon:
                                  Image.asset('assets/images/gender_icon.png'),
                              items: genderDropdownItems),
                          CProfileDropdownButtonFormField(
                              // value: _currentOccupationSelectedValue,
                              isExpanded: true,
                              onChanged: (value) {
                                print(value);
                              },
                              hintText: 'Married',
                              prefixIcon:
                                  Image.asset('assets/images/status_icon.png'),
                              items: statusDropdownItems),
                          CEditProfileFormField(
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
                            hintText: 'English,Urdu,Punjabi',
                            prefixIcon:
                                Image.asset('assets/images/language_icon.png'),
                          ),
                          CEditProfileFormField(
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
                            hintText: '+9236-2689323',
                            prefixIcon:
                                Image.asset('assets/images/call_icon.png'),
                          ),
                          CEditProfileFormField(
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
                            hintText: 'Somewhere,Punjab,Pakistan',
                            prefixIcon:
                                Image.asset('assets/images/location_icon.png'),
                          ),
                          CEditProfileFormField(
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
                            hintText: '5-Nov-1978',
                            testControllor: dateinput,
                            prefixIcon:
                                Image.asset('assets/images/date_icon.png'),
                            suffixIcon: Image.asset(
                                'assets/images/suffix_birth_icon.png'),

                            // enabled: false,
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(
                                      2000), //DateTime.now() - not to allow to choose before today.
                                  lastDate: DateTime(2101));

                              //lastDate: DateTime.now()- DateTime(2101));

                              if (pickedDate != null) {
                                print(
                                    pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                String formattedDate =
                                    DateFormat('yyyy-MM-dd').format(pickedDate);
                                print(
                                    formattedDate); //formatted date output using intl package =>  2021-03-16
                                //you can implement different kind of Date Format here according to your requirement

                                setState(() {
                                  dateinput.text =
                                      formattedDate; //set output date to TextField value.
                                });
                              } else {
                                print("Date is not selected");
                              }
                            },
                          ),
                          CEditProfileFormField(
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
                            hintText: 'abbasOfficial@gmail.com',
                            prefixIcon:
                                Image.asset('assets/images/email_icon.png'),
                          ),
                          CEditProfileFormField(
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
                            hintText: 'Punjab',
                            prefixIcon:
                                Image.asset('assets/images/province_icon.png'),
                          ),
                          CEditProfileFormField(
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
                            hintText: 'Programmer',
                            prefixIcon: Image.asset(
                                'assets/images/programmer_icon.png'),
                          ),
                          CProfileDropdownButtonFormField(
                              // value: _currentOccupationSelectedValue,
                              isExpanded: true,
                              onChanged: (value) {
                                print(value);
                              },
                              hintText: 'Minority',
                              prefixIcon: Image.asset(
                                  'assets/images/minority_icon.png'),
                              icon: Image.asset(
                                  'assets/images/dropdown_icon.png'),
                              items: minorityDropdownItems),
                          CProfileDropdownButtonFormField(
                              // value: _currentOccupationSelectedValue,
                              isExpanded: true,
                              onChanged: (value) {
                                print(value);
                              },
                              hintText: 'Disability',
                              prefixIcon: Image.asset(
                                  'assets/images/disability_icon.png'),
                              icon: Image.asset(
                                  'assets/images/dropdown_icon.png'),
                              items: disabilityDropdownItems),
                          CProfileDropdownButtonFormField(
                            // value: _currentOccupationSelectedValue,
                            isExpanded: true,
                            onChanged: (value) {
                              print(value);
                            },
                            hintText: 'Other Nationality',
                            prefixIcon: Image.asset(
                                'assets/images/nationality_icon.png'),

                            icon:
                                Image.asset('assets/images/dropdown_icon.png'),
                            //items: dropdownCountry
                            items: [],
                          ),
                        ],
                      ),
                    ),

                    //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
                  ],
                ),
              ),
            ),
          ),
          /*Align(
            alignment: Alignment.bottomRight,
            child: Container(
              decoration: BoxDecoration(
                //  boxShadow: BoxShadow(spreadRadius: 7),
                shape: BoxShape.circle,
                border: Border.all(
                    color: Colors.white, width: 2, style: BorderStyle.solid),
              ),
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 55),
              width: 60,
              height: 62,
              child: FloatingActionButton(
                // focusColor: Colors.white,
                backgroundColor: Theme.of(context).primaryColor,
                onPressed: () {},
                child: Image.asset(
                  'assets/images/pointer_icon.png',
                  width: 80.w,
                ),
              ),
            ),
          ),*/
        ],
      ),
    );
  }
}
