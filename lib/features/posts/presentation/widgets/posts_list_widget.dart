import 'package:flutter/material.dart';

import '../../domain/entities/posts_entity.dart';
import '../screens/post_detail_page.dart';

class PostListWidget extends StatelessWidget {
  final List<Post> posts;
  const PostListWidget({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: posts.length,
      itemBuilder: (context, index) => ListTile(
        leading: Text(posts[index].id.toString()),
        title: Text(posts[index].title),
        subtitle: Text(posts[index].body),
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => PostDetailPage(
                        post: posts[index],
                      )));
        },
      ),
      separatorBuilder: (context, index) => const Divider(thickness: 1),
    );
  }
}
