import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:nutech/models/occupation.dart';
import 'package:nutech/pages/qualification.dart';
import 'package:nutech/providers/country_provider.dart';
import 'package:nutech/providers/date_provider.dart';
import 'package:nutech/providers/disability_provider.dart';
import 'package:nutech/providers/minority_provider.dart';
import 'package:nutech/providers/occupation_provider.dart';
import 'package:nutech/providers/province_provider.dart';
import 'package:nutech/utils/constants.dart';
import 'package:nutech/utils/routes.dart';
import 'package:provider/provider.dart';

import '../components/c_dropdown_b.dart';
import '../components/c_elevated_button.dart';
import '../components/c_text_form_field.dart';
import '../models/country_class.dart';
import '../models/province_class.dart';
import '../networks/api_service.dart';
import '../providers/city_provider.dart';

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
  bool? value;

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

  // int provinceid = 1;

  @override
  Widget build(BuildContext context) {
    Provider.of<CountryProvider>(context, listen: false).getCountriesFromAPI();
    Provider.of<OccupationProvider>(context, listen: false)
        .getOccupationsFromAPI();
    Provider.of<ProvinceProvider>(context, listen: false).getProvincesFromAPI();

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
            padding: EdgeInsets.symmetric(horizontal: 20.w),
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
                    Consumer<OccupationProvider>(
                      builder: (context, op, child) => CDropdownButtonFormField(
                          //value: _currentOccupationSelectedValue,
                          isExpanded: true,
                          onChanged: (value) {
                            print(value.name);
                          },
                          hintText: 'Select Fathers occupation',
                          prefixIcon:
                              Image.asset('assets/images/occupation_icon.png'),
                          items: op.occupations),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Consumer<DateProvider>(
                      builder: (context, dp, child) {
                        return TextFormField(
                          controller: dateinput,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          decoration: getInputDecoration(
                            hintText: 'Date of Birth',
                            prefixIcon: Image.asset(
                                'assets/images/prefix_birth_icon.png'),
                            suffixIcon: Image.asset(
                                'assets/images/suffix_birth_icon.png'),
                          ),
                          // enabled: false,
                          onTap: () {
                            dp.pickDateDialog(context, dateinput);
                          },
                        );
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
                    Consumer<ProvinceProvider>(
                      builder: (context, pp, child) => CDropdownButtonFormField(
                          //value: _currentOccupationSelectedValue,
                          isExpanded: true,
                          onChanged: (value) {
                            print(value.name);
                            Provider.of<CityProvider>(context, listen: false)
                                .getCitiesFromAPI(value.id);
                          },
                          hintText: 'Domicile Province',
                          prefixIcon: Image.asset(
                              'assets/images/prefix_domicile_icon.png'),
                          items: pp.provinces),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Consumer<CityProvider>(
                      builder: (context, cp, child) => CDropdownButtonFormField(
                          //value: _currentOccupationSelectedValue,
                          isExpanded: true,
                          onChanged: (value) {
                            print(value.name);
                          },
                          hintText: 'Select City',
                          prefixIcon: Image.asset(
                              'assets/images/prefix_domicile_icon.png'),
                          items: cp.cities),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Consumer<DisabilityProvider>(
                      builder: (context, dp, child) {
                        return CheckboxListTile(
                          value: dp.value,
                          onChanged: (bool? checked) {
                            dp.checkedValue();
                          },
                          title: const Text(
                            'Disability',
                            style: TextStyle(color: Color(0xFF444444)),
                          ),
                          secondary: const Icon(Icons.wheelchair_pickup),
                          tileColor: Theme.of(context).colorScheme.background,
                          shape: kOutlineInputBorder,
                          activeColor: Theme.of(context).colorScheme.primary,
                        );
                      },
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Consumer<MinorityProvider>(
                      builder: (context, mp, child) {
                        return CheckboxListTile(
                          value: mp.value,
                          onChanged: (bool? checked) {
                            mp.checkedValue();
                          },
                          title: const Text(
                            'Minority',
                            style: TextStyle(color: Color(0xFF444444)),
                          ),
                          secondary: const Icon(Icons.wheelchair_pickup),
                          tileColor: Theme.of(context).colorScheme.background,
                          shape: kOutlineInputBorder,
                          activeColor: Theme.of(context).colorScheme.primary,
                        );
                      },
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Consumer<CountryProvider>(
                      builder: (context, cp, child) => CDropdownButtonFormField(
                        //value: _currentOccupationSelectedValue,
                        isExpanded: true,
                        onChanged: (value) {
                          print(value.name);
                        },
                        prefixIcon:
                            Image.asset('assets/images/nationality.png'),
                        hintText: 'Other Nationality',

                        items: cp.country,
                      ),
                    ),
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
