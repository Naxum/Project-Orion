package com.whitesword.space.planets
{
	import com.whitesword.space.systems.System;
	import com.whitesword.utils.ArrayList;
	
	import flash.display.Bitmap;

	public class Star extends Planet
	{
		public static var sunNames:ArrayList = new ArrayList();
		
		[Embed(source="res/star_color.png")]
		public static var StarColorImage:Class;
		public static var starColor:Bitmap = new StarColorImage();
		
		//static
		{
			sunNames.addAll(
				"Eri","Cas","Sco","Crucis","Cancri","Leonis","Canis Majoris","Ri",
				"Cygni","Capricorni","Cephei","Ursae Majoris","Columbae","Gruis",
				"Aquilae","Ae","Andromedae","Ginis","Sagitti","Aqui","Corvi","Uma",
				"Draconis","Coronae Australis","Persei","Pegasi","Aurigae","Geminorum",
				"Bootis","Crats","Orionis","Hydrae","","Piscium","Lyncis","Serpentis",
				"Phoenicis","Leporis","Cnae","Canum Venaticorum","Trianguli Australis",
				"Puppis","Ceti","etis","Librae","Ophiuchi","Delphini","Comae Berenices",
				"Piscis Austrinus","Coronae Borealis","Canis Minoris","Cen","Ari","Hydri",
				"Herculis","Equulei","Ursae Minoris","Vulpeculae","Pavonis","Octantis",
				"Minoris","Velorum","Sagittae","Tau","Lyr","Vir"
			);
		}
		
		public function Star(system:System)
		{			
			super(system);
		}
		
		public function generateStar():Star
		{
			var name:String = getRandomSunName();
			var starRandom:int = int(Math.floor(Math.random() * 100));
			
			//TODO: Generate binary, trinary stars
			if(starRandom <= 20 && starRandom > 5)
			{
				trace("Binary Star System!");
			}
			else if(starRandom <= 5)
			{
				trace("Trinary Star System!");	
			}
			
			for(var i:int = 0; i < 10; i++)
			{
				if(getSystem().getGalaxy().hasStarName(name))
				{
					name = getRandomSunName();
				}
				else
				{
					break;
				}
			}
			
			setName(name);
			
			setTemperature(Math.random()); // 0 - 1, sets color as well
			setHumidity(0);
			setSize(getTemperature());
			
			return this;
		}
		
		public function getColor():uint
		{
			return starColor.bitmapData.getPixel(getTemperature() * 50, 0);
		}
		
		public static function getRandomSunName():String
		{
			return sunNames.get(int(Math.random() * sunNames.size()));
		}
	}
}