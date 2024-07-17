import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:superjara/api/api.dart';
import 'package:superjara/api/edit_api.dart';
import 'package:superjara/const/app_textsyle.dart';

class ApiDetails extends StatefulWidget {
  const ApiDetails({super.key});

  @override
  State<ApiDetails> createState() => _ApiDetailsState();
}

class _ApiDetailsState extends State<ApiDetails> {
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
                padding: const EdgeInsets.only(left: 150),
                child: Row(
                  children: [
                    Text(
                      'Api Details',
                      style: AppTextStyles.font18,
                    ),
                    const SizedBox(
                      width: 90,
                    ),
                    Container(
                      height: 38,
                      width: 38,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffF7F7F7),
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context,
                                MaterialPageRoute(builder: (_) {
                              return API();
                            }));
                          },
                          child: Text(
                            'x',
                            style: AppTextStyles.font20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 290),
                child: Text(
                  'Details',
                  style: AppTextStyles.font16,
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              const DetailsWidget(
                title: 'Api Name',
                subtitle: 'Iyiinstant',
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  height: 4,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const DetailsWidget(
                title: 'Api Vendor',
                subtitle: 'Iyiinstant',
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  height: 4,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 290),
                child: Text(
                  'Balance',
                  style: AppTextStyles.font16,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const DetailsWidget(
                title: 'Account Balance',
                subtitle: '4199',
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  height: 4,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const DetailsWidget(
                title: 'Wallet Balance',
                subtitle: '4199',
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  height: 4,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const DetailsWidget(
                title: 'Bonus Balance',
                subtitle: '4199',
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  height: 4,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 71,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return EditApi();
                        }));
                      },
                      child: Text(
                        'Edit Api',
                        style: AppTextStyles.font16,
                      ),
                    ),
                    const SizedBox(
                      width: 141,
                    ),
                    Text(
                      'Delete Api',
                      style: AppTextStyles.font16,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DetailsWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  const DetailsWidget({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Text(
            title,
            style: AppTextStyles.font14.copyWith(
              color: const Color(0xff333333),
            ),
          ),
        ),
        const SizedBox(
          width: 219,
        ),
        Text(
          subtitle,
          style: AppTextStyles.font14,
        ),
      ],
    );
  }
}
