package  {
	
	import flash.display.Sprite;
	import starling.core.Starling;
	import flash.events.Event;
	import flash.geom.Rectangle;
	
	
	//[SWF(width="320", height="480", frameRate="60", backgroundColor="#ffffff")]
	public class FeatherPages extends Sprite 
	{
		private var _starling:Starling;
		
		public function FeatherPages() 
		{
			// constructor code
			_starling = new Starling(Main, this.stage);
			
			this._starling.enableErrorChecking = true;
			
			_starling.start();
		}
	}
	
}
