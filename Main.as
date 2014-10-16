package {
	
	import starling.display.Sprite;
	import starling.events.Event;
	
	import feathers.controls.Drawers;
	//import feathers.themes.AeonDesktopTheme;
	import feathers.themes.MetalWorksMobileTheme;
	//import feathers.themes.MinimalMobileTheme;
	import feathers.controls.Button;
	import feathers.controls.Screen;
	import feathers.controls.ScreenNavigator;
	import feathers.controls.ScreenNavigatorItem;
	import feathers.controls.Panel;
	//import feathers.controls.ImageLoader;
	//import feathers.controls.TabBar;
	import feathers.controls.ScrollContainer;
	import feathers.events.FeathersEventType;
	
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import starling.utils.AssetManager;
	
	public class Main extends ScreenNavigator {
		
		public function Main() {
			this.addEventListener(FeathersEventType.INITIALIZE, initializeHandler);
		}
		protected function initializeHandler(e: Event): void {
			this.removeEventListener(FeathersEventType.INITIALIZE, initializeHandler);
			//new AeonDesktopTheme();
			new MetalWorksMobileTheme();
			//new MinimalMobileTheme();
			
			
			var screenA: ScreenA = new ScreenA();
			var screenNavItem1: ScreenNavigatorItem = new ScreenNavigatorItem(screenA, {
				"showScreenB": "screenB"
			});
			this.addScreen("screenA", screenNavItem1);
			
			
			var screenB: ScreenB = new ScreenB();
			var screenNavItem2: ScreenNavigatorItem = new ScreenNavigatorItem(screenB, {
				"showScreenC": "screenC"
			});
			this.addScreen("screenB", screenNavItem2);
			
			var screenC: ScreenC = new ScreenC();
			var screenNavItem3: ScreenNavigatorItem = new ScreenNavigatorItem(screenC, {
				"showScreenD": "screenD"
			});
			this.addScreen("screenC", screenNavItem3);
			
			
			var screenD: ScreenD = new ScreenD();
			var screenNavItem4: ScreenNavigatorItem = new ScreenNavigatorItem(screenD, {
				"showScreenE": "screenE"
			});
			this.addScreen("screenD", screenNavItem4);
			
			var screenE: ScreenE = new ScreenE();
			var screenNavItem5: ScreenNavigatorItem = new ScreenNavigatorItem(screenE, {
				"showScreenA": "screenA"
			});
			this.addScreen("screenE", screenNavItem5);
			
			this.showScreen("screenA");
		}
	}
}