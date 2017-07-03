VerStix
========

[Vert.x](http://vertx.io/ "Vert.x") TCP [EventBus Bridge](http://vertx.io/docs/#bridges) client for [Pharo Smalltalk](http://www.pharo-project.org/ "Pharo").

You can interact with various vert.x components ([Web](http://vertx.io/docs/#web), [Auth](http://vertx.io/docs/#authentication_and_authorisation), [DB](http://vertx.io/docs/#data_access), [MQ](http://vertx.io/docs/#integration), etc) via EventBus.

## Installation

```Smalltalk
Gofer new
      url: 'http://smalltalkhub.com/mc/MasashiUmezawa/VerStix/main';
      package: 'ConfigurationOfVerStix';
      load.
(Smalltalk at: #ConfigurationOfVerStix) load
```

Or try CatalogBrowser typing 'VerStix'.

## Example

Please see the [example](./example/README.md).

