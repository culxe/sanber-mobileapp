import 'package:flutter/material.dart';
import 'package:tugas_8_9_slacing/const/app_style.dart';
import 'package:tugas_8_9_slacing/const/color.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        toolbarHeight: 95,
        title: Padding(
          padding: const EdgeInsets.only(top: 40, left: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/Menu_Icon.png',
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(width: 59),
                  Text(
                    'NewsApp',
                    style: poppinsBold.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              left: 32,
            ),
            child: SizedBox(
              height: 311,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 311,
                    margin: EdgeInsets.only(right: 8),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/newss1.png',
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: 16,
                            left: 16,
                            right: 16,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'TECHNOLOGY',
                                      style: poppinsBold.copyWith(
                                        fontSize: 12,
                                        color: whiteColor,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '3 mins ago',
                                      style: poppinsRegular.copyWith(
                                        fontSize: 12,
                                        color: whiteColor,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 131),
                                Text(
                                  'Microsoft launches a deepfake detector tool ahead of US election',
                                  style: poppinsBold.copyWith(
                                    fontSize: 16,
                                    color: whiteColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 24,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/chatbubble-ellipses-outline.png',
                                      width: 24,
                                      height: 24,
                                    ),
                                    SizedBox(
                                      width: 24,
                                    ),
                                    Image.asset(
                                      'assets/bookmark-outline.png',
                                      width: 24,
                                      height: 24,
                                    ),
                                    SizedBox(
                                      width: 174,
                                    ),
                                    Image.asset(
                                      'assets/arrow-redo-outline.png',
                                      width: 24,
                                      height: 24,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 311,
                    margin: EdgeInsets.only(right: 8),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/newss2.png',
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: 16,
                            left: 16,
                            right: 16,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'TECHNOLOGY',
                                      style: poppinsBold.copyWith(
                                        fontSize: 12,
                                        color: whiteColor,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '3 mins ago',
                                      style: poppinsRegular.copyWith(
                                        fontSize: 12,
                                        color: whiteColor,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 131),
                                Text(
                                  'Microsoft launches a deepfake detector tool ahead of US election',
                                  style: poppinsBold.copyWith(
                                    fontSize: 16,
                                    color: whiteColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 24,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/chatbubble-ellipses-outline.png',
                                      width: 24,
                                      height: 24,
                                    ),
                                    SizedBox(
                                      width: 24,
                                    ),
                                    Image.asset(
                                      'assets/bookmark-outline.png',
                                      width: 24,
                                      height: 24,
                                    ),
                                    SizedBox(
                                      width: 174,
                                    ),
                                    Image.asset(
                                      'assets/arrow-redo-outline.png',
                                      width: 24,
                                      height: 24,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 32, top: 41),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Latest News',
                      style: arimoRegular.copyWith(
                        fontSize: 18,
                        color: greyColor,
                      ),
                    ),
                    Icon(
                      Icons.arrow_circle_right_outlined,
                      color: greyColor,
                    )
                  ],
                ),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              List<Map<String, String>> newsItems = [
                {
                  'category': 'TECHNOLOGY',
                  'title':
                      'Insurtech startup PasarPolis gets \$54 million — Series B',
                  'image': 'assets/listnews1.png',
                },
                {
                  'category': 'TECHNOLOGY',
                  'title':
                      'The IPO parade continues as Wish files, Bumble targets',
                  'image': 'assets/listnews2.png',
                },
                {
                  'category': 'TECHNOLOGY',
                  'title': 'Hypatos gets \$11.8M for a deep learning approach',
                  'image': 'assets/listnews3.png',
                },
              ];

              return Padding(
                padding: const EdgeInsets.only(top: 23, left: 32, right: 32),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        newsItems[index % newsItems.length]['image']!,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  '${newsItems[index % newsItems.length]['category']} \n',
                              style: poppinsBold.copyWith(
                                fontSize: 12,
                                color: greyColor,
                              ),
                            ),
                            TextSpan(
                              text: newsItems[index % newsItems.length]
                                  ['title'],
                              style: poppinsBold.copyWith(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
