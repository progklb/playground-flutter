# flutter_startup_namer

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

---

## Observations

Notes taken throughout the jouney of creating this app.

- `MaterialApp`s include an `AppBar`, title, background colour, certain fonts/icons etc.
- Non-material apps do not include these out of the box, and require that they write these yourself.
- There is also a `CupertinoApp`

- To minimize the visual confusion that can result from heavily nested layout code, implement pieces of the UI in variables and functions.

### Create the starter Flutter app

- This example creates a Material app. Material is a visual design language that is standard on mobile and the web. Flutter offers a rich set of Material widgets. It’s a good idea to have a `uses-material-design: true` entry in the flutter section of your `pubspec.yaml` file. This will allow you to use more features of Material, such as their set of predefined Icons.
- The main() method uses arrow (=>) notation. Use arrow notation for one-line functions or methods.
- The app extends StatelessWidget, which makes the app itself a widget. In Flutter, almost everything is a widget, including alignment, padding, and layout.
- The Scaffold widget, from the Material library, provides a default app bar, and a body property that holds the widget tree for the home screen. The widget subtree can be quite complex.
- A widget’s main job is to provide a build() method that describes how to display the widget in terms of other, lower level widgets.
- The body for this example consists of a Center widget containing a Text child widget. The Center widget aligns its widget subtree to the center of the screen.

### Use an external package

- [pudev](https://pub.dev/) is the home of external Dart/Flutter packages.
- The `pubspec.yaml` file manages the assets and dependencies for a Flutter app. Add package references here.
- `flutter pub get` is the command run to import packages. This automatically generates the `pubspec.lock` file with a list of all packages pulled into the project and their version numbers.
- Packages are imported into Dart files using `import 'package:<name>'` e.g. `import 'package:english_words/english_words.dart'`

### Add a Stateful widget

- **Stateless** widgets are immutable, meaning that their properties can’t change — all values are final.
- **Stateful** widgets maintain state that might change during the lifetime of the widget. Implementing a stateful widget requires at least two classes:
  - 1. a StatefulWidget class that creates an instance of State class (immutable and can be discarded/regenerated)
  - 2. a State class (persists over the lifetime of the widget)
- By conventions the state for the widget adopts the widgets name - e.g. `RandomWords` and `RandomWordsState`.
- To create a `StatefulWidget` and `State` pair, type `stful` and the IDE will suggest creating these for you. This provides boilerplate code for the two classes.
- Prefixing an identifier with `_` enforces privacy in the Dart language, and is recommended for `State` objects.

### Create an infinite scrolling ListView

- `ListView`’s `builder` factory constructor allows you to build a list view lazily, on demand.
- `Lists` allow an array of items to be stored.
- `Sets` are lists that do not allow duplicate entries.

### Add icons to the list

- Lambdas are declared as

```dart
onTap: () { /*...*/ };
```

### Navigate to a new screen

- New pages are called "routes".
- The `Navigator` manages a stack containing the apps routes.
- Pushing a route into the `Navigator` stack displays that route, and popping returns to the previous route.
- `Navigator.pop` does not need to be implemented if the app bar exposes a back button.

- There are two approaches to navigation, and both are available in later versions of Flutter. ([more information here](https://medium.com/flutter/learning-flutters-new-navigation-and-routing-system-7c9068155ade))
  - Imperative (Navigator 1.0) *(More difficult to push/pop multiple pages and manage the stack)*
  - Declarative (Navigator 2.0)

#### Imperative

- `Navigator.of(context).push(...)` or `Navigator.push(...)` is used to push a new anonymous route.
- `Navigator.pushNamed(...)` is used to push a named route. All routes must be defined in the `main.dart` entry point under a `routes: {}` object.
- `onGenerateRoute` can be implemented to manually process a provided route, extract parameters, and act accordingly. (i.e. passing in params such as `'/details/:id'`)

### Images

- When adding images, you need to update the `pubspec.yaml` file to access them.
- Images can be accessed using `Image.asset('filePath')`

### Resuable widgets

- To minimize the visual confusion that can result from heavily nested layout code, implement pieces of the UI in variables and functions.
- Common practice is to define a function to return the widget e.g. `Widget _buildListView() => ListView(...)`

```dart
var stars = Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.black),
    Icon(Icons.star, color: Colors.black),
  ],
);

final ratings = Container(
  padding: EdgeInsets.all(20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      stars,
      Text(
        '170 Reviews',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w800,
          fontFamily: 'Roboto',
          letterSpacing: 0.5,
          fontSize: 20,
        ),
      ),
    ],
  ),
);

Widget _buildImageColumn() => Container(
      decoration: BoxDecoration(
        color: Colors.black26,
      ),
      child: Column(
        children: [
          _buildImageRow(1),
          _buildImageRow(3),
        ],
      ),
    );
```
