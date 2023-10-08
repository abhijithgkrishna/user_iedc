import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_sanity/flutter_sanity.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_iedc/models/eventmodel/events.dart';
part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<_FetchData>((event, emit) async {
      emit(state.copyWith(data: []));
      final sanityClient = SanityClient(
          dataset: 'production',
          projectId: 'i0p2y232',
          token:
              'skqvnPfRtWT2HoFdHEwayz0MWwIH9ewa2Te9Abevs0fE0eAS4Awts5OP6NHUgiYxbbMe8IIaJp585R7jaaFPFCzk4BjyYByh19v3JBe7jmX0h4GRudIzO1iRsPjcYgeMcIVRefJPfIBGxDWc176SS0JUKDEkPzGZQEqcP85uKW4iRWXPj98B');
      print('fetching');
      final response = await sanityClient
          .fetch('*[_type == "event"]{_id,event_name,start_time,end_time,speaker,status,category,venue}');
        final List<Events> eventList = (response as List).map((e) {
          return Events.fromJson(e);
        }).toList();

      log(response.toString());
      print(response[0]);
      //print(downloadsList[0].toString());
      //print(downloadsList.toString());
      print('test');
      print(eventList[2]);
      emit(state.copyWith(data: eventList));
    });
  }
}
