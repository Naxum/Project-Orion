package com.whitesword.space.races
{
	import com.whitesword.utils.ArrayList;

	public class AlienRaceCharacteristic
	{
		private var name:String;
		private var weight:Number;
		
		public function AlienRaceCharacteristic(list:ArrayList, name:String, weight:Number)
		{
			this.name = name;
			this.weight = weight;
			
			list.add(this);
		}
		
		public function getName():String
		{
			return name;
		}
		
		public function getWeight():Number
		{
			return this.weight;
		}
	}
}