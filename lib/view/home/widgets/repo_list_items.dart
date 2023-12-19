import 'package:bs23_flutter_task_101/view/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../configs/colors_utils.dart';

class RepoListItem extends StatelessWidget {
  final HomeViewController _homeViewController = Get.find();
  RepoListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: _homeViewController.listOfRepoItems.length,
      itemBuilder: (context, index) {
        return Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade100,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _homeViewController.listOfRepoItems[index].name!,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                        color: ColorUtils.blue25,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: ColorUtils.blue50)),
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: ColorUtils.blue700,
                      size: 15,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                _homeViewController.listOfRepoItems[index].description!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.person,
                    color: ColorUtils.blue700,
                    size: 15,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    _homeViewController.listOfRepoItems[index].owner!.login!,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.fork_right_sharp,
                    color: ColorUtils.blue700,
                    size: 15,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    "${_homeViewController.listOfRepoItems[index].forksCount!}",
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.star,
                    color: ColorUtils.blue700,
                    size: 15,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    "${_homeViewController.listOfRepoItems[index].stargazersCount!}",
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  Text(
                    DateFormat('dd-MM-yyyy').format(
                        _homeViewController.listOfRepoItems[index].createdAt!),
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        height: 15,
      ),
    );
  }
}
