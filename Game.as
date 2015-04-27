package{
	import flash.ui.Keyboard;
	import flash.display.Sprite;   
	import flash.display.Loader;   
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.display.Bitmap;
	import flash.display.MovieClip;
	import flash.events.KeyboardEvent; 
	import flash.events.Event;
	import flash.display.Stage;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.MouseEvent;
	import flash.geom.Matrix;
	import flash.geom.Rectangle;

		public class GameCharacter extends Sprite{
			
			public var char:Loader = new Loader();
 			public  var charHolder:MovieClip=new MovieClip();
//			private var forward:Boolean=false;
//			private var up:Boolean=false;
//			private var back:Boolean=false;
//			private var down:Boolean=false;
			function GameCharacter(filename:String){
				this.charInitialize(filename);
			}
			
			public function charInitialize(filename:String):void
			{	
			char.load(new URLRequest(filename));
			char.contentLoaderInfo.addEventListener(Event.COMPLETE, function(){
    		//char.content.width = 150;
			//char.content.height = 100;
			});
			charHolder.addChild(char);
			char.alpha=1;
			this.graphics.beginFill(0xffffff,1);
			this.graphics.drawRect(0,0,5,5);
			this.addChild(charHolder);
			
			this.addEventListener(MouseEvent.MOUSE_DOWN, handledrag);
			this.addEventListener(MouseEvent.MOUSE_UP, handledrop);
			}
			private function handledrag(e:MouseEvent){//optional drag method of a sprite
				this.startDrag();
			}
			private function handledrop(e:MouseEvent){//optional drop method of a sprite
				this.stopDrag();
			}
}
}
