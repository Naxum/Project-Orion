package com.whitesword.space
{
	import com.whitesword.space.galaxy.Galaxy;
	import com.whitesword.space.systems.System;

	public class Player
	{
		private var currentGalaxy:Galaxy;
		private var currentSystem:System;
		
		public function setCurrentGalaxy(g:Galaxy):void
		{
			this.currentGalaxy = g;
		}
		
		public function getCurrentGalaxy():Galaxy
		{
			return this.currentGalaxy;
		}
		
		public function setCurrentSystem(s:System):void
		{
			this.currentSystem = s;
		}
		
		public function getCurrentSystem():System
		{
			return this.currentSystem;
		}
	}
}