package com.whitesword.space.planets
{
	import com.whitesword.space.systems.System;
	import com.whitesword.utils.ArrayList;
	import com.whitesword.utils.SpaceUtil;

	public class GasGiant extends Planet
	{
		public function GasGiant (system:System)
		{
			super(system);
		}
		
		public function generateGasGiant():GasGiant
		{
			var sun:Star = getSystem().getMainStar();
			
			var moonRandom:int = int(Math.random() * 3);
			var moonCount:int = moonRandom == 0 ? int(Math.random() * 7) : moonRandom == 1 ? int(Math.random() * 4) : int(Math.random() * 2);
			
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