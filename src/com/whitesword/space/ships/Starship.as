package com.whitesword.space.ships
{
	import com.whitesword.space.ships.classes.ShipClass;

	public class Starship
	{
		private var fleet:Fleet;
		private var shipClass:ShipClass;
		 
		private var name:String;
		 
		private var hull:Number;
		private var hullMax:Number;
		 
		private var shield:Number;
		private var shieldMax:Number;
		 
		private var speed:Number; //warp drive
		
		private var level:int;
		private var experience:Number;
 
		//TODO: Shields, engine, warp drive, scanner (targeting system), cloaking, cargo bay, mining system, auto docking?
		//TODO: Weaponry: Rockets, lasers, warheads, torpedoes, antimatter, mac cannons(space stations), turrets, rail gun, ram (struggle)
		
		public function setFleet(fleet:Fleet):void
		{
			this.fleet = fleet;
		}
		
		public function getFleet():Fleet
		{
			return this.fleet;
		}
		
		public function setName(name:String):void
		{
			this.name = name;
		}
		
		public function getName():String
		{
			return this.name;
		}
		
		public function setLevel(level:int):void
		{
			this.level = level;
		}
		
		public function getLevel():int
		{
			return this.level;
		}
	}
}