package com.whitesword.space.planets
{
	import avmplus.getQualifiedClassName;
	
	import com.whitesword.space.systems.System;
	import com.whitesword.utils.ArrayList;
	import com.whitesword.utils.SpaceUtil;

	public class Planet
	{
		private var system:System;
		protected var name:String;
		protected var rotationSpeed:Number; //float based on earth
		protected var mass:Number; //same
		protected var atmosphere:PlanetAtmosphere;
		protected var temperature:Number;
		protected var gravity:Number;
		
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
		
		public function getRotationSpeed():Number
		{
			return rotationSpeed;
		}
		
		/**
		 * Rotation speed is a float relative to Earth's rotation speed.
		 */
		public function setRotationSpeed(speed:Number):void
		{
			this.rotationSpeed = speed;
		}
		
		public function getMass():Number
		{
			return mass;
		}
		
		public function setMass(mass:Number):void
		{
			this.mass = mass;
		}
		
		public function getAtmosphere():PlanetAtmosphere
		{
			return this.atmosphere;
		}
		
		public function setAtmosphere(atmosphere:PlanetAtmosphere):void
		{
			this.atmosphere = atmosphere;	
		}
		
		public function setTemperature(temp:Number):void
		{
			this.temperature = temp;
		}
		
		public function getTemperature():Number
		{
			return this.temperature;
		}
		
		public function getGravity():Number
		{
			return this.gravity;
		}
		
		public function setGravity(gravity:Number):void
		{
			this.gravity = gravity;
		}
		
		public function getChildren():ArrayList
		{
			return children;
		}
		
		public function addChild(p:Satellite):void
		{
			children.add(p);
		}
		
		public function getSystem():System
		{
			return system;
		}
		
		public function getSaveData():String
		{
			var data:String = "<planet>\n";
			
			data += 
				"\t<type>" + getQualifiedClassName(this).replace("com.whitesword.space.planets::", "") + "</type>\n" + 
				"\t<name>" + getName() + "</name>\n" +
				"\t<rotationSpeed>" + getRotationSpeed() + "</rotationSpeed>\n" + 
				"\t<mass>" + getMass() + "</mass>\n" + 
				"\t<atmosphere>\n" + SpaceUtil.indentXML(getAtmosphere().getSaveData(), 2) + "\t</atmosphere>\n" +
				"\t<temperature>" + getTemperature() + "</temperature>\n" + 
				"\t<gravity>" + getGravity() + "</gravity>\n" + getChildrenSaveData();
			
			//TODO: save children
			
			data += "</planet>\n";
			
			return data;
		}
		
		protected function getChildrenSaveData():String
		{
			if(this is Satellite) return "\t<children />\n";
			
			var data:String = "\t<children>\n";
			
			for each(var satellite:Satellite in children)
			{
				data += SpaceUtil.indentXML(satellite.getSaveData(), 2);	
			}
			
			data += "\t</children>\n";
			
			return data;
		}
	}
}