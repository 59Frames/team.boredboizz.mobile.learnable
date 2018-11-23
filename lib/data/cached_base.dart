import 'dart:async';

import 'package:learnable/data/database_helper.dart';
import 'package:learnable/data/structure_loader.dart';
import 'package:learnable/utils/network_util.dart';
import 'package:learnable/data/rest_api.dart';
import 'package:learnable/models/events.dart';
import 'package:learnable/models/schools.dart';

/// This class is responsible to cache all the data
/// while the application is running for a fast access.
class CachedBase {
  static final CachedBase _instance = new CachedBase._internal();

  factory CachedBase() => _instance;

  final NetworkUtil _networkUtil = NetworkUtil();

  /// Data objects
  /// the [_status] contains the base state.
  /// for example on every initialisation it is set to [_BaseStatus.LOADING];
  BaseStatus _status = BaseStatus.OFFLINE;

  /// the [_notifySubscribers] stores a list of [BaseNotifier]
  List<BaseNotifier> _notifySubscribers = List();

  /// User Data Objects
  Map<int, School> _schools = Map();
  Map<int, Teacher> _teachers = Map();
  Map<int, Class> _classes = Map();
  Map<int, Course> _courses = Map();
  Map<int, Lesson> _lessons = Map();
  Map<int, EventType> _eventTypes = Map();
  Map<int, Event> _events = Map();
  Map<int, Member> _members = Map();

  /// Creates an EssenceBase instance
  CachedBase._internal();

  /// Builds the database and calls [_notifyReadyToUse] if has been loaded
  void build() async {
    print("loading Database");
    _status = BaseStatus.LOADING;
    StructureLoader().initializationDone.then((v) {
      _status = BaseStatus.ONLINE;
      if (_networkUtil.isConnected) {
        print("Updating data");
        setUp();
      }
      _notifyReadyToUse();
    });
  }

  Future buildWithNoPush() async {
    print("silent loading Database");
    _status = BaseStatus.LOADING;
    return StructureLoader().initializationDone.then((v) {
      _status = BaseStatus.ONLINE;
      if (_networkUtil.isConnected) {
        print("Updating data");
        setUp();
      }

      return;
    });
  }

  Future loadAllCourses() async =>
      DatabaseHelper().getAllCourses().then((map) => _courses.addAll(map));

  Future loadAllEventTypes() async => DatabaseHelper()
      .getAllEventTypes()
      .then((map) => _eventTypes.addAll(map));

  Future loadAllSchools() async =>
      DatabaseHelper().getAllSchools().then((map) => _schools.addAll(map));

  Future loadAllTeachers() async =>
      DatabaseHelper().getAllTeachers().then((map) => _teachers.addAll(map));

  Future loadAllMembers() async =>
      DatabaseHelper().getAllMembers().then((map) => _members.addAll(map));

  Future loadAllClasses() async =>
      DatabaseHelper().getAllClasses().then((map) => _classes.addAll(map));

  Future loadAllLessons() async =>
      DatabaseHelper().getAllLessons().then((map) => _lessons.addAll(map));

  Future loadAllEvents() async =>
      DatabaseHelper().getAllEvents().then((map) => _events.addAll(map));

  Future requestAllCourses() async =>
      RestAPI().getCourses().then((map) => _courses.addAll(map));

  Future requestAllEventTypes() async =>
      RestAPI().getEventTypes().then((map) => _eventTypes.addAll(map));

  Future requestAllSchools() async =>
      RestAPI().getSchools().then((map) => _schools.addAll(map));

  Future requestAllTeachers() async =>
      RestAPI().getTeachers().then((map) => _teachers.addAll(map));

  Future requestAllClasses() async =>
      RestAPI().getClasses().then((map) => _classes.addAll(map));

  Future requestAllLessons() async =>
      RestAPI().getLessons().then((map) => _lessons.addAll(map));

  Future requestAllEvents() async =>
      RestAPI().getEvents().then((map) => _events.addAll(map));

  /// Gets called when a new User has logged in to load every user dependent Data
  Future setUp() async {
    clear();
    if (_networkUtil.isConnected) {
      List<Future> futures = [];
      futures.add(requestAllCourses());
      futures.add(requestAllEventTypes());
      futures.add(requestAllSchools());
      futures.add(requestAllTeachers());
      futures.add(requestAllClasses());
      futures.add(requestAllLessons());
      futures.add(requestAllEvents());
      return await Future.wait(futures);
    }
  }

  /// returns the [_events] map
  Map<int, Event> get getEventMap => _events;

  Map<int, Class> get getClassMap => _classes;

  Map<int, Course> get getCourseMap => _courses;

  Map<int, Lesson> get getLessonMap => _lessons;

  /// adds an [BaseNotifier] to the [_notifySubscribers] list
  void addNotifier(BaseNotifier notifier) {
    _notifySubscribers.add(notifier);
  }

  /// notifies every [BaseNotifier] in [_notifySubscribers]
  void _notifyReadyToUse() {
    if (_notifySubscribers.length > 0) {
      for (var n in _notifySubscribers) n.onLocalDataHasBeenLoaded();
    } else {
      print("No subscribers");
    }
  }

  Future<Map<int, Lesson>> getClassLessons(int classId) async {
    Map<int, Lesson> map = Map();
    _lessons.forEach((key, lesson) {
      if (lesson.clazz.id == classId) map[lesson.id] = lesson;
    });
    return map;
  }

  Future<Map<int, Member>> getClassMembers(int classId) {
    return RestAPI().getClassMembers(classId).then((map) {
      _members.addAll(map);
      return map;
    });
  }

  Future<Map<int, Teacher>> getClassTeachers(int classId) async {
    return DatabaseHelper().getClassTeachers(classId).then((map) {
      if (map.isEmpty) {
        return RestAPI().getClassTeachers(classId).then((map) {
          _teachers.addAll(map);
          return map;
        });
      }

      _teachers.addAll(map);
      return map;
    });
  }

  Future<Member> getMemberById(int id) async {
    if (_members.containsKey(id)) return _members[id];

    return DatabaseHelper().getMemberById(id).then((member) {
      if (member != null) {
        _members[member.id] = member;
        return member;
      }

      return RestAPI().getMemberById(id).then((member) {
        _members[member.id] = member;
        return member;
      });
    });
  }

  Future<School> getSchoolById(int id) async {
    if (_schools.containsKey(id)) return _schools[id];

    return DatabaseHelper().getSchoolById(id).then((school) {
      if (school != null) {
        _schools[school.id] = school;
        return school;
      }

      return RestAPI().getSchoolById(id).then((school) {
        _schools[school.id] = school;
        return school;
      });
    });
  }

  Future<Teacher> getTeacherById(int id) async {
    if (_teachers.containsKey(id)) return _teachers[id];

    return DatabaseHelper().getTeacherById(id).then((teacher) {
      if (teacher != null) {
        _teachers[teacher.id] = teacher;
        return teacher;
      }

      return RestAPI().getTeacherById(id).then((teacher) {
        _teachers[teacher.id] = teacher;
        return teacher;
      });
    });
  }

  Future<Course> getCourseById(int id) async {
    if (_courses.containsKey(id)) return _courses[id];

    return DatabaseHelper().getCourseById(id).then((course) {
      if (course != null) {
        _courses[course.id] = course;
        return course;
      }

      return RestAPI().getCourseById(id).then((course) {
        _courses[course.id] = course;
        return course;
      });
    });
  }

  Future<Class> getClassById(int id) async {
    if (_classes.containsKey(id)) return _classes[id];

    return DatabaseHelper().getClassById(id).then((clazz) {
      if (clazz != null) {
        _classes[clazz.id] = clazz;
        return clazz;
      }

      return RestAPI().getClassById(id).then((clazz) {
        _classes[clazz.id] = clazz;
        return clazz;
      });
    });
  }

  Future<Lesson> getLessonById(int id) async {
    if (_lessons.containsKey(id)) return _lessons[id];

    return DatabaseHelper().getLessonById(id).then((lesson) {
      if (lesson != null) {
        _lessons[lesson.id] = lesson;
        return lesson;
      }

      return RestAPI().getLessonById(id).then((lesson) {
        _lessons[lesson.id] = lesson;
        return lesson;
      });
    });
  }

  Future<EventType> getEventTypeById(int id) async {
    if (_eventTypes.containsKey(id)) return _eventTypes[id];

    return DatabaseHelper().getEventTypeById(id).then((eventType) {
      if (eventType != null) {
        _eventTypes[eventType.id] = eventType;
        return eventType;
      }

      return RestAPI().getEventTypeById(id).then((eventType) {
        _eventTypes[eventType.id] = eventType;
        return eventType;
      });
    });
  }

  Future<Event> getEventById(int id) async {
    if (_events.containsKey(id)) return _events[id];

    return DatabaseHelper().getEventById(id).then((event) {
      if (event != null) {
        _events[event.id] = event;
        return event;
      }

      return RestAPI().getEventById(id).then((event) {
        _events[event.id] = event;
        return event;
      });
    });
  }

  List<Event> getOccuringEventsInLesson(Lesson lesson) {
    return _events.values.where((event) => (event.lesson == lesson)).toList();
  }

  bool isOnline() => _status == BaseStatus.ONLINE;

  void persist() async {
    if (this.isOnline()) {
      print("persisting data");
      DatabaseHelper().saveAllLearnableObjects("courses", _courses);
      DatabaseHelper().saveAllLearnableObjects("schools", _schools);
      DatabaseHelper().saveAllLearnableObjects("teachers", _teachers);
      DatabaseHelper().saveAllLearnableObjects("members", _members);
      DatabaseHelper().saveAllLearnableObjects("classes", _classes);
      DatabaseHelper().saveAllLearnableObjects("lessons", _lessons);
      DatabaseHelper().saveAllLearnableObjects("event_types", _eventTypes);
      DatabaseHelper().saveAllLearnableObjects("events", _events);
      print("data persisted");
    }
  }

  void clear() {
    _events = Map();
    _teachers = Map();
    _lessons = Map();
    _members = Map();
    _courses = Map();
    _classes = Map();
    _eventTypes = Map();
    _schools = Map();
  }

  Future<Null> refreshEventMap() async {
    if (_networkUtil.isConnected) {
      return RestAPI().getEvents().then((Map<int, Event> map) {
        _events.addAll(map);
        return null;
      });
    } else
      return null;
  }
}

enum BaseStatus { LOADING, ONLINE, OFFLINE }

abstract class BaseNotifier {
  void onLocalDataHasBeenLoaded();
}
