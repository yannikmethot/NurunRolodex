package com.nurun.rolodex.utils
{
	import flash.text.Font;

	public class StylesManager extends Object
	{
		
		// PUBLIC STATIC CONSTANTS :: FONTS
		// ==================================================================================================
		public static const ANTENNA_BLACK			:String = Font(new AntennaCondBlack()).fontName;
		public static const ANTENNA_BOLD			:String = Font(new AntennaCondBold()).fontName;
		public static const ANTENNA_REGULAR			:String = Font(new AntennaCondReg()).fontName;
		public static const ANTENNA_LIGHT			:String = Font(new AntennaCondLight()).fontName;
		
		// PUBLIC STATIC CONSTANTS :: COLORS
		// ==================================================================================================
		public static const PRIMARY_COLOR			:uint = 0x222222;
		public static const ACCENT_COLOR			:uint = 0xe5432c;
		
		// PUBLIC STATIC CONSTANTS :: OTHER STYLES
		// ==================================================================================================
		
		
		
		public function StylesManager(){}
	}
}