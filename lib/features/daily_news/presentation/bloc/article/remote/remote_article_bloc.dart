import 'package:bloc/bloc.dart';
import 'package:news_app/core/resources/data_state.dart';
import 'package:news_app/features/daily_news/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:news_app/features/daily_news/presentation/bloc/article/remote/remote_article_state.dart';

import '../../../../domain/usecases/get_article.dart';

class RemoteArticlesBloc extends Bloc<RemoteArticleEvent,RemoteArticlesState>{

  final GetArticleUseCase _getArticleUseCase;

  RemoteArticlesBloc(this._getArticleUseCase): super(RemoteArticlesLoading()){
    on <GetArticles> (onGetArticles);
  }

  Future<void> onGetArticles(GetArticles event,Emitter<RemoteArticlesState> emit) async {
  final dataState = await _getArticleUseCase();

  if(dataState is DataSucess && dataState.data!.isNotEmpty){
    emit(
      RemoteArticlesDone(dataState.data!)
    );
  }
  if( dataState is DataFailed){
    emit(
      RemoteArticlesError(dataState.error!)
    );
  }
}

}