import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/members/change_plan_users/change_user_password/model/change_user_password_request.dart';
import 'package:superjara/members/change_plan_users/change_user_password/notifier/change_user_password_notifier.dart';
import 'package:superjara/members/change_plan_users/payment_gateway/payment_gateway.dart';
import 'package:superjara/members/change_user_plan/notifier/change_user_plan_notifier.dart';

import 'package:superjara/utils/enums.dart';

class ChangeUserPassword extends ConsumerStatefulWidget {
  const ChangeUserPassword({
    super.key,
    required this.userId,
    required this.oldPassword,
    required this.newPassword,
  });
  final int userId;
  final String oldPassword;
  final String newPassword;

  @override
  ConsumerState<ChangeUserPassword> createState() => _ChangeUserPasswordState();
}

bool _obscureText = true;
bool _confirmText = true;

class _ChangeUserPasswordState extends ConsumerState<ChangeUserPassword> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      // await ref
      //     .watch(changeUserPasswordNotifierProvider.notifier)
      //     .changeUserPassword(
      //         userId: widget.userId,
      //         oldPassword: widget.oldPassword,
      //         newPassword: widget.newPassword);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(changeUserPlanNotifierProvider
        .select((v) => v.changeUserPlanState.isLoading));

    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.pop(context, (_) {
                                return const PaymentGateway(
                                  userId: 1,
                                  amount: 1000,
                                );
                              });
                            },
                            child: const Icon(Icons.arrow_back)),
                        const SizedBox(
                          width: 90,
                        ),
                        const Text(
                          "Change Password",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Change password for Maxprecursor@gmail.com',
                      style: AppTextStyles.font14,
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "New Password",
                        style: AppTextStyles.font14
                            .copyWith(color: const Color(0xff475569)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 60,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          width: 1,
                          color: const Color(
                            0XFFCBD5E1,
                          ),
                        ),
                      ),
                      child: TextField(
                        controller: _controller,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(_obscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                            ),
                            border: InputBorder.none,
                            hintText: '',
                            helperStyle: AppTextStyles.font14),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Confirm New Password",
                        style: AppTextStyles.font14
                            .copyWith(color: const Color(0xff475569)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 60,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          width: 1,
                          color: const Color(
                            0XFFCBD5E1,
                          ),
                        ),
                      ),
                      child: TextField(
                        controller: _passwordcontroller,
                        obscureText: _confirmText,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(_confirmText
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  _confirmText = !_confirmText;
                                });
                              },
                            ),
                            border: InputBorder.none,
                            hintText: '',
                            helperStyle: AppTextStyles.font14),
                      ),
                    ),
                    const SizedBox(
                      height: 64,
                    ),
                    GestureDetector(
                      onTap: () {
                        _changePassword();
                      },
                      child: Container(
                        height: 48,
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0XFF000078),
                        ),
                        child: Center(
                          child: Text(
                            "Change Password",
                            style: AppTextStyles.font16
                                .copyWith(color: const Color(0xffFFFFFF)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              isLoading
                  ? Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration:
                          BoxDecoration(color: Colors.black.withOpacity(0.2)),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }

  void _changePassword() {
    ref.read(changeUserPasswordNotifierProvider.notifier).changeUserPassword(
          data: ChangeUserPasswordRequest(
            process: 'autobiz_members',
            action: 'changeuserpassword',
            user_id: widget.userId.toString(),
            old_password: _passwordcontroller.text.trim(),
            new_password: _controller.text.trim(),
          ),
          onError: (error) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
                error,
                style: const TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.red,
            ));
          },
          onSuccess: (message) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
                message,
                style: const TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.red,
            ));
          },
        );
  }
}
