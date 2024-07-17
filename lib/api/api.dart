import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:superjara/api/add_api.dart';
import 'package:superjara/api/api_details.dart';
import 'package:superjara/const/app_textsyle.dart';

class API extends StatefulWidget {
  const API({super.key});

  @override
  State<API> createState() => _APIState();
}

class _APIState extends State<API> {
  bool iyiinstant = false;
  iyiinstantVisibility() {
    setState(() {
      iyiinstant = !iyiinstant;
    });
  }

  bool airtimeNigeria = false;
  airtimeNigeriaVisibility() {
    setState(() {
      airtimeNigeria = !iyiinstant;
    });
  }

  bool payvessel = false;
  payvesselVisibility() {
    setState(() {
      payvessel = !payvessel;
    });
  }

  bool vTPass = false;
  vTPassVisibility() {
    setState(() {
      vTPass = !vTPass;
    });
  }

  bool yafunyafun = false;
  yafunyafunVisibility() {
    setState(() {
      yafunyafun = !yafunyafun;
    });
  }

  bool simservers = false;
  simserversVisibility() {
    setState(() {
      simservers = !simservers;
    });
  }

  bool simserver = false;
  simserverVisibility() {
    setState(() {
      simserver = !simserver;
    });
  }

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
                padding: const EdgeInsets.symmetric(horizontal: 180),
                child: Text(
                  'Api',
                  style: AppTextStyles.font18,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: 350,
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(94),
                  color: const Color(0xffEBEBEB),
                ),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.search,
                      size: 20,
                      color: Color(0xff4F4F4F),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Search for Api",
                            border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              Container(
                height: 648,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xffFFFFFF),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 17, left: 14),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.add_circle,
                              color: Color(0xff000078),
                            ),
                            const SizedBox(
                              width: 1,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                  return const AddApi();
                                }));
                              },
                              child: Text(
                                'Add API',
                                style: AppTextStyles.font14.copyWith(
                                  color: const Color(0xff000078),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 19,
                        ),
                        ApiWidget(
                          title: 'Iyiinstant',
                          subtitle: 'Iyiinstant',
                          obscure: iyiinstant,
                          iconData: iyiinstant
                              ? Icons.visibility_off
                              : Icons.visibility,
                          toggleObscure: () => iyiinstantVisibility(),
                        ),
                        ApiWidget(
                          title: 'Airtime Nigeria',
                          subtitle: 'Airtime Nigeria',
                          obscure: airtimeNigeria,
                          iconData: airtimeNigeria
                              ? Icons.visibility_off
                              : Icons.visibility,
                          toggleObscure: () => airtimeNigeriaVisibility(),
                        ),
                        ApiWidget(
                          title: 'Payvessel',
                          subtitle: 'Payvessel',
                          iconData: payvessel
                              ? Icons.visibility_off
                              : Icons.visibility,
                          toggleObscure: () => payvesselVisibility(),
                        ),
                        ApiWidget(
                          title: 'VTPass',
                          subtitle: 'VTPass',
                          iconData:
                              vTPass ? Icons.visibility_off : Icons.visibility,
                          toggleObscure: () => vTPassVisibility(),
                        ),
                        ApiWidget(
                          title: 'Yafunyafun',
                          subtitle: 'Autobizapp',
                          iconData: yafunyafun
                              ? Icons.visibility_off
                              : Icons.visibility,
                          toggleObscure: () => yafunyafunVisibility(),
                        ),
                        ApiWidget(
                          title: 'Simservers',
                          subtitle: 'Simservers',
                          iconData: simservers
                              ? Icons.visibility_off
                              : Icons.visibility,
                          toggleObscure: () => simserversVisibility(),
                        ),
                        ApiWidget(
                          title: 'Simservers',
                          subtitle: 'Simservers',
                          iconData: simserver
                              ? Icons.visibility_off
                              : Icons.visibility,
                          toggleObscure: () => simserverVisibility(),
                        ),
                      ],
                    ),
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

class ApiWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool? obscure;
  final IconData iconData;
  final Function()? toggleObscure;
  const ApiWidget({
    super.key,
    required this.title,
    required this.subtitle,
    this.obscure,
    required this.iconData,
    this.toggleObscure,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                ),
                SizedBox(
                  width: 150,
                  child: TextField(
                    obscureText: obscure ?? false,
                    decoration: InputDecoration(
                        hintText: subtitle,
                        hintStyle: AppTextStyles.font14
                            .copyWith(fontWeight: FontWeight.w400),
                        border: InputBorder.none),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                InkWell(
                  onTap: toggleObscure,
                  child: Icon(
                    iconData,
                    size: 20,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return const ApiDetails();
                    }));
                  },
                  child: const Icon(
                    Icons.edit,
                    size: 20,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                const Icon(
                  Icons.delete,
                  size: 20,
                ),
              ],
            ),
          ],
        ),
        const Divider(
          height: 4,
          color: Color(0xff000000),
        ),
      ],
    );
  }
}
