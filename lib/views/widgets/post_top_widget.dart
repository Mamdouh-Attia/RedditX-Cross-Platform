import 'package:flutter/material.dart';
import 'package:reddit/methods/show_profile_dialog.dart';
import 'package:reddit/styles/custom_icons.dart';

class PostTopWidget extends StatelessWidget {
  final String postPlace;
  final String postType;
  final BuildContext context;

  const PostTopWidget(
      {required this.postPlace,
      required this.postType,
      required this.context,
      super.key});
  @override
  Widget build(BuildContext context) {
    if (postPlace == 'home') {
      return Row(
        children: [
          InkWell(
            radius: 20,
            onTap: () {},
            child: const CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  "https://img.freepik.com/free-vector/romantic-floral-background_53876-89197.jpg?w=1060&t=st=1666372949~exp=1666373549~hmac=ceb57c29aa08ce88b7f2f80aeecfefb86c8399beff83859f981e28f8bb4e6c21"),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {},
                child: const Text(
                  "r/Painting",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      showeProfileDialog(context);
                    },
                    child: Text(
                      "u/THEBNTG",
                      style: TextStyle(color: Colors.grey[800]),
                    ),
                  ),
                  Text(
                    "  15h",
                    style: TextStyle(color: Colors.grey[800]),
                  ),
                  if (postType == "image")
                    InkWell(
                      child: Text(
                        "  i.redd.it",
                        style: TextStyle(color: Colors.grey[800]),
                      ),
                    )
                ],
              ),
            ],
          ),
          const Spacer(),
          PopupMenuButton(
            child: const Icon(Icons.more_vert),
            itemBuilder: (_) => <PopupMenuItem<String>>[
              PopupMenuItem<String>(
                  value: "Save",
                  child: Row(
                    children: const [
                      Icon(CustomIcons.saved),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Save")
                    ],
                  )),
              PopupMenuItem<String>(
                  value: "Hide post",
                  child: Row(
                    children: const [
                      Icon(Icons.visibility_off_outlined),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Hide post")
                    ],
                  )),
              PopupMenuItem<String>(
                  value: "Report",
                  child: Row(
                    children: const [
                      Icon(Icons.flag_outlined),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Report")
                    ],
                  )),
              PopupMenuItem<String>(
                  value: "Block account",
                  child: Row(
                    children: const [
                      Icon(Icons.block_outlined),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Block account")
                    ],
                  )),
              PopupMenuItem<String>(
                  value: "Award details",
                  child: Row(
                    children: const [
                      Icon(CustomIcons.award),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Award details")
                    ],
                  )),
            ],
            onSelected: (String val) {},
          ),
        ],
      );
    }

    if (postPlace == "community") {
      return Row(
        children: [
          InkWell(
            onTap: () {
              showeProfileDialog(context);
            },
            child: Text(
              "u/svftsof",
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
          const Icon(
            Icons.person,
            color: Colors.blue,
          ),
          Text(
            "  16d   ",
            style: TextStyle(color: Colors.grey[600]),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              "i.redd.it",
              style: TextStyle(color: Colors.grey[600]),
            ),
          )
        ],
      );
    } else {
      return Row(
        children: [
          const CircleAvatar(
            radius: 10,
            backgroundImage: NetworkImage(
                "https://img.freepik.com/free-vector/romantic-floral-background_53876-89197.jpg?w=1060&t=st=1666372949~exp=1666373549~hmac=ceb57c29aa08ce88b7f2f80aeecfefb86c8399beff83859f981e28f8bb4e6c21"),
          ),
          const SizedBox(
            width: 4,
          ),
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: const Text("r/AskAnySoftware"),
              ),
              const Text("  12m"),
              const Text("  i.redd.it")
            ],
          )
        ],
      );
    }
  }
}
