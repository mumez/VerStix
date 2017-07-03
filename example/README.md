VerStix Example
========

This directory contains an example verticle for testing VerStix.

You can send `'hello'` event and send/receive `'echo'` event using VerStix-enabled Smalltalk images.

## Server side

### Vert.x Installation

Through [SDKMAN](http://sdkman.io/):

```Shell
sdk install vertx
```

### Running the example verticle

```Shell
vertx run TcpEventBusBridgeEchoServer.groovy
```

Now the verticle is waiting for events.

## Client side

### Connecting to the server
```Smalltalk
eventBus := VsEventBus host: 'localhost' port: 7000.
eventBus connect.
```

### Sending 'echo' event
```Smalltalk
eventBus send: {'value'->'HELLO from Smalltalk'} to: 'echo'.
```

You can see the output on server console

```Shell
got: {"value":"HELLO from Smalltalk"}
```

### Sending 'echo' event with callback
```Smalltalk
eventBus send: {'value'-> Time now asString} to: 'echo' callback: [:msg | msg body inspect].
```

If you set a callback, you can receive the answer. Inspector shows the value you sent.

### Publish/Subscribe (one-to-many)
```Smalltalk
eventBus subscribe: 'echo' callback: [:msg | msg body inspect]. "On various images-A,B,C,D, etc"

eventBus publish: {'value'-> Time now asString} to: 'echo'. "On image-A"
```
Try subscribing from other Smalltalk images. You can receive the broadcasted events.

### Ucsubscribe
```Smalltalk
eventBus unsubscribe: 'echo'.
```

### Releasing
```Smalltalk
eventBus release.
```
