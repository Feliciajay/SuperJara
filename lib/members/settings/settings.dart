import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/api/api_connect/api.dart';

import 'package:superjara/const/app_colors.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/members/change_plan_users/change_user_password/change_password.dart';
import 'package:superjara/members/change_plan_users/payment_gateway/payment_gateway.dart';
import 'package:superjara/members/change_user_plan/change_plan.dart';
import 'package:superjara/members/settings/data/model/set_manager_role_request.dart';
import 'package:superjara/members/settings/data/notifier/get_manager_role_notifier.dart';
import 'package:superjara/members/settings/data/notifier/set_manager_role_notifier.dart';
import 'package:superjara/members/settings/set_atm_role/model/set_atm_role_request.dart';
import 'package:superjara/members/settings/set_atm_role/notifier/get_atm_role_notifier.dart';
import 'package:superjara/members/settings/set_atm_role/notifier/set_atm_role_notifier.dart';
import 'package:superjara/members/settings/set_user_access_status/model/set_user_access_status_request.dart';
import 'package:superjara/members/settings/set_user_access_status/notifier/get_user_access_status.notifier.dart';
import 'package:superjara/members/settings/set_user_access_status/notifier/set_user_access_status.notifier.dart';
import 'package:superjara/utils/enums.dart';
import 'switch_items.dart';

class Settings extends ConsumerStatefulWidget {
  const Settings({
    super.key,
    required this.userId,
    // required this.rolestatus,
  });
  final int userId;
  // final int rolestatus;

  @override
  ConsumerState<Settings> createState() => _SettingsState();
}

class _SettingsState extends ConsumerState<Settings> {
  bool isGrantManagerSwitched = false;
  bool isRevokeATMAccess = false;
  bool isRevokePlatformAccess = false;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref
          .watch(getManagerRoleNotifierProvider.notifier)
          .getManagerRole(userId: widget.userId.toString());

      //  .watch(getAtmRoleNotifierProvider.notifier)
      // .getAtmRole(userId: widget.userId.toString());

      //   .watch(getUserAccessStatusNotifierProvider.notifier)
      //.getUserAccessStatus(userId: widget.userId.toString());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //  final setManagerRoleState = ref.watch(setManagerRoleNotifierProvider);
    final getManagerRoleState = ref.watch(getManagerRoleNotifierProvider);
    final isLoading = ref.watch(setManagerRoleNotifierProvider
        .select((value) => value.setManagerRoleState.isLoading));

    final getAtmRoleState = ref.watch(getAtmRoleNotifierProvider);
    final isLoadingAtm = ref.watch(setAtmRoleNotifierProvider
        .select((value) => value.setAtmRoleState.isLoading));
    final getAtmRoleData = getAtmRoleState.getAtmRoleResponse;

    final getUserAccessStatusState =
        ref.watch(getUserAccessStatusNotifierProvider);
    final isLoadingStatus = ref.watch(setUserAccessStatusNotifierProvider
        .select((value) => value.setUserAccessStatusState.isLoading));
    final getUserAccessStatusData =
        getUserAccessStatusState.getUserAccessStatusResponse;

    // setManagerRoleState.setManagerRoleState;
    // final setManagerRoleData = setManagerRoleState.setManagerRoleResponse?.data;
    final getManagerRoleData = getManagerRoleState.getManagerRoleResponse;

    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              // Navigator.pop(context, (_) {
                              //   return const Details();
                              // });
                            },
                            child: const Icon(Icons.arrow_back)),
                        const SizedBox(
                          width: 120,
                        ),
                        const Text(
                          "User Settings",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 300),
                            child: Text(
                              "Access",
                              style: AppTextStyles.font14,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),

                          SwitchItems(
                            text: 'Grant Manager Access',
                            val: getManagerRoleData?.data?.response == 'no'
                                ? isGrantManagerSwitched = false
                                : isGrantManagerSwitched = true,
                            onChangeMethod1: (_) {
                              // isGrantManagerSwitched == false
                              //     ?

                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      contentPadding: EdgeInsets.zero,
                                      content: Container(
                                        height: 248,
                                        width: 350,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: Colors.white),
                                        child: Column(
                                          children: [
                                            const SizedBox(
                                              height: 45,
                                            ),
                                            Text(
                                              'Grant Manager Access',
                                              style: AppTextStyles.font16,
                                            ),
                                            const SizedBox(
                                              height: 16,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 40),
                                              child: Text(
                                                'Are you sure you want to grant this user manager access?',
                                                style: AppTextStyles.font14,
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 31,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20),
                                              child: Row(
                                                children: [
                                                  GestureDetector(
                                                    onTap: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Container(
                                                      height: 48,
                                                      width: 128,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        color: const Color(
                                                            0xffEEEFEF),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          'Cancel',
                                                          style: AppTextStyles
                                                              .font16
                                                              .copyWith(
                                                                  color: const Color(
                                                                      0xff000078)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 18,
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      Navigator.pop(context);
                                                      setManagerRole(
                                                          userRole:
                                                              isGrantManagerSwitched ==
                                                                      false
                                                                  ? 'yes'
                                                                  : 'no'

                                                          // '${getManagerRoleData?.data?.response}'

                                                          );
                                                    },
                                                    child: Container(
                                                      height: 48,
                                                      width: 128,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        color: const Color(
                                                            0xff000078),
                                                      ),
                                                      child: Center(
                                                          child: Text(
                                                        'Confirm',
                                                        style: AppTextStyles
                                                            .font16
                                                            .copyWith(
                                                                color: const Color(
                                                                    0xffEEEFEF)),
                                                      )),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                              // : const SizedBox.shrink();
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(
                            height: 4,
                            color: AppColors.grey,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SwitchItems(
                            text: 'Revoke ATM Access',
                            val: getAtmRoleData?.data?.response == 'no'
                                ? isRevokeATMAccess = false
                                : isRevokeATMAccess = true,
                            onChangeMethod1: (_) {
                              isRevokeATMAccess == true
                                  ? showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          contentPadding: EdgeInsets.zero,
                                          content: Container(
                                            height: 248,
                                            width: 350,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: Colors.white),
                                            child: Column(
                                              children: [
                                                const SizedBox(
                                                  height: 45,
                                                ),
                                                Text(
                                                  'Revoke ATM Access',
                                                  style: AppTextStyles.font16,
                                                ),
                                                const SizedBox(
                                                  height: 16,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 50),
                                                  child: Text(
                                                    'Are you sure you want to revoke ATM Access?',
                                                    style: AppTextStyles.font14,
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 31,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20),
                                                  child: Row(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () =>
                                                            Navigator.pop,
                                                        child: Container(
                                                          height: 48,
                                                          width: 128,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                            color: const Color(
                                                                0xffEEEFEF),
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              'Cancel',
                                                              style: AppTextStyles
                                                                  .font16
                                                                  .copyWith(
                                                                      color: const Color(
                                                                          0xff000078)),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 18,
                                                      ),
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                          setAtmRole(
                                                              userRole:
                                                                  isRevokeATMAccess ==
                                                                          false
                                                                      ? 'yes'
                                                                      : 'no'

                                                              // '${getManagerRoleData?.data?.response}'

                                                              );
                                                        },
                                                        child: Container(
                                                          height: 48,
                                                          width: 128,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                            color: const Color(
                                                                0xff000078),
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              'Confirm',
                                                              style: AppTextStyles
                                                                  .font16
                                                                  .copyWith(
                                                                      color: const Color(
                                                                          0xffEEEFEF)),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      })
                                  : const SizedBox.shrink();
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(
                            height: 4,
                            color: AppColors.grey,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SwitchItems(
                            text: 'Revoke Platform Access',
                            val: getUserAccessStatusData?.data == 'no'
                                ? isRevokePlatformAccess = false
                                : isRevokePlatformAccess = true,
                            onChangeMethod1: (_) {
                              isRevokePlatformAccess == true
                                  ? showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          contentPadding: EdgeInsets.zero,
                                          content: Container(
                                            height: 248,
                                            width: 350,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: Colors.white),
                                            child: Column(
                                              children: [
                                                const SizedBox(
                                                  height: 45,
                                                ),
                                                Text(
                                                  'Revoke Platform Access',
                                                  style: AppTextStyles.font16,
                                                ),
                                                const SizedBox(
                                                  height: 16,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 50),
                                                  child: Text(
                                                    'Are you sure you want to revoke platform Access?',
                                                    style: AppTextStyles.font14,
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 31,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20),
                                                  child: Row(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () =>
                                                            Navigator.pop,
                                                        child: Container(
                                                          height: 48,
                                                          width: 128,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                            color: const Color(
                                                                0xffEEEFEF),
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              'Cancel',
                                                              style: AppTextStyles
                                                                  .font16
                                                                  .copyWith(
                                                                      color: const Color(
                                                                          0xff000078)),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 18,
                                                      ),
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                          setUserAccessStatus(
                                                              userRole:
                                                                  isRevokePlatformAccess ==
                                                                          false
                                                                      ? 'yes'
                                                                      : 'no'

                                                              // '${getManagerRoleData?.data?.response}'

                                                              );
                                                        },
                                                        child: Container(
                                                          height: 48,
                                                          width: 128,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                            color: const Color(
                                                                0xff000078),
                                                          ),
                                                          child: Center(
                                                              child: Text(
                                                            'Confirm',
                                                            style: AppTextStyles
                                                                .font16
                                                                .copyWith(
                                                                    color: const Color(
                                                                        0xffEEEFEF)),
                                                          )),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      })
                                  : const SizedBox.shrink();
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(
                            height: 4,
                            color: AppColors.grey,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (_) {
                                    return const ChangePlan(
                                      userId: 1,
                                      bypassPlan: 'yes',
                                      planId: 3,
                                    );
                                  }));
                                },
                                child: Text(
                                  "Change Plan For User",
                                  style: AppTextStyles.font14.copyWith(
                                    color: const Color(0XFF333333),
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 295),
                            child: Text(
                              "OTHERS",
                              style: AppTextStyles.font14
                                  .copyWith(color: const Color(0xff333333)),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) {
                                return const PaymentGateway(
                                  userId: 3,
                                  amount: 1000,
                                );
                              }));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Set Payment Gateway Limit",
                                  style: AppTextStyles.font14.copyWith(
                                    color: const Color(0XFF333333),
                                  ),
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Divider(
                            height: 4,
                            color: AppColors.grey,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) {
                                return const ChangeUserPassword(
                                  userId: 3,
                                  oldPassword: 'humble',
                                  newPassword: 'gown',
                                );
                              }));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Change Password",
                                  style: AppTextStyles.font14.copyWith(
                                    color: const Color(0XFF333333),
                                  ),
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Divider(
                            height: 4,
                            color: AppColors.grey,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          // InkWell(
                          //   onTap: () {
                          //     Navigator.push(context, MaterialPageRoute(builder: (_){return CreateAccount}))
                          //   },child:
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Create Account Number",
                                style: AppTextStyles.font14.copyWith(
                                  color: const Color(0XFF333333),
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              ),
                            ],
                          ),

                          const SizedBox(
                            height: 16,
                          ),
                          const Divider(
                            height: 4,
                            color: AppColors.grey,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Clear Login Attempts",
                                style: AppTextStyles.font14.copyWith(
                                  color: const Color(0XFF333333),
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Divider(
                            height: 4,
                            color: AppColors.grey,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (_) {
                                    return const API();
                                  }));
                                },
                                child: Text(
                                  "Reset API Key",
                                  style: AppTextStyles.font14.copyWith(
                                    color: const Color(0XFF333333),
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Divider(
                            height: 4,
                            color: AppColors.grey,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 270),
                            child: Text(
                              "Delete User",
                              style: AppTextStyles.font14.copyWith(
                                color: const Color(0XFF333333),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            isLoading
                ? Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration:
                        BoxDecoration(color: Colors.black.withOpacity(0.5)),
                    // child: const CircularProgressIndicator(),
                  )
                : const SizedBox.shrink(),
            isLoadingAtm
                ? Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration:
                        BoxDecoration(color: Colors.black.withOpacity(0.5)),
                    // child: const CircularProgressIndicator(),
                  )
                : const SizedBox.shrink(),
            isLoadingStatus
                ? Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration:
                        BoxDecoration(color: Colors.black.withOpacity(0.5)),
                    // child: const CircularProgressIndicator(),
                  )
                : const SizedBox.shrink()
          ],
        ),
      ),
    );
  }

  setManagerRole({required String userRole}) {
    final data = SetManagerRoleRequest(
      process: 'autobiz_members',
      action: 'setmanagerrole',
      userId: widget.userId.toString(),
      roleStatus: userRole,
    );
    ref.read(setManagerRoleNotifierProvider.notifier).setManagerRole(
          data: data,
          onError: (error) {
            setState(() {
              isGrantManagerSwitched = false;
            });
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(error)));
          },
          onSuccess: (message) {
            setState(() {
              isGrantManagerSwitched = !isGrantManagerSwitched;
            });
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(message)));
          },
        );
  }

  setAtmRole({required String userRole}) {
    final data = SetAtmRoleRequest(
      process: 'autobiz_members',
      action: 'setatmstatus',
      userId: widget.userId.toString(),
      roleStatus: userRole,
    );
    ref.read(setAtmRoleNotifierProvider.notifier).setAtmRole(
          data: data,
          onError: (error) {
            setState(() {
              isRevokeATMAccess = false;
            });
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(error)));
          },
          onSuccess: (message) {
            setState(() {
              isRevokeATMAccess = !isRevokeATMAccess;
            });
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(message)));
          },
        );
  }

  setUserAccessStatus({required String userRole}) {
    final data = SetUserAccessStatusRequest(
      process: 'autobiz_members',
      action: 'setaccessstatus',
      userId: widget.userId.toString(),
      roleStatus: userRole,
    );
    ref.read(setUserAccessStatusNotifierProvider.notifier).setUserAccessStatus(
          data: data,
          onError: (error) {
            setState(() {
              isRevokePlatformAccess = false;
            });
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(error)));
          },
          onSuccess: (message) {
            setState(() {
              isRevokePlatformAccess = !isRevokePlatformAccess;
            });
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(message)));
          },
        );
  }
}
