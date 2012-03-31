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
			var sun:Star = getSystem().getMainStar();
			
			name = sun.getName() + " " + SpaceUtil.getLetterFromNumber(getSystem().getPlanets().size());
			
			mass = Math.random() * 3 + 1;
			
			gravity = Math.random() * 1.5 + 0.5;
			
			rotationSpeed = mass + (Math.random() * 2 - 1);
			
			atmosphere = new PlanetAtmosphere(this);
			
			for(var i:int = 0; i < Math.floor(Math.random() * 4); i++)
			{
				addChild(new Moon(this));
			}
			
			return this;
		}
		
		public function loadTerrestrial(name:String, mass:Number, gravity:Number, rotationSpeed:Number, atmosphere:PlanetAtmosphere, children:ArrayList):Terrestrial
		{
			this.name = name;
			this.mass = mass;
			this.gravity = gravity;
			this.rotationSpeed = rotationSpeed;
			//this.temperature = temperature;
			this.atmosphere = atmosphere;
			this.children = children;
			
			return this;
		}
	}
}