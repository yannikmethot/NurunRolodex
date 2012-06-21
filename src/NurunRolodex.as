package
{
	import com.nurun.rolodex.Main;
	
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	
	[SWF(width="640", height="960", frameRate="60", backgroundColor="#000000")]
	public class NurunRolodex extends Sprite
	{
		
		// PRIVATE VARS :: DISPLAY OBJECTS
		// ==========================================
		private var _app				:Main;
		
		public function NurunRolodex()
		{
			super();
			
			// support autoOrients
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			// Attach Main App
			_app = new Main();
			addChild( _app );
			
		}
	}
}