package org.swizframework.example.event
{
	import flash.events.Event;

	public class MessageEvent extends Event
	{
		public static const MESSAGE:String = "foo";

		public var message:String;

		public function MessageEvent(type:String, message:String, bubbles:Boolean = true, cancelable:Boolean = false)
		{
			super(type, bubbles, cancelable);
			this.message = message;
		}
	}
}