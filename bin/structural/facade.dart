///
///The facade design pattern is a structural design pattern that provides a simplified interface to a complex system, hiding the complexity behind the facade.
///In Dart, you can implement the facade design pattern by creating a class that provides a simplified interface to a complex system, and delegates the calls to the appropriate classes in the system.
///

class Html {
  String generateHeader(String text) => '<header>$text</header>';
  String generateBody(String elements) => '<body>$elements</body>';
  String generateFooter(String text) => '<footer>$text</footer>';
}

class Css {
  String generateStyles(String styles) => '<style>$styles</style>';
}

class JavaScript {
  String generateScripts(String scripts) => '<script>$scripts</script>';
}

class PageFacade {
  final Html _html = Html();
  final Css _css = Css();
  final JavaScript _javascript = JavaScript();

  String generatePage() =>
      _html.generateHeader('Sam') +
      _html.generateBody("<p>Hello world</p>") +
      _html.generateFooter("Ezedi") +
      _css.generateStyles('p{color: red;}') +
      _javascript.generateScripts('function test() {return "Text";}');
}
