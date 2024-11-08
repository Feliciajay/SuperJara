import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:superjara/home/model.dart';

class ApiTestScreen extends StatefulWidget {
  const ApiTestScreen({super.key});

  @override
  State<ApiTestScreen> createState() => _ApiTestScreenState();
}

class _ApiTestScreenState extends State<ApiTestScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  NewsArticleModel news = NewsArticleModel();
  @override
  void initState() {
    // getUsers();
    super.initState();
  }

  void getUsers() async {
    final dio = Dio();
    String url =
        'https://saurav.tech/NewsAPI/top-headlines/category/health/in.json';
    final response = await dio.get(url);
    // final data = response.data;
    setState(() {
      news = NewsArticleModel.fromJson(response.data);
    });
    // print(data);
  }

  Future<void> postUsers(
      {required String email, required String password}) async {
    final dio = Dio();
    String url1 = 'https://api.max4u.com.ng';
    final body = {
      "request_type": "general",
      "action": "login",
      "login_id": email,
      "password": password
    };
    (body);
    var response = await dio.post(
      url1,
      data: body,
      options: Options(headers: {
        "content-Type": "application/json",
        "Site-From": "postman"
      }),
    );
    var responseData = response.data;
    (responseData['data']['message']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //  Text(newsData[0]['author']),
              // news.articles == null
              //     ? const Center(child: CircularProgressIndicator())
              //     : Column(
              //         children: List.generate(news.articles!.length, (index) {
              //         final data = news.articles![index];
              //         return ListTile(
              //           leading: CircleAvatar(
              //             radius: 35,
              //             backgroundImage: NetworkImage('${data.urlToImage}'),
              //           ),
              //           // Text('${data.author}'),
              //           title: Text('${data.title}'),
              //         );
              //       })),

              TextField(
                controller: emailController,
              ),
              TextField(
                controller: passwordController,
              ),

              ElevatedButton(
                  onPressed: () async {
                    await postUsers(
                        email: emailController.text,
                        password: passwordController.text);
                  },
                  child: const Text('Login'))
            ],
          ),
        ),
      )),
    );
  }
}
