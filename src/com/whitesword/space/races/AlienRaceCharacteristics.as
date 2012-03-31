package com.whitesword.space.races
{
	import com.whitesword.utils.ArrayList;

	public class AlienRaceCharacteristics
	{
		public static var list:ArrayList = new ArrayList();
		
		public static var HUMANOID:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Humanoid", 0.1);
		public static var HAIR:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Hairy", 0.4);
		public static var NOCTURNAL:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Nocturnal", 0.3);
		public static var CARNAVORE:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Carnavore", 0.2);
		public static var HERBAVORE:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Herbavore", 0.2);
		public static var FUNGIVORE:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Fungivore", 0.2);
		public static var METALIVORE:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Metalivore", 0.2);
		public static var AURUMVORE:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Aurumvore (Gold Eater)", 0.4);
		public static var GENDERLESS:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Genderless", 0.2);
		public static var BIG_HEADED:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Big Headed", 0.2);
		public static var MUSCULAR:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Muscular", 0.2);
		public static var BEAKED:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Beaked", 0.2);
		public static var THREE_FINGERED:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Three Fingered", 0.2);
		public static var FIVE_FINGERED:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Five Fingered", 0.2);
		public static var TENTACLED:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Tentacled", 0.2);
		public static var BLIND:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Blind", 0.4);
		public static var SILICON_BASED:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Silicon Based", 0.2);
		public static var CARBON_BASED:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Carbon Based", 0.2);
		public static var OXYGEN_BASED:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Oxygen Based", 0.2);
		public static var ADAMANTIUM_BASED:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Adamantium Based", 0.4);
		public static var WALRUS:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Space Walrus", 1);
		public static var SCALES:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Scales", 0.3);
		public static var GLOW:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Glow", 0.3);
		public static var TOOTHLESS:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Toothless", 0.2);
		public static var TAILED:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Tailed", 0.2);
		public static var XENOPHOBIC:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Xenophobic (Racist)", 0.1);
		public static var CLAWED:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Clawed", 0.2);
		public static var BLUBBERY:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Blubbery", 0.3);
		public static var CAMOUFLAGED:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Camouflaged", 0.3);
		public static var PRONE_TO_SICKNESS:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Prone to Sickness", 0.2);
		public static var MONOTONE:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Monotone", 0.2);
		public static var AQUATIC:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Aquatic", 0.2);
		public static var MECHANICAL:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Mechanical", 0.2);
		public static var ACID_BLOODED:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Acid Blooded", 0.2);
		public static var HOT_BLOODED:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Hot Blooded", 0.2);
		public static var COLD_BLOODED:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Cold Blooded", 0.2);
		public static var SPIKES:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Spikes", 0.3);
		public static var SOCIAL:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Social", 0.3);
		public static var FAT:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Fat", 0.3);
		public static var FLOATING:AlienRaceCharacteristic = new AlienRaceCharacteristic(list, "Floating", 0.4);
		
		public static function values():ArrayList
		{
			return list;
		}
	}
}