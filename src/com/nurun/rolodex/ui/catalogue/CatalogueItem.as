package com.nurun.rolodex.ui.catalogue
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	
	public class CatalogueItem extends Sprite
	{
		
		// PUBLIC STATIC CONSTANTS
		// =============================================
		public static const	ITEM_WIDTH			:int = 212;
		public static const ITEM_HEIGHT			:int = 212;
		
		// PRIVATE VARS :: DISPLAY OBJECTS
		// =============================================
		private var _back						:Sprite;
		private var _firstname					:TextField;
		
		
		
		
		// CONSTRUCTOR
		// ============================================================================================================
		public function CatalogueItem()
		{
			addEventListener( Event.ADDED_TO_STAGE, onAddedToStage );
		}
		
		// PRIVATE FUNCTIONS
		// ============================================================================================================
		
		private function build():void
		{
			
			// Create items container
			_back = new Sprite();
			_back.graphics.beginFill( Math.random() * 0xFFFFFF );
			_back.graphics.drawRect( 0, 0, ITEM_WIDTH, ITEM_HEIGHT );
			_back.graphics.endFill();
			addChild( _back );
			
			// Attach Items
			attachItems();
			
		}
		
		
		private function attachItems():void
		{
			
			
			
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