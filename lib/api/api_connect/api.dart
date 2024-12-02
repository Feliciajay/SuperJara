import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/api/add_api.dart';
import 'package:superjara/api/api_connect/data/model/api_response.dart';
import 'package:superjara/api/api_connect/data/notifier/api_notifier.dart';
import 'package:superjara/api/details/api_details.dart';
import 'package:superjara/const/app_textsyle.dart';

class API extends ConsumerStatefulWidget {
  const API({
    super.key,
  });

  @override
  ConsumerState<API> createState() => _APIState();
}

class _APIState extends ConsumerState<API> {
  Map<String, bool> visibilityToggles = {};

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(apiNotifierProvider.notifier).api();
    });

    super.initState();
  }

  void toggleVisibility(String key) {
    setState(() {
      visibilityToggles[key] = !(visibilityToggles[key] ?? false);
    });
  }

  ApiData? apiData;

  @override
  Widget build(BuildContext context) {
    final apiState = ref.watch(apiNotifierProvider);
    final apiData = apiState.getApi?.data?.data;

    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
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
                        const SizedBox(height: 26),
                        SizedBox(
                          height: 350,
                          width: 400,
                          child: ListView.builder(
                            itemCount: apiData?.length,
                            itemBuilder: (context, index) {
                              final api = apiData?[index];
                              return ApiWidget(
                                title: '${api?.apiName}',
                                subtitle: '${api?.apiSystemCode}',
                                obscure:
                                    visibilityToggles[api?.apiName] ?? false,
                                toggleObscure: () =>
                                    toggleVisibility(api?.apiName ?? ''),
                                onEdit: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => const ApiDetails()),
                                  );
                                },
                                onDelete: () {
                                  // Handle delete logic
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
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
  final bool obscure;

  final VoidCallback toggleObscure;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const ApiWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.obscure,
    required this.onEdit,
    required this.onDelete,
    required this.toggleObscure,
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
                    obscureText: obscure,
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
                IconButton(
                  icon: Icon(obscure ? Icons.visibility_off : Icons.visibility,
                      size: 20),
                  onPressed: toggleObscure,
                ),
                IconButton(
                  icon: const Icon(Icons.edit, size: 20),
                  onPressed: onEdit,
                ),
                IconButton(
                  icon: const Icon(Icons.delete, size: 20),
                  onPressed: onDelete,
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
