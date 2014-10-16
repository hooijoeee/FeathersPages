package {
	
	import feathers.controls.PanelScreen;
	import feathers.controls.ScrollContainer;
	import feathers.controls.ScrollText;
	import feathers.layout.VerticalLayout;
	import feathers.events.FeathersEventType;
	import feathers.controls.Button;
	import feathers.controls.Panel;
	import Utils;
	
	import starling.events.Event;
	
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import starling.utils.AssetManager;
	import starling.display.Button;
	
	public class ScreenC extends PanelScreen 
	{

		protected var button:Button;
		private var theAssetManager:AssetManager;
		public function ScreenC() 
		{
			trace("An object of ScreenC has been created");
			super();
			this.addEventListener(FeathersEventType.INITIALIZE, initializeHandler);
		}
		
		private function initializeHandler(e:Event):void{
			theAssetManager = new AssetManager();
			theAssetManager.verbose = true;
			theAssetManager.enqueue(EmbededAssets);
			theAssetManager.loadQueue(handleAssetsLoading);
		}
		
		private function handleAssetsLoading(ratioLoaded:Number):void{
			trace("handleAssetsLoading: " + ratioLoaded);
			if (ratioLoaded == 1)
			{
				startApp()
			}
		}
		
		
		protected function startApp(): void 
		{
			trace("ScreenC object initialized");
			this.removeEventListener(FeathersEventType.INITIALIZE, initializeHandler);
			this.headerProperties.title = "ScreenC";
			var theLayout: VerticalLayout = new VerticalLayout();
			theLayout.gap = 10;
			theLayout.horizontalAlign = VerticalLayout.HORIZONTAL_ALIGN_CENTER;
			this.layout = theLayout;
			this.verticalScrollPolicy = ScrollContainer.SCROLL_POLICY_ON;
			this.snapScrollPositionsToPixels = true
			
			var st1: ScrollText = new ScrollText();
			st1.text = Utils1.LOREM_IPSUM;
			st1.height = 50;
			this.addChild(st1);
			
			/*var st2: ScrollText = new ScrollText();
			st2.text = Utils.LOREM_IPSUM;
			st2.height = 100;
			this.addChild(st2);*/
			

			
			var screenDButton: Button;
			screenDButton = new Button();
			screenDButton.label = "Screen D";
			this.addChild(screenDButton);
			screenDButton.addEventListener(Event.TRIGGERED, handleScreenDButtonClick);
			
			this.button = new Button();
			this.button.label = "Fus Roh Dah";
			
			this.button.addEventListener(Event.TRIGGERED, button_triggeredHandler);
			
			this.addChild(this.button);
			
			this.button.validate();
			
			this.button.x = (this.stage.stageWidth - this.button.width) / 2;
			this.button.y = (this.stage.stageHeight - this.button.height) / 2;
		}
		
		private function button_triggeredHandler(e:Event):void
		{
			trace("Button clicked");
			theAssetManager.playSound("FusRohDah");
		}
		protected function handleScreenDButtonClick(e: Event): void {
			this.dispatchEventWith("showScreenD");
		}
  }
}