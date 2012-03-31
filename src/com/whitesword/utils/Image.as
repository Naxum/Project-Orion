package com.whitesword.utils
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.net.URLRequest;
	
	public class Image extends Sprite
	{
		protected var loader:Loader;
		
		public function Image(res:String)
		{
			
			res = "/res/" + res;
			
			try
			{
				loader = new Loader();
				loader.addEventListener(IOErrorEvent.IO_ERROR, error)
				loader.load(new URLRequest(res));
				loader.contentLoaderInfo.addEventListener(Event.COMPLETE, loaded);	
			}
			catch (e:Error)
			{
				trace("Can't load image, error: " + e.message);
			}
			
		}
		
		protected function loaded(event:Event):void
		{
			this.addChild(loader);
		}
		
		protected function error(event:IOErrorEvent):void
		{
			trace("Can't load image, error: " + event.text);
		}
	}
}