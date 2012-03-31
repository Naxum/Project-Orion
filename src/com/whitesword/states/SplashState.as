package com.whitesword.states
{
	import flash.display.Bitmap;
	import flash.filesystem.File;

	public class SplashState extends State
	{
		[Embed(source="res/splash.png")]
		private var SplashImage:Class;
		private var splashImage:Bitmap = new SplashImage() as Bitmap;
		
		private var tick:int = 0;
		private var tickCount:int = 20; //60 = one second
		
		private var saveFile:File;
		private var destination:State;
		
		public override function enter():void
		{
			this.tick = 0;
			
			if(saveFile.exists)
			{
				destination = States.MENU;
			}
			else
			{
				destination = States.SAVE_DESTINATION;
			}
		}
		
		public override function init():void
		{
			addChild(splashImage);
			
			saveFile = File.applicationStorageDirectory.resolvePath("prefs.xml");
		}
		
		public override function update():void
		{
			tick++;
			
			if(tick >= tickCount)
			{
				getGame().enterState(destination);
			}
		}
	}
}