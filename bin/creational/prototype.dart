///
///The prototype design pattern is a creational design pattern that allows you to create new objects by copying existing objects. It is an alternative to creating new objects by calling a constructor.
///In Dart, you can implement the prototype design pattern by doing the follwing
///

class Location {
  double lat;
  double lng;
  Location.clone(Location location) : this(location.lat, location.lng);

  Location(this.lat, this.lng);
}
