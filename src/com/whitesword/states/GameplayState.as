package com.whitesword.states
{
	import com.whitesword.space.galaxy.Galaxy;
	import com.whitesword.space.planets.Planet;
	import com.whitesword.space.planets.Terrestrial;
	import com.whitesword.space.systems.System;
	import com.whitesword.space.universe.Universe;
	import com.whitesword.utils.Text;
	
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;
	import flash.geom.Rectangle;
	import flash.text.TextFormatAlign;

	public class GameplayState extends State
	{
		private var universe:Universe;
		private var system:System;
		private var dragging:Boolean;
		private var galaxy:Sprite;
		
		public override function init():void
		{
			var universeName:String = getGame().getCurrentUniverseName();
			var universeSave:File = getGame().getCurrentUniverseSaveFile();
			
			//if(!getGame().getCurrentUniverseSaveFile().exists)
			//{
				var universe:Universe = new Universe(this, universeSave, universeName);
				this.universe = universe;
			//}
			
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
			var i:int = 0;
			
			var sprite:Sprite = new Sprite();
			
			for each(var system:System in (getUniverse().getGalaxies().get(0) as Galaxy).getSystems())
			{
				var yStart:Number = 5 + ((i) * 120);
				var xStart:Number = 50;
				
				var star:Shape = new Shape();
				star.graphics.beginFill(system.getMainStar().getColor());
				star.graphics.drawCircle(0, 0, system.getMainStar().getSize() * 80);
				star.graphics.endFill();
				
				sprite.addChild(star);
				
				star.y = yStart
				star.x = xStart + (star.width*0.5);
				
				var sunName:String = system.getMainStar().getName();
				var name:Text = new Text(system.getMainStar().getName(), 30, TextFormatAlign.CENTER);
				name.x = xStart;
				name.y = star.y - 50;
				
				sprite.addChild(name);
				
				
				xStart += (star.width) + 10;
				
				for each(var planet:Planet in system.getPlanets())
				{
					var shape:Shape = new Shape();
					shape.graphics.beginFill(planet is Terrestrial ? 0x744809 : 0x520974);
					shape.graphics.drawCircle(0, 0, planet.getSize() * (planet is Terrestrial ? 30 : 50));
					shape.graphics.endFill();
					
					shape.x = xStart + (shape.width * 0.5);
					shape.y = yStart;
					
					sprite.addChild(shape);
					
					var pName:Text = new Text(planet.getName().replace(sunName, ""), 30, TextFormatAlign.CENTER);
					
					pName.x = shape.x;
					pName.y = shape.y - 50;
					
					sprite.addChild(pName);
					
					xStart += (shape.width) + 10;
				}
				
				i++;
			}
			
			addChild(sprite);
			
			galaxy = sprite;
			
			this.addEventListener(MouseEvent.MOUSE_DOWN, allowDrag);
			this.addEventListener(MouseEvent.MOUSE_UP, stopDragEvent);
			this.addEventListener(MouseEvent.MOUSE_OUT, stopDragEvent);
		}
		
		public function allowDrag(event:MouseEvent):void
		{
			galaxy.startDrag();
		}
		
		public function stopDragEvent(event:MouseEvent):void
		{
			galaxy.stopDrag();
		}
		
		public function getUniverse():Universe
		{
			return this.universe;
		}
	}
}