package com.nurun.rolodex
{
	import com.nurun.rolodex.views.Header;
	import com.nurun.rolodex.views.Home;
	
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	
	
	
	
	public class Main extends Sprite
	{
		
		// PRIVATE VARS :: DISPLAY OBJECTS
		// =========================================
		private var _header				:Header;
		private var _home				:Home;
		
		// PRIVATE VARS :: MISC
		// =========================================
		
		
		
		
		
		public function Main()
		{
			addEventListener( Event.ADDED_TO_STAGE, onAddedToStage );

		}
		
		
		
		
		private function build():void
		{
			// Attach Header
			_header = new Header();
			addChild( _header );
			
			// Attach home
			_home = new Home();
			_home.y = Header.HEADER_HEIGHT;
			addChild( _home );
			
		}
		
		
		
		// LISTENERS
		// ============================================================================================================
		
		
		
		
		private function onAddedToStage( $e:Event ):void
		{
			removeEventListener( Event.ADDED_TO_STAGE, onAddedToStage );
			addEventListener( Event.REMOVED_FROM_STAGE, onRemoveFromeStage );
			
			build();
		}
		
		private function onRemoveFromeStage( $e:Event ):void
		{
			
			// Remove Listeners
			removeEventListener( Event.REMOVED_FROM_STAGE, onRemoveFromeStage );
			
			// Null all instances
			
			
		}
		
	}
}