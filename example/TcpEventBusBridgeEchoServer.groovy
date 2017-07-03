import io.vertx.core.AbstractVerticle
import io.vertx.core.Vertx;
import io.vertx.core.eventbus.Message;
import io.vertx.core.json.JsonObject;
import io.vertx.ext.bridge.BridgeOptions;
import io.vertx.ext.bridge.PermittedOptions;
import io.vertx.ext.eventbus.bridge.tcp.TcpEventBusBridge;

class TcpEventBusBridgeEchoServer extends AbstractVerticle {

  @Override
  void start() throws Exception {
    println "starting"

    vertx.eventBus().consumer("hello", {msg -> 
      msg.reply(new JsonObject().put("value", "Hello " + msg.body().getString("value")));
    });

    vertx.eventBus().consumer("echo", {msg -> 
        System.out.println("got: "+ msg.body());
        msg.reply(msg.body());
    });

    TcpEventBusBridge bridge = TcpEventBusBridge.create(
        vertx,
        new BridgeOptions()
            .addInboundPermitted(new PermittedOptions().setAddress("hello"))
            .addInboundPermitted(new PermittedOptions().setAddress("echo"))
            .addOutboundPermitted(new PermittedOptions().setAddress("echo")));

    bridge.listen(7000, {res -> System.out.println("Ready: "+ bridge)});
  }

  @Override
  void stop() throws Exception {
    println "stopping"
  }
}
