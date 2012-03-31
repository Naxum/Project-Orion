package com.whitesword.utils
{
	import flash.utils.Dictionary;

	public class HashMap extends Dictionary
	{
		public function HashMap()
		{
		}
		
		public function get(key:*):*
		{
			if(containsKey(key)) return this[key];
			return null;
		}
		
		public function put(key:*, value:*):void
		{
			this[key] = value;
		}
		
		public function remove(key:*):void
		{
			if(containsKey(key)) delete this[key];	
		}
		
		public function size():int
		{
			var i:int = 0;
			
			for(var key:* in this)
			{
				i++;
			}
			
			return i;
		}
		
		public function isEmpty():Boolean
		{
			return size() == 0;
		}
		
		public function clear():void
		{
			for(var key:* in this)
			{
				delete this[key];
			}
		}
		
		public function containsKey(key:*):Boolean
		{
			if(this[key] == null) return true;
			return false;
		}
		
		public function containsValue(value:*):Boolean
		{
			for(var key:* in this)
			{
				if(this[key] == value) return true;
			}
			return false;
		}
		
		public function keys():ArrayList
		{
			var list:ArrayList = new ArrayList();
			
			for(var key:* in this)
			{
				list.add(key);
			}
			
			return list;
		}
		
		public function values():ArrayList
		{
			var list:ArrayList = new ArrayList();
			
			for(var key:* in this)
			{
				list.add(this[key]);
			}
			
			return list;
		}
	}
}