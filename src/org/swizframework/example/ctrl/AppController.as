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

		[PostConstruct]
		public function init():void
		{
			trace("model " + model);
		}

		[Mediate(event="MessageEvent.MESSAGE", properties="message")]
		public function handleMessage(message:String):void
		{
			model.message = message;
		}

	}
}