package com.masuland.loginexample.cairngorm221.vo
{
	[Bindable]
	/**
	 * 
	 * @author Sebastian.Mohr (masuland@gmail.com)
	 */
	public class LayoutVO
	{
		public var name:String;
		public var width:Number;
		public var heigth:Number;
		
		public function LayoutVO() {}

		public function toString() : String
		{
			return name;
		}
	}
}