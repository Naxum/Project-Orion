package com.whitesword.space.planets
{
	import com.whitesword.space.systems.System;
	import com.whitesword.utils.ArrayList;
	import com.whitesword.utils.SpaceUtil;

	public class Terrestrial extends Planet
	{
		public function Terrestrial(system:System)
		{
			super(system);
		}
		
		public function generateTerrestrial():Terrestrial
		{
			//TODO: Distance from sun
			var sun:Star = getSystem().getMainStar();
			var moonRandom:int = int(Math.random() * 10);
			var moonCount:int = moonRandom == 0 ? 2 : moonRandom < 5 ? 1 : 0;
			
			setName(sun.getName() + " " + SpaceUtil.getLetterFromNumber(getSystem().getPlanets().size()));
			
			setSize(Math.random());
			
			setTemperature((Math.random() * 0.5) + (sun.getTemperature() / (getSystem().getPlanets().size()+1))); 
			setHumidity(Math.random());
			
			for(var i:int = 0; i < moonCount; i++)
			{
				addChild(new Moon(this).generateMoon());
			}
			
			return this;
		}
	}
}