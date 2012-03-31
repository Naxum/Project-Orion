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
			
			for(var i:int = 0; i < Math.random() * 20 + 25; i++)
			{
				systems.add(new System(this));
			}
			
			trace("Galaxy Created with " + systems.size() + " systems.");
		}
		
		public function addSystem(system:System):void
		{
			this.systems.add(system);
		}
		
		public function getUniverse():Universe
		{
			return universe;
		}
		
		public function getSaveData():String
		{
			var data:String = "<galaxy name='A'>\n";
			
			for each(var system:System in systems)
			{
				data += SpaceUtil.indentXML(system.getSaveData(), 1);
			}
			
			data += "</galaxy>\n";
			
			return data;
		}
	}
}