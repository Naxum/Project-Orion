package com.whitesword.utils
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Loader;
	import flash.display.LoaderInfo;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.net.URLRequest;

	public class SpriteSheet
	{
		protected var path:String;
		protected var cellWidth:int, cellHeight:int;
		protected var sheet:BitmapData;
		
		public function SpriteSheet(sheet:Bitmap, cellWidth:int, cellHeight:int)
		{
			this.path = path;
			this.cellWidth = cellWidth;
			this.cellHeight = cellHeight;
			this.sheet = (sheet as Bitmap).bitmapData;
		}
		
		public function getSprite(x:int, y:int):Bitmap
		{
			var canvas:BitmapData = new BitmapData(cellWidth, cellHeight, true);
			
			canvas.copyPixels(sheet, new Rectangle(x * cellWidth, y * cellWidth, cellWidth, cellHeight), new Point(0,0));
			
			return new Bitmap(canvas);
		}
	}
}