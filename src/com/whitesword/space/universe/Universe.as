package com.whitesword.space.universe
{
	import com.whitesword.space.galaxy.Galaxy;
	import com.whitesword.states.State;
	import com.whitesword.utils.ArrayList;
	import com.whitesword.utils.SpaceUtil;
	
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;
	import flash.net.FileReference;
	import flash.utils.ByteArray;

	public class Universe
	{
		private var gameState:State;
		
		private var name:String;
		private var saveFile:File;
		private var galaxies:ArrayList = new ArrayList();
		
		public function Universe(gameState:State, universeSave:File, universeName:String):void
		{
			this.gameState = gameState;
			this.name = universeName;
			this.saveFile = universeSave;
			
			var xml:XML = new XML("<xml><version>" + getVersion() + "</version><universe /></xml>");
			
			for(var i:int = 0; i < 1; i++)
			{
				var galaxy:Galaxy = new Galaxy(this).generateGalaxy();
				galaxies.add(galaxy);
				xml.universe.appendChild(galaxy.getSaveData());
			}
			
			/*
			var writer:FileStream = new FileStream();
			writer.open(universeSave, FileMode.WRITE);
			
			writer.writeUTFBytes("<xml>"+xml.*+"</xml>");
			
			writer.close();
			*/
		}
		
		public function getName():String
		{
			return name;
		}
		
		public function setName(s:String):void
		{
			this.name = s;
		}
		
		public function getGalaxies():ArrayList
		{
			return galaxies;
		}
		
		public function addGalaxy(g:Galaxy):void
		{
			this.galaxies.add(g);
		}
		
		public static function getVersion():String
		{
			return "1";
		}
	}
}