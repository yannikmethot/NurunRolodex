package com.nurun.rolodex.views
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	public class AView extends Sprite
	{
		
		
		
		public function AView()
		{
			addEventListener( Event.ADDED_TO_STAGE, onAddedToStage );
		}
		
		
		
		
		
		
		// LISTENERS
		// ============================================================================================================
		
		protected function onAddedToStage( $e:Event ):void
		{
			
		}
		
		protected function onRemoveFromeStage( $e:Event ):void
		{
			
			
			// Remove all children
			while( numChildren > 0 )
			{
				removeChildAt( 0 );
			}
		}
	}
}