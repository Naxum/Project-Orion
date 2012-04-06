package com.whitesword.space.planets
{
	import avmplus.getQualifiedClassName;
	
	import com.whitesword.space.systems.System;
	import com.whitesword.utils.ArrayList;
	import com.whitesword.utils.SpaceUtil;

	/**
	 * Abstract class that Terrestrial (Rocky) planets, Gas Giants, Stars, Moons, and Dwarf Planets inherit.
	 */
	public class Planet
	{
		private var system:System;
		private var name:String;
		private var size:Number; // 1 = Earth/Normal size
		private var humidity:Number;
		private var temperature:Number;
		
		protected var children:ArrayList = new ArrayList(); //rings and moons
		
		//TODO: Minerals and materials, populations, etc, taits, earthquakes
		
		public function Planet(system:System)
		{
			this.system = system;
		}
		
		public function getName():String
		{
			return name;
		}
		
		public function setName(string:String):void
		{
			this.name = string;
		}
		
		public function getSize():Number
		{
			return size;
		}
		
		public function setSize(size:Number):void
		{
			this.size = size;
		}
		
		public function setTemperature(temp:Number):void
		{
			this.temperature = temp;
		}
		
		/**
		 * Frozen = -1, Normal = 0, Boiling = 1
		 */
		public function getTemperature():Number
		{
			return this.temperature;
		}
		
		public function getHumidity():Number
		{
			return this.humidity;
		}
		
		/**
		 * Dry = -1, Normal = 0, Wet = 1
		 */
		public function setHumidity(humidity:Number):void
		{
			this.humidity = humidity;
		}
		
		/**
		 * Returns an ArrrayList of Planets
		 */
		public function getChildren():ArrayList
		{
			return children;
		}
		
		public function addChild(p:Planet):void
		{
			children.add(p);
		}
		
		public function getSystem():System
		{
			return system;
		}
		
		public function getSaveData():XML
		{
			var className:String = SpaceUtil.getClassName(this);
			var xml:XML = new XML("<" + className + " />");
			
			xml.name = getName();
			xml.temperature = getTemperature();
			xml.humidity = getHumidity();
			xml.size = getSize();
			xml.children = "";
			
			for each(var child:Planet in children)
			{
				xml.children.appendChild(child.getSaveData());
			}
			
			return xml;
		}
	}
}