///
///The flyweight design pattern is a structural design pattern that allows you to reuse shared objects to reduce the number of objects in the system and the memory overhead.
///In Dart, you can implement the flyweight design pattern by creating a factory class that maintains a pool of objects and returns the objects from the pool when they are requested.
///

abstract class Feature {
  String get feature;
  int get size;
  int get colorCode;
}

class FeatureFactory {
  final Map<String, Feature> _features = {};

  Feature getFeature(String feature) {
    if (_features.containsKey(feature)) {
      return _features[feature]!;
    } else {
      final featureObject = FeatureImp(feature);
      _features[feature] = featureObject;
      return featureObject;
    }
  }
}

class FeatureImp implements Feature {
  final String feature;
  final int size;
  final int colorCode;

  FeatureImp(this.feature)
      : size = 10,
        colorCode = 0;
}

///
///In this example, the FeatureFactory class maintains a pool of Feature objects in a Map field and returns the objects from the pool when they are requested. If a feature is not in the pool, the factory creates a new FeatureImp object and adds it to the pool.
///The main function creates a FeatureFactory object and requests four features: a, b, c, and a. The factory returns the same FeatureImp object for the a features, since they are the same feature, and returns different objects for the b and c features.