package com.whitesword.space.races
{
	import com.whitesword.utils.ArrayList;

	public class AlienRaceHistories
	{
		public static var list:ArrayList = new ArrayList();
		
		public static var MILITARY_DICTATORS:AlienRaceHistory = new AlienRaceHistory(list, "Military Dictators", 0.2);
		public static var PEACE_TREATIES:AlienRaceHistory = new AlienRaceHistory(list, "Oversaw Peace Treaties Between Races", 0.4);
		public static var EARLY_INTELLIGENT_Race:AlienRaceHistory = new AlienRaceHistory(list, "Early Intelligent Race", 0.5);
		public static var WAR_WITH_OTHER_Race:AlienRaceHistory = new AlienRaceHistory(list, "War with Other Race", 0.4);
		public static var ENHILATED_OTHER_Race:AlienRaceHistory = new AlienRaceHistory(list, "Enhilated Other Race", 0.6);
		public static var NEARLY_ENHILATED:AlienRaceHistory = new AlienRaceHistory(list, "Nearly Enhilated", 0.8);
		public static var COUNSELORS:AlienRaceHistory = new AlienRaceHistory(list, "Current Counselors", 0.4);
		public static var EX_COUNSELORS:AlienRaceHistory = new AlienRaceHistory(list, "Ex Counselors", 0.7);
		public static var PEACEMAKERS:AlienRaceHistory = new AlienRaceHistory(list, "Peacemaker", 0.4);
		public static var ANCIENT_ARTIFACTS:AlienRaceHistory = new AlienRaceHistory(list, "Discovered Ancient Alien Artifacts", 0.4);
		public static var ASSASSINS:AlienRaceHistory = new AlienRaceHistory(list, "Assassins", 0.6);
		public static var OVERPOPULATED:AlienRaceHistory = new AlienRaceHistory(list, "Overpopulated Homeworld", 0.2);
		public static var TERRORISTS:AlienRaceHistory = new AlienRaceHistory(list, "Terrorists", 0.6);
		public static var SECRET_SOCIETY:AlienRaceHistory = new AlienRaceHistory(list, "Secret Societiy", 0.3);
		public static var FARMERS:AlienRaceHistory = new AlienRaceHistory(list, "Farmers", 0.2);
		public static var SEPERATED_HUMANS:AlienRaceHistory = new AlienRaceHistory(list, "Seperated Humans", 1);
		public static var HUMAN_STUDIES:AlienRaceHistory = new AlienRaceHistory(list, "Human Studies", 0.3);
		public static var ENSLAVED:AlienRaceHistory = new AlienRaceHistory(list, "Enslaved by Another Race", 0.6);
		public static var ENSLAVED_OTHER:AlienRaceHistory = new AlienRaceHistory(list, "Enslaved Another Race", 0.3);
		public static var ARTIFICIAL_ENHANCEMENTS:AlienRaceHistory = new AlienRaceHistory(list, "Artificial Enhancements", 0.3);
		public static var NOMADIC_TRIBES:AlienRaceHistory = new AlienRaceHistory(list, "Nomadic Tribes", 0.3);
		public static var SAVED_FROM_EXTINCTION:AlienRaceHistory = new AlienRaceHistory(list, "Saved From Extinction by Another Race", 0.3);
		public static var SAVED_RACE_FROM_EXTINCTION:AlienRaceHistory = new AlienRaceHistory(list, "Saved Another Race From Extinction", 0.3);
		public static var INFECTED:AlienRaceHistory = new AlienRaceHistory(list, "Infected with Currently-Incurable Disease", 0.3);
		public static var LOST_CONTACT:AlienRaceHistory = new AlienRaceHistory(list, "Lost Contact with some Colonies", 0.3);
		public static var LOST_EXPLORERS_IN_WORMHOLE:AlienRaceHistory = new AlienRaceHistory(list, "Lost Explorers in Wormhole", 0.3);
		public static var LOST_COLONIES:AlienRaceHistory = new AlienRaceHistory(list, "Lost Colonies to Unknown Enemy", 0.3);
		
		public static function values():ArrayList
		{
			return list;
		}
	}
}