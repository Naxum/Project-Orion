package com.whitesword.space.galaxy
{
	import com.whitesword.space.systems.System;
	import com.whitesword.space.universe.Universe;
	import com.whitesword.utils.ArrayList;
	import com.whitesword.utils.SpaceUtil;

	public class Galaxy
	{
		private var universe:Universe;
		private var systems:ArrayList = new ArrayList();
		
		public function Galaxy(universe:Universe)
		{			
			this.universe = universe;
		}
		
		public function generateGalaxy():Galaxy
		{
			for(var i:int = 0; i < Math.random() * 20 + 25; i++)
			{
				systems.add(new System(this).generateSystem());
			}
			
			trace("Galaxy Created with " + systems.size() + " systems.");
			
			return this;
		}
		
		public function addSystem(system:System):void
		{
			this.systems.add(system);
		}
		
		public function getUniverse():Universe
		{
			return universe;
		}
		
		public function hasStarName(s:String):Boolean
		{
			for each(var system:System in systems)
			{
				if(system.getMainStar() == null)
				{
					trace("Checking star names, a system is null.");
					continue;
				}
				
				if(system.getMainStar().getName() == s)
				{
					return false;
				}
			}
			
			return true;
		}
		
		public function getSystems():ArrayList
		{
			return systems;
		}
		
		public function getSaveData():XML
		{
			var xml:XML = new XML("<galaxy />");
			
			for each(var system:System in systems)
			{
				xml.appendChild(system.getSaveData());
			}
			
			return xml;
		}
	}
}