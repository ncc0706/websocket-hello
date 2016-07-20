package com.xlinyu.websocket;

import javax.websocket.OnMessage;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint(value="/echo")
public class EchoServer {

	@OnMessage
	public String echo(String message){
		return "Hello " + message;
	}
	
}
