VerStix
========

[Vert.x](http://vertx.io/ "Vert.x") TCP [EventBus Bridge](http://vertx.io/docs/#bridges) client for [Pharo Smalltalk](http://www.pharo-project.org/ "Pharo").

You can interact with various vert.x components (Web, Auth, DB, MQ, etc) via EventBus.

## Installation

```Smalltalk
Gofer new
      url: 'http://smalltalkhub.com/mc/MasashiUmezawa/VerStix/main';
      package: 'ConfigurationOfVerStix';
      load.
(Smalltalk at: #ConfigurationOfVerStix) load
```

## Example

Please see the [example](./example/README.md).



