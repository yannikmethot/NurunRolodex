package com.nurun.rolodex.ui.catalogue
{
	
	import com.nurun.rolodex.utils.Environment;
	
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	
	public class Catalogue extends Sprite
	{
		
		// PUBLIC STATIC CONSTANTS
		// ===============================================
		public static const ITEM_SPACING	:int = 2;
		public static const COLUMNS			:int = 3;
		
		// PRIVATE VARS :: DISPLAY OBJECTS
		// ===============================================
		private var _items					:Sprite;
		
		// PRIVATE VARS :: MISC
		// ===============================================
		private var _users					:Array;
		
		
		public function Catalogue()
		{
			addEventListener( Event.ADDED_TO_STAGE, onAddedToStage );
		}
		
		
		// PRIVATE FUNCTIONS
		// ======================================================================================================
		
		private function getUsers():void
		{
			var req:URLRequest = new URLRequest( Environment.USERS_DATA_SOURCE );
			var dataLoader:URLLoader = new URLLoader();
			dataLoader.addEventListener( Event.COMPLETE, onDataReceived );
			dataLoader.addEventListener( IOErrorEvent.IO_ERROR, onDataError );
			dataLoader.load( req );
		}
		
		private function build():void
		{
			
			// Create items container
			_items = new Sprite();
			addChild( _items );
			
			// Attach Items
			attachItems();
			
		}
		
		private function attachItems():void
		{
			
			var cntX:int = 0;
			var cntY:int = 0;
			
			for(var i:int; i<_users.length; i++)
			{
				var item:CatalogueItem = new CatalogueItem();
				item.x = cntX;
				item.y = cntY;
				_items.addChild( item );
				
				cntX += CatalogueItem.ITEM_WIDTH + ITEM_SPACING;
				
				if( cntX > ( COLUMNS * CatalogueItem.ITEM_WIDTH ) ){
					cntX = 0;
					cntY += CatalogueItem.ITEM_HEIGHT + ITEM_SPACING;
				}
					
			}
			
		}
		
		
		
		// LISTENERS
		// ======================================================================================================
		
		private function onDataReceived( $e:Event ):void
		{
			var data:Object = JSON.parse( $e.target.data );
			_users = data.results;
			
			// Build
			build();
		}
		
		private function onDataError( $e:IOErrorEvent ):void
		{
			trace( 'Error loading users' );
		}
		
		private function onAddedToStage( $e:Event ):void
		{
			removeEventListener( Event.ADDED_TO_STAGE, onAddedToStage );
			addEventListener( Event.REMOVED_FROM_STAGE, onRemovedFromStage );
			
			getUsers();
		}
		
		private function onRemovedFromStage( $e:Event ):void
		{
			removeEventListener( Event.REMOVED_FROM_STAGE, onRemovedFromStage );
		}
		
		
	}
}