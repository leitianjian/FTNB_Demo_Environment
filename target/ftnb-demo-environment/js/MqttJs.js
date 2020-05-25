/**
 * Created by FreeBuf on 2015/8/28.
 */
var client;
//    client = new Paho.MQTT.Client("192.168.0.59", 61623,"nihao");
client = new Paho.MQTT.Client("192.168.0.178", 9001,"nihao");
//set callback handlers
client.onConnectionLost = onConnectionLost;
client.onMessageArrived = onMessageArrived;
//connect the client
client.connect({
    onSuccess:onConnect,
//        userName:"admin",
//        password:"password",
    onFailure:onFailure

});
function onFailure()
{
    alert("failed");
}
//called when the client connects
function onConnect() {
    // Once a connection has been made, make a subscription and send a message.
    alert("onConnect");
    client.subscribe("ft");
    message = new Paho.MQTT.Message("Hello");
    message.destinationName = "ft";
    client.send(message);
}

//called when the client loses its connection
function onConnectionLost(responseObject) {
    if (responseObject.errorCode !== 0) {
        console.log("onConnectionLost:" + responseObject.errorMessage);
    }
}

//called when a message arrives
function onMessageArrived(message) {
    console.log("onMessageArrived:" + message.payloadString);
    alert(message.payloadString);

}