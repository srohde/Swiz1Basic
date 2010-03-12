package org.swizframework.example.ctrl
{
	import flash.events.IEventDispatcher;

	import org.swizframework.core.IDispatcherAware;
	import org.swizframework.example.model.AppModel;

	public class AppController
	{

		[Inject]
		public var model:AppModel;

		public function AppController()
		{
		}

		[Mediate(event="MessageEvent.MESSAGE", properties="message")]
		public function handleMessage(message:String):void
		{
			model.message = message;
		}

	}
}