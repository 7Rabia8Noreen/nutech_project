import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:nutech/pages/qualification.dart';
import 'package:nutech/utils/routes.dart';

import '../components/c_dropdown_b.dart';
import '../components/c_elevated_button.dart';
import '../components/c_text_form_field.dart';
import '../widgets/province.dart';
import '../widgets/country.dart';

class PersonalInformation extends StatefulWidget {
  PersonalInformation({Key? key}) : super(key: key);

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  InputDecoration getInputDecoration(
      {required Widget prefixIcon,
      Widget? suffixIcon,
      required String hintText}) {
    return InputDecoration(
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      hintText: hintText,
    );
  }

  final _occupation = [
    "Serving Army",
    "Serving Air Force",
    "Private Job",
    "Other",
  ];

  final _gender = [
    "Male",
    "Female",
  ];

  String? _selectedGender = 'Gender';
  String? _currentOccupationSelectedValue = "Other";

  TextEditingController dateinput = TextEditingController();
  //text editing controller for text field

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

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

  List<DropdownMenuItem<String>> get occupationDropdownItems {
    return [
      const DropdownMenuItem<String>(
        child: Text('Private Job'),
        value: '1',
      ),
      const DropdownMenuItem<String>(
        child: Text('Govt Job'),
        value: '2',
      ),
      const DropdownMenuItem<String>(
        child: Text('Business Man'),
        value: '3',
      ),
      const DropdownMenuItem<String>(
        child: Text('Serving Rangers'),
        value: '4',
      ),
    ];
  }

  List<DropdownMenuItem<Province>> get dropdownProvince {
    return [
      DropdownMenuItem<Province>(
        child: const Text('Punjab'),
        value: Province(id: 1, name: 'Punjab'),
      ),
      DropdownMenuItem<Province>(
        child: const Text('Sindh'),
        value: Province(id: 2, name: 'Sindh'),
      ),
      DropdownMenuItem<Province>(
        child: const Text('KPK'),
        value: Province(id: 3, name: 'KPK'),
      )
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: SvgPicture.asset('assets/svg/right_personal_info.svg'),
          ),
          /*Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset('assets/svg/left_personal_info.svg'),
          ),*/
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 141.h,
                    ),
                    Text('Personal Information',
                        style: Theme.of(context).textTheme.headline1),
                    SizedBox(
                      height: 20.h,
                    ),
                    CTextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.name,
                      hintText: 'Full Name',
                      prefixIcon: Image.asset('assets/images/full_name.png'),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CTextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.name,
                      hintText: 'Short Name',
                      prefixIcon: Image.asset('assets/images/full_name.png'),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CTextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      hintText: '13302-1728416212-1',
                      prefixIcon:
                          Image.asset('assets/images/signup_finger_icon.png'),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CDropdownButtonFormField(
                        // value: _currentOccupationSelectedValue,
                        isExpanded: true,
                        onChanged: (value) {
                          print(value);
                        },
                        hintText: ' Select Gender',
                        prefixIcon: Image.asset('assets/images/full_name.png'),
                        items: genderDropdownItems),
                    SizedBox(
                      height: 20.h,
                    ),
                    CTextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.name,
                      hintText: 'Father Name',
                      prefixIcon: Image.asset('assets/images/full_name.png'),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CDropdownButtonFormField(
                        //value: _currentOccupationSelectedValue,
                        isExpanded: true,
                        onChanged: (value) {
                          print(value);
                        },
                        hintText: 'Select Fathers occupation',
                        prefixIcon:
                            Image.asset('assets/images/occupation_icon.png'),
                        items: occupationDropdownItems),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextFormField(
                      controller: dateinput,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      decoration: getInputDecoration(
                        hintText: 'Date of Birth',
                        prefixIcon:
                            Image.asset('assets/images/prefix_birth_icon.png'),
                        suffixIcon:
                            Image.asset('assets/images/suffix_birth_icon.png'),
                      ),
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
                    SizedBox(
                      height: 20.h,
                    ),
                    CTextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      hintText: 'Email',
                      prefixIcon: const Icon(Icons.email),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CTextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                      hintText: 'Contact No',
                      prefixIcon: const Icon(Icons.wifi_calling_3),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CTextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                      hintText: 'Other Contact No',
                      prefixIcon: const Icon(Icons.wifi_calling_3),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CTextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                      hintText: 'Guardians Contact No',
                      prefixIcon: const Icon(Icons.wifi_calling_3),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CTextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      hintText: 'Postal Address',
                      prefixIcon: Image.asset('assets/images/address.png'),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CTextFormField(
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.text,
                      hintText: 'Permanent Address',
                      prefixIcon: Image.asset('assets/images/address.png'),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    DropdownButtonFormField<Province>(
                        //value: _currentOccupationSelectedValue,
                        isExpanded: true,
                        onChanged: (value) {
                          print(value);
                        },
                        decoration: getInputDecoration(
                          hintText: 'Domicile Province',
                          prefixIcon: Image.asset(
                              'assets/images/prefix_domicile_icon.png'),
                        ),
                        items: dropdownProvince),
                    SizedBox(
                      height: 20.h,
                    ),
                    CDropdownButtonFormField(
                        //value: _currentOccupationSelectedValue,
                        isExpanded: true,
                        onChanged: (value) {
                          print(value);
                        },
                        hintText: 'Minority',
                        prefixIcon: Image.asset(
                            'assets/images/prefix_minority_icon.png'),
                        items: minorityDropdownItems),
                    SizedBox(
                      height: 20.h,
                    ),
                    CDropdownButtonFormField(
                        //value: _currentOccupationSelectedValue,
                        isExpanded: true,
                        onChanged: (value) {
                          print(value);
                        },
                        hintText: 'Disability',
                        prefixIcon: Image.asset('assets/images/disability.png'),
                        items: disabilityDropdownItems),
                    SizedBox(
                      height: 20.h,
                    ),
                    DropdownButtonFormField<Country>(
                        //value: _currentOccupationSelectedValue,
                        isExpanded: true,
                        onChanged: (value) {
                          print(value);
                        },
                        decoration: getInputDecoration(
                          prefixIcon:
                              Image.asset('assets/images/nationality.png'),
                          hintText: 'Other Nationality',
                        ),
                        items: dropdownCountry),
                    SizedBox(
                      height: 85.h,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: CElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, RouteGenerator.qualification);
                        },
                        child: const Text('SAVE'),
                      ),
                    ),
                    SizedBox(
                      height: 85.h,
                    ),
                    /*DropdownButtonFormField(
                      value: _currentOccupationSelectedValue,
                      isExpanded: true,
                      onChanged: (value) {
                        setState(() {
                          _currentOccupationSelectedValue = value.toString();
                        });
                      },
                      onSaved: (value) {
                        setState(() {
                          _currentOccupationSelectedValue = value.toString();
                        });
                      },
                      decoration: getInputDecoration(
                        hintText: 'Minority',
                        prefixIcon:
                            Image.asset('assets/images/prefix_minority_icon.png'),
                      ),
                      items: _occupation.map((String val) {
                        return DropdownMenuItem(
                          value: val,
                          child: Text(
                            val,
                          ),
                        );
                      }).toList(),
                    ),*/
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
