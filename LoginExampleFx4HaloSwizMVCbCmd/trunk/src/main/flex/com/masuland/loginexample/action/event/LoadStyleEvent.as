package com.masuland.loginexample.action.event
{	
	import com.masuland.loginexample.data.vo.StyleVO;
	
	import flash.events.Event;
	import flash.utils.getQualifiedClassName;

	/**  */
	public class LoadStyleEvent extends Event
	{	
		/**  */
		public static const EVENT_NAME:String = 'LoadStyleEvent.EVENT_NAME';
		
		public var style:StyleVO;
		
		/**  */
		public function LoadStyleEvent(style:StyleVO, cancelable:Boolean=false)
		{
			super(EVENT_NAME, true, cancelable);
			
			this.style = style;
		}
	}
}