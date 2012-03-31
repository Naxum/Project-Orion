package com.whitesword.space.races
{
	import com.whitesword.utils.ArrayList;

	public class AlienRaceTraits
	{
		public static var list:ArrayList = new ArrayList();
		
		public static var MILITARISTIC:AlienRaceTrait = new AlienRaceTrait(list, "Militaristic", 0.4);
		public static var DIPLOMATIC:AlienRaceTrait = new AlienRaceTrait(list, "Diplomatic", 0.6);
		public static var SECRETIVE:AlienRaceTrait = new AlienRaceTrait(list, "Secrative", 0.5);
		public static var EXPLORERS:AlienRaceTrait = new AlienRaceTrait(list, "Explorers", 0.3);
		public static var RELIGIOUS:AlienRaceTrait = new AlienRaceTrait(list, "Religious", 0.3);
		public static var IMPERIAL:AlienRaceTrait = new AlienRaceTrait(list, "Imperial", 0.3);
		public static var SCAVENGERS:AlienRaceTrait = new AlienRaceTrait(list, "Scavengers", 0.3);
		public static var DEFENSIVE:AlienRaceTrait = new AlienRaceTrait(list, "Defensive", 0.4);
		public static var NOMADIC:AlienRaceTrait = new AlienRaceTrait(list, "Nomadic", 0.4);
		public static var MERCHANTS:AlienRaceTrait = new AlienRaceTrait(list, "Merchants", 0.5);
		public static var CORPORATE:AlienRaceTrait = new AlienRaceTrait(list, "Corporate", 0.5);
		public static var TRADERS:AlienRaceTrait = new AlienRaceTrait(list, "Traders", 0.5);
		public static var NEUTRAL:AlienRaceTrait = new AlienRaceTrait(list, "Neutral", 0.2);
		public static var CONSERVATIVE:AlienRaceTrait = new AlienRaceTrait(list, "Conservative", 0.6);
		public static var LIBERAL:AlienRaceTrait = new AlienRaceTrait(list, "Liberal", 0.6);
		public static var SCIENTIFIC:AlienRaceTrait = new AlienRaceTrait(list, "Scientific", 0.3);
		public static var ARGICULTURAL:AlienRaceTrait = new AlienRaceTrait(list, "Argicultural", 0.3);
		
		public static function values():ArrayList
		{
			return list;
		}
	}
}