import 'package:flutter/material.dart';
import 'package:instagram_ui/presentation/home/widgets/bottom_navigation_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 0,
        backgroundColor: Colors.white,
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(4.0),
            child: Container(
              color: Colors.black12,
              height: 1,
            )),
        title: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                overlayColor:
                    const MaterialStatePropertyAll(Colors.transparent),
                onTap: () {},
                child: Image.asset(
                  "assets/icons/Camera_Icon.png",
                  height: 25,
                ),
              ),
              Image.asset(
                "assets/images/instagram_logo.png",
                width: 105,
              ),
              Row(
                children: [
                  InkWell(
                    overlayColor:
                        const MaterialStatePropertyAll(Colors.transparent),
                    onTap: () {},
                    child: Image.asset(
                      "assets/icons/IGTV.png",
                      height: 25,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    overlayColor:
                        const MaterialStatePropertyAll(Colors.transparent),
                    onTap: () {},
                    child: Image.asset(
                      "assets/icons/Messanger.png",
                      height: 25,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
          child: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView(children: [
            // story section
            Container(
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1, color: Colors.black12))),
              padding: const EdgeInsets.only(left: 15, top: 9, bottom: 9),
              height: 120,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          margin: const EdgeInsets.only(right: 20),
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              gradient: const LinearGradient(colors: [
                                Color(0xFFFBAA47),
                                Color(0xFFA60F93)
                              ])),
                          child: Container(
                              height: double.infinity,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 3, color: Colors.white),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Image.asset('assets/images/user1.png')),
                        ),
                        Container(
                            margin: const EdgeInsets.only(right: 15, top: 3),
                            child: const Text('User'))
                      ],
                    );
                  }),
            ),
            // end story section

            // content section
            SizedBox(
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: const SizedBox(
                          height: 40,
                          width: 40,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/user1.png"),
                          ),
                        ),
                        title: const Text(
                          'Dika Pratana',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF262626)),
                        ),
                        subtitle: const Text(
                          'Indonesia',
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF262626)),
                        ),
                        trailing: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                  ),
                                  backgroundColor: Colors.white,
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      padding:
                                          const EdgeInsets.only(bottom: 20),
                                      child: Flex(
                                        direction: Axis.vertical,
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(
                                                top: 8, bottom: 20),
                                            height: 4,
                                            width: 60,
                                            decoration: BoxDecoration(
                                                color: Colors.black45,
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 15),
                                            child: Flex(
                                              direction: Axis.horizontal,
                                              children: const [
                                                Icon(Icons
                                                    .star_border_purple500_outlined),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  "Tambahkan ke favorit",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xFF262626)),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 15),
                                            decoration: const BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                                        width: 1,
                                                        color:
                                                            Colors.black12))),
                                            child: Flex(
                                              direction: Axis.horizontal,
                                              children: const [
                                                Icon(Icons
                                                    .person_remove_outlined),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  "Berhenti mengikuti",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xFF262626)),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 15),
                                            child: Flex(
                                              direction: Axis.horizontal,
                                              children: const [
                                                Icon(Icons.info_outline),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  "Mengapa Anda melihat postingan ini",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xFF262626)),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 15),
                                            child: Flex(
                                              direction: Axis.horizontal,
                                              children: const [
                                                Icon(Icons
                                                    .visibility_off_outlined),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  "Sembunyikan",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xFF262626)),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 15),
                                            child: Flex(
                                              direction: Axis.horizontal,
                                              children: [
                                                Icon(
                                                  Icons.report_gmailerrorred,
                                                  color: Colors.red.shade700,
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  "Laporkan",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color:
                                                          Colors.red.shade700),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  });
                            },
                            child: const Icon(Icons.more_horiz)),
                      ),
                      SizedBox(
                          width: double.infinity,
                          child: Image.asset(
                            "assets/images/content1.png",
                            fit: BoxFit.fill,
                          )),
                      Container(
                        padding: const EdgeInsets.all(14),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.favorite_border),
                                const SizedBox(width: 14),
                                Image.asset(
                                  "assets/icons/comment.png",
                                  height: 20,
                                ),
                                const SizedBox(width: 14),
                                Image.asset(
                                  "assets/icons/Messanger.png",
                                  height: 20,
                                ),
                              ],
                            ),
                            const Icon(Icons.bookmark_border),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(left: 14, right: 14),
                        child: const Text(
                          '10 Like',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF262626)),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(
                            left: 14, right: 14, top: 7, bottom: 7),
                        child: RichText(
                          text: const TextSpan(
                              text: "John Doe ",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF262626)),
                              children: [
                                TextSpan(
                                    text:
                                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal))
                              ]),
                        ),
                      ),
                    ],
                  );
                },
              ),
            )
            // content section
          ]),
        ),
      )),
      bottomNavigationBar: const BottomNavigationsWidget(),
    );
  }
}
