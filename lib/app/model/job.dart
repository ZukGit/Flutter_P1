import 'dart:convert';

import 'package:meta/meta.dart';

class Job {
  final String name;
  final String cname;
  final String size;
  final String salary;
  final String username;
  final String title;

  Job(
      {@required this.name,
      @required this.cname,
      @required this.size,
      @required this.salary,
      @required this.username,
      @required this.title});

  static List<Job> fromJson(String json) {
    List<Job> _jobs = [];
    for (var value in new JsonDecoder().convert(json)['list']) {
      _jobs.add(Job.fromMap(value));
    }
    return _jobs;
  }




  static Job fromMap(Map map) {
    return new Job(
        name: map['name'],
        cname: map['cname'],
        size: map['size'],
        salary: map['salary'],
        username: map['username'],
        title: map['title']);
  }
}
