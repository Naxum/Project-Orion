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
		
		public function generateGasGiant():void
		{
			var sun:Star = getSystem().getMainStar();
			
			name = sun.getName() + " " + SpaceUtil.getLetterFromNumber(getSystem().getPlanets().size());
			
			mass = Math.random() * 400 + 150;
			
			gravity = Math.random() * 1.8 + 0.2;
			
			rotationSpeed = mass + (Math.random() * 2 - 1);
			
			atmosphere = new PlanetAtmosphere(this);
		}
		
		public function loadGasGiant(name:String, mass:Number, gravity:Number, rotationSpeed:Number, atmosphere:PlanetAtmosphere, children:ArrayList):void
		{
			this.name = name;
			this.mass = mass;
			this.gravity = gravity;
			this.rotationSpeed = rotationSpeed;
			this.atmosphere = atmosphere;
			this.children = children;
		}
	}
}