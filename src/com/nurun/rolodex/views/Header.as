package com.nurun.rolodex.views
{
	import com.nurun.rolodex.ui.RolodexButton;
	import com.nurun.rolodex.utils.StylesManager;
	
	import flash.display.Sprite;
	import flash.events.Event;

	public class Header extends AView
	{
		
		// PUBLIC STATIC CONSTANTS
		// ==========================================
		public static const HEADER_HEIGHT		:int = 88;
		
		// PRIVATE VARS :: DISPLAY OBJECTS
		// ==========================================
//		private var _addButton					:HeaderButton;
//		private var _logo						:AssetsLogo;
//		private var _search						:TextInput;
		private var _back						:Sprite;
		
		
		// CONSTRUCTOR
		// ============================================================================================================
		
		public function Header()
		{
			addEventListener( Event.ADDED_TO_STAGE, onAddedToStage );
		}
		
		
		
		// PRIVATE FUNCTIONS
		// ============================================================================================================
		
		private function build():void
		{
			// CREATE BACK
			_back = new Sprite();
			_back.graphics.beginFill( StylesManager.PRIMARY_COLOR );
			_back.graphics.drawRect( 0, 0, stage.stageWidth, HEADER_HEIGHT );
			_back.graphics.endFill();
			_back.graphics.beginFill( 0xFFFFFF, 0.1 );
			_back.graphics.drawRect( 0, 0, stage.stageWidth, HEADER_HEIGHT * 0.5 );
			_back.graphics.endFill();
			addChild( _back );
			
		}
		
		
			
		// PUBLIC FUNCTIONS
		// ============================================================================================================
		
		
		
		// LISTENERS
		// ============================================================================================================
		
		private function onStageResized( $e:Event ):void
		{
			// Resize Back
			_back.width = stage.stageWidth;
		}
			
			
		override protected function onAddedToStage( $e:Event ):void
		{
			removeEventListener( Event.ADDED_TO_STAGE, onAddedToStage );
			addEventListener( Event.REMOVED_FROM_STAGE, onRemoveFromeStage );
			
			stage.addEventListener( Event.RESIZE, onStageResized );
			
			build();
		}
		
		override protected function onRemoveFromeStage( $e:Event ):void
		{
			// Remove Listeners
			stage.removeEventListener( Event.RESIZE, onStageResized );
			removeEventListener( Event.REMOVED_FROM_STAGE, onRemoveFromeStage );
			
			// Remove children
			
			// Null all instances
			
			
		}
	}
}