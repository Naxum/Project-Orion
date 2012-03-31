package com.whitesword.space.races
{
	import com.whitesword.utils.ArrayList;
	
	public class AlienRace
	{
		private var name:String;
		private var age:int; //in cycles
		private var traits:ArrayList = new ArrayList();
		private var histories:ArrayList = new ArrayList();
		private var characteristics:ArrayList = new ArrayList();
		
		/**
		 * TODO: Skin Color, Hair Color, Scale Color, Tattoos, Height, Weight, Natural Defense
		 */
		public function AlienRace()
		{
		}
		
		public function generate():void
		{
			setName("New Alien Race");
			setAge(Math.random() * 50 + 25);
			
			var i:int = 0;
			var weight:Number = 0.0;
			var traitsList:ArrayList = AlienRaceTraits.values();
			
			while(weight < 1)
			{
				i = Math.floor(Math.random() * traitsList.size());
				var trait:AlienRaceTrait = traitsList.get(i);
				
				if(weight + trait.getWeight() <= 1 && !getTraits().contains(trait))
				{
					addTrait(trait);
					weight += trait.getWeight();
				}
				else
				{
					weight += 0.2;
				}
			}
			
			weight = 0;
			var historiesList:ArrayList = AlienRaceHistories.values();
			
			while(weight < 1)
			{
				i = Math.floor(Math.random() * historiesList.size());
				var history:AlienRaceHistory = historiesList.get(i);
				
				if(weight + history.getWeight() <= 1 && !getHistories().contains(history))
				{
					addHistory(history);
					weight += history.getWeight();
				}
				else
				{
					weight += 0.2;
				}
			}
			
			weight = 0;
			var characteristicsList:ArrayList = AlienRaceCharacteristics.values();
			
			while(weight < 1)
			{
				i = Math.floor(Math.random() * characteristicsList.size());
				var characteristic:AlienRaceCharacteristic = characteristicsList.get(i);
				
				if(weight + characteristic.getWeight() <= 1 && !getCharacteristics().contains(characteristic))
				{
					addCharacteristic(characteristic);
					weight += characteristic.getWeight();
				}
				else
				{
					weight += 0.2;
				}
			}
		}
		
		public function traceInformation():String
		{
			var result:String = "";
			result += "\n" + "------------------------------------";
			result += "\n" + "Name: " + getName();
			result += "\n" + "Age: " + getAge();
			result += "\n" + "Traits: ";
			
			for each(var trait:AlienRaceTrait in getTraits())
			{
				result += "\n" + "\t"+trait.getName();
			}
			
			result += "\n" + "History: ";
			
			for each(var history:AlienRaceHistory in getHistories())
			{
				result += "\n" + "\t"+history.getName();
			}
			
			result += "\n" + "Characteristics:";
			
			for each(var characteristic:AlienRaceCharacteristic in getCharacteristics())
			{
				result += "\n" + "\t"+characteristic.getName();
			}
			
			result += "\n" + "------------------------------------";
			
			return result;
		}
		
		public function getName():String
		{
			return this.name;
		}
		
		public function setName(string:String):void
		{
			this.name = string;
		}
		
		public function getAge():int
		{
			return age;
		}
		
		public function addAge(i:int):void
		{
			this.age += i;
		}
		
		public function setAge(i:int):void
		{
			this.age = i;
		}
		
		public function getTraits():ArrayList
		{
			return traits;
		}
		
		public function addTrait(trait:AlienRaceTrait):void
		{
			this.traits.add(trait);
		}
		
		public function removeTrait(trait:AlienRaceTrait):void
		{
			this.traits.removeItem(trait);
		}
		
		public function getHistories():ArrayList
		{
			return histories;
		}
		
		public function addHistory(history:AlienRaceHistory):void
		{
			this.histories.add(history);
		}
		
		public function getCharacteristics():ArrayList
		{
			return characteristics;
		}
		
		public function addCharacteristic(characteristic:AlienRaceCharacteristic):void
		{
			this.characteristics.add(characteristic);
		}
		
		public function removeCharacteristic(characteristic:AlienRaceCharacteristic):void
		{
			this.characteristics.removeItem(characteristic);
		}
	}
}