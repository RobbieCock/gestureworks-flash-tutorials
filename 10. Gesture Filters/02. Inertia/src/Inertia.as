package 
{
	import com.gestureworks.core.GestureWorks;
	import com.gestureworks.core.TouchSprite;
	import com.gestureworks.events.GWGestureEvent;
	import com.gestureworks.utils.ExampleTemplate;
	import flash.display.Loader;
	import flash.net.URLRequest;
	
	[SWF(width="1280",height="720",backgroundColor="0x000000",frameRate="60")]
	
	public class Inertia extends GestureWorks
	{
		public function Inertia():void
		{
			gml = "inertia-filter.gml";
		}
		
		override protected function gestureworksInit():void
		{
			trace("gestureWorksInit()");

			// create a touchable sprite 
			var touchSprite:TouchSprite = new TouchSprite();
			
			// add a bitmap image to the touch sprite
			var loader:Loader = new Loader();
			loader.load(new URLRequest("../../../assets/gwLogo.png"));
			touchSprite.addChild(loader);
			
			// center graphic in the middle of the stage
			touchSprite.x = stage.stageWidth / 2 - 200;
			touchSprite.y = stage.stageHeight / 2 - 200;
			
			// add touch sprite to display list 
			addChild(touchSprite);
			
			//enable release inertia
			touchSprite.releaseInertia = true;
			
			// add events 
			touchSprite.nativeTransform = true;
			touchSprite.gestureList = {"drag-inertia": true};
		}
	
	}

}