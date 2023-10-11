import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_sanity/flutter_sanity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_iedc/models/eventmodel/events.dart';

import 'package:user_iedc/sanity/sanity_config.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  List<Events> eventList = [];
  HomeBloc() : super(HomeState.initial()) {
    on<_FetchData>((event, emit) async {
      emit(state.copyWith(data: []));
      print('fetching');
      final response = await sanityClient.fetch(
          '*[_type == "event"]{_id,event_name,start_time,end_time,speaker,status,category,venue,posterurl,description}');
      final List<Events> eventList = (response as List).map((e) {
        return Events.fromJson(e);
      }).toList();

      final categoryResponse =
          await sanityClient.fetch('*[_type == "category"]{categoryname}');
      List categoryList =
          categoryResponse.map((obj) => obj["categoryname"] as String).toList();
      final venueResponse =
          await sanityClient.fetch('*[_type == "venue"]{venuename}');
      List venueList =
          venueResponse.map((obj) => obj["venuename"] as String).toList();
      // final List<Events> eventList = (response as List).map((e) {
      //   return Events(id: e["_id"], eventname: e["event_name"], starttime: e["start_time"], endtime: e["end_time"], speaker: e["speaker"], status: e["status"], category: e["category"], venue: e["venue"], posterurl: e["posterurl"]);
      // }).toList();

      log(response.toString());
      print(response[0]);
      // //print(downloadsList[0].toString());
      // //print(downloadsList.toString());
      // print('test');
      // print(eventList[2]);
      print(categoryList);
      print(venueList);
      emit(state.copyWith(
        data: eventList,
        categories: categoryList,
        venues: venueList,
      ));
    });
  }
  List<Events> getEventList() {
    return eventList;
  }
}
