import 'package:toktik/domain/datasource/video_posts_datasourrce.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repository/video_posts_repository.dart';

class VideoPostRepositoryImpl implements VideoPostsRepository {
  final VideoPostsDataSource videosDataSource;

  VideoPostRepositoryImpl({required this.videosDataSource});
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDataSource.getTrendingVideosByPage(page);
  }
}
