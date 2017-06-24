VerStix
========

[Vert.x](http://vertx.io/ "Vert.x") TCP EventBus client for [Pharo Smalltalk](http://www.pharo-project.org/ "Pharo").

## Installation

```Smalltalk
Gofer new
      url: 'http://smalltalkhub.com/mc/MasashiUmezawa/VerStix/main';
      package: 'ConfigurationOfVerStix';
      load.
(Smalltalk at: #ConfigurationOfVerStix) load
```

## Connect
```Smalltalk
eventBus := VsEventBus host: 'localhost' port: 7000.
eventBus connect.
```

## Async send (one-to-one)
```Smalltalk
eventBus send: {'value'->'HELLO from Smalltalk'} to: 'echo'.
```

## Async send with callback
```Smalltalk
eventBus send: {'value'-> Time now asString} to: 'echo' callback: [:data | data inspect].
```

## Publish/Subscribe (one-to-many)
```Smalltalk
eventBus publish: {'value'-> Time now asString} to: 'echo'. "On image-A"
eventBus subscribe: 'echo' callback: [:msg | msg inspect]. "On image-A,B,C,D, etc"
eventBus unsubscribe: 'echo'.
```

Note that you can receive publish events from other images!


