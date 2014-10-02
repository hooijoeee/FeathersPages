package  {
	
	import feathers.controls.PanelScreen;
	import feathers.layout.VerticalLayout;
	import feathers.events.FeathersEventType;
	import feathers.controls.ScrollContainer;
	import feathers.controls.ScrollText;
	import feathers.controls.Button;
	import Utils;
	
	import starling.events.Event;
	import starling.display.Quad;
	
	
	public class ScreenA extends PanelScreen
	{
		
		
		public function ScreenA() 
		{
			// constructor code
			trace("An object of ScreenA has been created");
			super();
			
			this.addEventListener(FeathersEventType.INITIALIZE, initializeHandler);
		}

		protected function initializeHandler():void
		{
			trace("ScreenA object initialized");
			
			this.headerProperties.title = "Screen A";
			
			var theLayout:VerticalLayout = new VerticalLayout();
			
			theLayout.gap = 10;
			theLayout.horizontalAlign = VerticalLayout.HORIZONTAL_ALIGN_CENTER;
			theLayout.manageVisibility = true;
			
			this.layout = theLayout;
			
			this.verticalScrollPolicy = ScrollContainer.SCROLL_POLICY_ON;
			this.snapScrollPositionsToPixels = true;
			
			for(var i:int = 0; i < 100; i++)
			{
				var size:Number = (44 + 88 * Math.random())* this.dpiScale;
				var quad:Quad = new Quad(size, size, 0xff8800);
				this.addChild(quad);
			}
			
			var screenBButton:Button;
			screenBButton = new Button();
			screenBButton.label = "Screen B";
			
			this.addChild(screenBButton);
			
			screenBButton.addEventListener(Event.TRIGGERED, handleScreenBButtonClick);
		
			
		}
		
		private function handleScreenBButtonClick(e:Event):void
		{
			this.dispatchEventWith("showScreenB");
		}
	}
	
}
