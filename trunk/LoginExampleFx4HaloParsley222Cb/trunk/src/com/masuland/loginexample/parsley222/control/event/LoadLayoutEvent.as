package com.masuland.loginexample.parsley222.control.event
{	
	import com.masuland.loginexample.parsley222.vo.LayoutVO;
	
	import flash.events.Event;
	import flash.utils.getQualifiedClassName;

	/**  */
	public class LoadLayoutEvent extends Event
	{	
		/**  */
		public static const EVENT_NAME:String = 'LoadLayoutEvent.EVENT_NAME';
		
		public var layout:LayoutVO;
		
		/**  */
		public function LoadLayoutEvent(layout:LayoutVO, bubbles:Boolean=true, cancelable:Boolean=true)
		{
			super(EVENT_NAME, bubbles, cancelable);
			
			this.layout = layout;
		}
	}
}