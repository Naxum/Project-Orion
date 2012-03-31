package com.whitesword.states
{
	import com.whitesword.space.universe.Universe;
	
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;

	public class GameplayState extends State
	{
		private var universe:Universe;
		
		public override function init():void
		{
			var universeName:String = getGame().getCurrentUniverseName();
			var universeSave:File = getGame().getCurrentUniverseSaveFile();
			
			if(!getGame().getCurrentUniverseSaveFile().exists)
			{
				var universe:Universe = new Universe(this, universeSave, universeName);
				this.universe = universe;
			}
			
			/*
			var reader:FileStream = new FileStream();
			reader.open(universeSave, FileMode.READ);
			var xml:XML = XML(reader.readUTF());
			reader.close();
			
			if(xml.version != Universe.getVersion())
			{
				//TODO: Update
			}
			
			//TODO: Load universe, galaxies, etc.
			*/
		}
		
		public function getUniverse():Universe
		{
			return this.universe;
		}
	}
}