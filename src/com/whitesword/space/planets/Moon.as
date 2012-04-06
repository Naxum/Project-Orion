package com.whitesword.space.planets
{
	import com.whitesword.space.systems.System;
	import com.whitesword.utils.SpaceUtil;
	
	public class Moon extends Planet
	{
		private var parent:Planet;
		
		public function Moon(planet:Planet)
		{
			super(planet.getSystem());
			this.parent = planet;
		}
		
		public function generateMoon():Moon
		{
			setName(getParent().getName() + " " + SpaceUtil.getNumeralFromNumber(getParent().getChildren().size()));
			setTemperature((Math.random() * 0.5) + (getParent().getTemperature())); 
			setSize(Math.random() / (getParent().getChildren().size()+1));
			setHumidity(Math.random());
				
			return this;
		}
		
		public function getParent():Planet
		{
			return parent;
		}
	}
}