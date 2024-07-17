import 'package:flutter/material.dart';
import 'package:superjara/const/app_colors.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/setup/vendors.dart';

class AddVendor extends StatefulWidget {
  const AddVendor({super.key});

  @override
  State<AddVendor> createState() => _AddVendorState();
}

class _AddVendorState extends State<AddVendor> {
  List<String> clientsItems = ['Select client', ''];
  String? clientsSelecteditem = 'Select client';
  List<String> selectedItems = [];

  void updateSelectedItems(String item, bool selected) {
    setState(() {
      if (selected) {
        selectedItems.add(item);
      } else {
        selectedItems.remove(item);
      }
    });
  }

  String buildDropdownText() {
    if (selectedItems.isEmpty) {
      return 'Select items';
    } else if (selectedItems.length == 1) {
      return selectedItems.first;
    } else {
      int remainingCount = selectedItems.length - 1;
      return '${selectedItems.first} + $remainingCount more';
    }
  }

  String? _selectedRequirementItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 38,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context, (_) {
                              return const SupportedVendors();
                            });
                          },
                          child: const Icon(Icons.arrow_back)),
                    ),
                    const SizedBox(
                      width: 90,
                    ),
                    Text(
                      "Add Vendors",
                      style: AppTextStyles.font18,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 250),
                child: Text(
                  'Vendor Name',
                  style: AppTextStyles.font14
                      .copyWith(color: const Color(0xff475569)),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: 350,
                height: 52,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    width: 1,
                    color: const Color(0XFFCBD5E1),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: '',
                        hintStyle: AppTextStyles.font12,
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 230),
                child: Text(
                  'Vendor Web Link',
                  style: AppTextStyles.font14
                      .copyWith(color: const Color(0xff475569)),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: 350,
                height: 52,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    width: 1,
                    color: const Color(0XFFCBD5E1),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: '',
                        hintStyle: AppTextStyles.font12,
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 260),
                child: Text(
                  'Vendor Code',
                  style: AppTextStyles.font14
                      .copyWith(color: const Color(0xff475569)),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: 350,
                height: 52,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    width: 1,
                    color: const Color(0XFFCBD5E1),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: '',
                        hintStyle: AppTextStyles.font12,
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Text(
                  "Vendor Requirements",
                  style: AppTextStyles.font14,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              DropdownButton<String>(
                isExpanded: true,
                hint: Text(buildDropdownText()),
                items: vendorRequirements.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Row(
                      children: <Widget>[
                        Checkbox(
                          value: selectedItems.contains(item),
                          onChanged: (bool? selected) {
                            updateSelectedItems(item, selected!);
                          },
                        ),
                        Text(item),
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (String? selectedItem) {
                  setState(() {
                    selectedItems.clear();
                    if (selectedItem != null) {
                      selectedItems.add(selectedItem);
                    }
                  });
                },
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 52,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.white,
                  border: Border.all(
                    color: const Color(0xffCBD5E1),
                  ),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    hint: const Text('Select requirements'),
                    value: _selectedRequirementItem,
                    onChanged: (String? value) {
                      setState(() {
                        selectedItems.clear();
                        if (_selectedRequirementItem != null) {
                          selectedItems
                              .add(_selectedRequirementItem.toString());
                        }
                      });
                      // setState(() {
                      //   _selectedRequirementItem = value;
                      //   //items as String;
                      // });
                    },
                    items: vendorRequirements
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    Checkbox(
                                      value: selectedItems.contains(item),
                                      onChanged: (bool? selected) {
                                        updateSelectedItems(item, selected!);
                                      },
                                    ),
                                    Text(
                                      item,
                                      style: AppTextStyles.font12,
                                    ),
                                  ],
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ),
              ),
              const SizedBox(
                height: 43,
              ),
              Container(
                height: 48,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xff000078),
                ),
                child: Center(
                  child: Text(
                    'Proceed',
                    style: AppTextStyles.font16
                        .copyWith(color: const Color(0XFFFFFFFF)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<String> vendorRequirements = [
  'Server Url',
  'Service Route',
  'User Name',
  'Password',
  'SPC Type',
  'User ID',
  'API Keys',
  'Live Public Keys',
  'Live Private Keys',
  'Demo Public Keys',
  'Demo Private Keys',
  'Mode',
  'Other Codes',
  'Fixed Charges',
];
