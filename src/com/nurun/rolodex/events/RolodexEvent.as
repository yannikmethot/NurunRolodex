package com.nurun.rolodex.events
{
	import flash.events.Event;
	
	public class RolodexEvent extends Event
	{
		
		
		
		public function RolodexEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}