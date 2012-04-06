package com.whitesword.space.ships.classes
{
	import com.whitesword.utils.SpaceUtil;

	public class ShipClass
	{
		public function ShipClass()
		{
		}
		
		public function getName():String
		{
			return SpaceUtil.getClassName(this);
		}
	}
}