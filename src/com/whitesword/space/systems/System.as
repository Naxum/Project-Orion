package com.whitesword.space.systems
{
	import avmplus.getQualifiedClassName;
	
	import com.whitesword.space.galaxy.Galaxy;
	import com.whitesword.space.planets.GasGiant;
	import com.whitesword.space.planets.Moon;
	import com.whitesword.space.planets.Planet;
	import com.whitesword.space.planets.Star;
	import com.whitesword.space.planets.Terrestrial;
	import com.whitesword.utils.ArrayList;
	import com.whitesword.utils.SpaceUtil;

	public class System
	{
		private var name:String;
		private var galaxy:Galaxy;
		private var stars:ArrayList = new ArrayList();
		private var planets:ArrayList = new ArrayList();
		private var asteroidBelts:ArrayList = new ArrayList(); //asteroid belts
		
		public function System(galaxy:Galaxy)
		{
			this.galaxy = galaxy;
		}
		
		public function generateSystem():System
		{
			stars.add(new Star(this).generateStar());
			
			if(Math.floor(Math.random() * 20) == 0)
			{
				//TODO: binary star
				trace("Would've been a binary star!");
			}
			
			for(var i:int = 0; i < Math.random() * 8; i++)
			{
				var planet:Planet;
				
				if(Math.random() < 0.5)
				{
					planet = new GasGiant(this).generateGasGiant();
				}
				else
				{
					planet = new Terrestrial(this).generateTerrestrial();
				}
				
				planets.add(planet);
			}
			
			return this;
		}
		
		public function loadSystem(name:String, stars:ArrayList, planets:ArrayList):System
		{
			this.name = name;
			this.stars = stars;
			this.planets = planets;
			
			return this;
		}
		
		public function getGalaxy():Galaxy
		{
			return galaxy;
		}
		
		public function getGasGiants():ArrayList
		{
			var list:ArrayList = new ArrayList();
			
			for each(var planet:Planet in planets)
			{
				if(planet is GasGiant)
				{
					list.add(planet);
				}
			}
			
			return list;
		}
		
		public function getTerrestrials():ArrayList
		{
			var list:ArrayList = new ArrayList();
			
			for each(var planet:Planet in planets)
			{
				if(planet is Terrestrial)
				{
					list.add(planet);
				}
			}
			
			return list;
		}
		
		public function getMainStar():Star
		{
			return stars.get(0);
		}
		
		public function getStars():ArrayList
		{
			return stars;
		}
		
		public function getPlanets():ArrayList
		{
			return planets;
		}
		
		/*
		public static function createSolSystem(galaxy:Galaxy):System
		{
			var sol:System = new System(galaxy);
			var stars:ArrayList = new ArrayList();
			var planets:ArrayList = new ArrayList();
			
			var sun:Star = new Star(sol).loadStar("Sun", 1, 1, 4.342, 101, new PlanetAtmosphere(sun));
			stars.add(sun);
			
			var mercury:Terrestrial = new Terrestrial(sol).loadTerrestrial("Mercury", 0.055, 0.378, 0.006, new PlanetAtmosphere(mercury), new ArrayList()); //orbit: 1.59
			var venus:Terrestrial = new Terrestrial(sol).loadTerrestrial("Venus", 0.815, 0.91, 0.004, new PlanetAtmosphere(venus), new ArrayList()); //orbit: 1.18
			
			var earth:Terrestrial = new Terrestrial(sol)
			//earth.loadTerrestrial("Earth", 1, 1, 1, new PlanetAtmosphere(earth), new ArrayList(moon));
			
			//sol.loadSystem("Sol", stars, planets);
				
			return sol;
		}
		*/
		
		public function getSaveData():XML
		{
			var xml:XML = new XML("<system />");
			var starsXml:XML = new XML("<stars />");
			var planetsXml:XML = new XML("<planets />");
			
			for each(var star:Star in stars)
			{
				starsXml.appendChild(star.getSaveData());
			}
			
			for each(var planet:Planet in planets)
			{
				planetsXml.appendChild(planet.getSaveData());
			}
			
			xml.appendChild(starsXml);
			xml.appendChild(planetsXml);
			
			return xml;
		}
	}
}