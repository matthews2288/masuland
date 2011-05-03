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
		public function LoadStyleEvent(style:StyleVO, bubbles:Boolean=true, cancelable:Boolean=true)
		{
			super(EVENT_NAME, bubbles, cancelable);
			
			this.style = style;
		}
		
		override public function clone():Event
		{
			return new LoadStyleEvent(style);
		}
	}
}