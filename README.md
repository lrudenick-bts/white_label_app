# Flutter "white-label" app sample

This repo shows an idea on how to "white-label" a Flutter app

## How does it work?

The idea is to have a base project with the "white-label" app source code itself, leaving configurable all the things you can customize for each brand, such us texts, colors, etc. 

### base_project

As its name says, it is the code-base project, containing the base "white-label" source code of the app. 

It has a [config](/base_project/config) directory which may contains the configurations to customize. See example class [branding.dart](/base_project/config/lib/branding.dart)

```
class Branding {
  static String appName = 'Base project app';
  ...
}

```

This `config` directory should be placed as a dependency in the [pubspec.yaml](/base_project/pubspec.yaml) file.

```
dependencies:
  config:
    path: config
    ....
```    

Then you can use the defined vars wherever you need. See [main.dart](/base_project/lib/main.dart)

```
MyHomePage(title: Branding.appName)
```

## brand1_app and brand2_app

These two sample projects (see [brand1_app](/brand1_app/) and [brand2_app](/brand2_app/)) show how to use and customize the `base_project`. Each new brand project is created as a separeted project, but it will use the source code of the base project, overriding the configuration according to the new brand.

The custom projects should have the same `config` directory mentioned in the previous section. It can be a copy of the base `config` directory, replacing, in this example, the app name. See [custom configuration](/brand1_app/config/lib/branding.dart):

```
class Branding {
  static String appName = 'Brand 1 app';
  ...
}
```

Declare the `base_project` as a dependency in the custom project. So place it in the [puspec.yaml](/brand1_app/pubspec.yaml) file like this:

```
dependencies:
  base_project:
    path: ../base_project

    ...
```

Then declare what you want to override from your dependency (see related documentation here: [https://dart.dev/tools/pub/dependencies#dependency-overrides](https://dart.dev/tools/pub/dependencies#dependency-overrides)). In this case it will be the `config` directory:

```
dependency_overrides:
  config:
    path: config
```

Finally in the custom project replace the `main.dart` file content, referencing the base project's `main.dart` file (see [custom main dart](/brand1_app/lib/main.dart)):

```
import 'package:base_project/main.dart' as base_project;
void main() => base_project.main();
```


And that will be all. After build and run the apps, you will have three separated apps using the same base source code.


<img src="/screenshots/home.png" height="400"/>&nbsp;&nbsp;&nbsp;<img src="/screenshots/base_project.png" height="400"/>&nbsp;&nbsp;&nbsp;<img src="/screenshots/brand_1.png" height="400"/>&nbsp;&nbsp;&nbsp;<img src="/screenshots/brand_2.png" height="400"/>
