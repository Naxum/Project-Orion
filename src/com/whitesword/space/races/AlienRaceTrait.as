package com.whitesword.space.races
{
	import com.whitesword.utils.ArrayList;

	public class AlienRaceTrait
	{
		private var name:String;
		private var weight:Number;
		
		public function AlienRaceTrait(list:ArrayList, name:String, weight:Number)
		{
			this.name = name;
			this.weight = weight;
			
			list.add(this);
		}
		
		public function getWeight():Number
		{
			return weight;
		}
		
		public function getName():String
		{
			return name;
		}
	}
}