package com.whitesword.space.planets
{
	import com.whitesword.space.systems.System;
	import com.whitesword.utils.SpaceUtil;
	
	public class Moon extends Satellite
	{
		public function Moon(planet:Planet)
		{
			super(planet.getSystem());
			
			name = planet.getName() + " " + SpaceUtil.getNumeralFromNumber(planet.getChildren().size());
			
			mass = Math.random() * (planet.getMass() * 0.05) + 0.1;
			
			gravity = Math.random() * 1.5 + 0.2;
			
			rotationSpeed = mass + (Math.random() * 2 - 1);
			
			atmosphere = new PlanetAtmosphere(this);
		}
	}
}