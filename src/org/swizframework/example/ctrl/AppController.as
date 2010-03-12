package org.swizframework.example.ctrl
{
	import flash.events.IEventDispatcher;

	import org.swizframework.core.IDispatcherAware;
	import org.swizframework.example.model.AppModel;

	public class AppController
	{

		// Inject model bean defined in Beans.mxml
		// Swiz will find the instance in Beans by its type.
		[Inject]
		public var model:AppModel;

		public function AppController()
		{
		}

		// Mark any method with PostConstruct when you want to
		// access injected beans. Within the constructor beans
		// are not injected yet.
		[PostConstruct]
		public function init():void
		{
			trace("model " + model);
		}

		// Note we can define event + type constant because
		// we have defined the event package in the SwizConfig
		// within the main application MXML
		[Mediate(event="MessageEvent.MESSAGE", properties="message")]
		public function handleMessage(message:String):void
		{
			model.message = message;
		}

	}
}