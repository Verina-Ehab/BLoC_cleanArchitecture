import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../domain_repo/posts_repo.dart';
import '../entities/posts_entity.dart';

class GetAllPostsUsecase {
  final PostsRepository repository;

  GetAllPostsUsecase(this.repository);

// we named this function "call" to make this class callable
  //  callable mean that we can call this fn using its class name
  // GetAllPostsUsecase getAllPostsUsecase= GetAllPostsUsecase();
  // print(getAllPostsUsecase()) == print(getAllPostsUsecase.call())

  Future<Either<Failure, List<Post>>> call() async {
    return await repository.getAllPosts();
  }
}
