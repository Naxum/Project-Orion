package com.whitesword.space.planets
{
	import com.whitesword.space.systems.System;
	import com.whitesword.utils.ArrayList;

	public class Star extends Planet
	{
		public static var sunNames:ArrayList = new ArrayList();
		
		{
			sunNames.addAll(
				"Eri","Cas","Sco","Crucis","Cancri","Leonis","Canis Majoris","ri",
				"Cygni","Capricorni","Cephei","Ursae Majoris","Columbae","Gruis",
				"Aquilae","ae","Andromedae","ginis","Sagitti","Aqui","Corvi","Uma",
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
			name = getRandomSunName();
			mass = Math.random() * 4;
			
			gravity = getMass() + Math.random() * 5 - 2.5;
			
			rotationSpeed = 0.005;
			
			atmosphere = new PlanetAtmosphere(this);
			
			return this;
		}
		
		public function loadStar(name:String, mass:Number, gravity:Number, rotationSpeed:Number, temperature:Number, atmosphere:PlanetAtmosphere):Star
		{
			this.name = name;
			this.mass = mass;
			this.gravity = gravity;
			this.rotationSpeed = rotationSpeed;
			this.temperature = temperature;
			this.atmosphere = atmosphere;
			
			return this;
		}
		
		/**
		 * Relative to the sun. (332948.6 more than Earth)
		 */
		public override function getMass():Number
		{
			return mass;
		}
		
		/**
		 * Relative to the sun. (28 more than Earth)
		 */
		public override function getGravity():Number
		{
			return gravity;
		}
		
		public static function getRandomSunName():String
		{
			return sunNames.get(int(Math.random() * sunNames.size()));
		}
	}
}