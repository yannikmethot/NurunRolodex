package com.nurun.rolodex.views
{
	import com.nurun.rolodex.ui.catalogue.Catalogue;
	
	import flash.events.Event;

	public class Home extends AView
	{
		
		
		// PRIVATE VARS :: DISPLAY OBJECTS
		// ===========================================
		private var _catalogue				:Catalogue;
		
		
		public function Home()
		{
			addEventListener( Event.ADDED_TO_STAGE, onAddedToStage );
			
		}
		
		
		
		// PRIVATE FUNCTION
		// ============================================================================================================
		
		
		private function build():void
		{
			// Attach Catalogue
			_catalogue = new Catalogue();
			addChild( _catalogue );
		}
		
		
		// LISTENERS
		// ============================================================================================================
		
		override protected function onAddedToStage( $e:Event ):void
		{
			super.onAddedToStage( $e );
			
			removeEventListener( Event.ADDED_TO_STAGE, onAddedToStage );
			addEventListener( Event.REMOVED_FROM_STAGE, onRemoveFromeStage );
			
			build();
		}
		
		override protected function onRemoveFromeStage( $e:Event ):void
		{
			
			super.onRemoveFromeStage( $e );
			
			// Remove Listeners
			removeEventListener( Event.REMOVED_FROM_STAGE, onRemoveFromeStage );
			
			// Null all instances
			
			
		}
	}
}