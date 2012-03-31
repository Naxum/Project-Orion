package com.whitesword.utils
{
	public dynamic class ArrayList extends Array
	{		
		public function ArrayList(...args)
		{
			if(args.length != 0) addAll(args);
		}
		
		public function contains(o:*):Boolean
		{
			return this.indexOf(o) != -1;
		}
		
		public function add(o:*):void
		{
			this.push(o);
		}
		
		/**
		 * Add all objects in the function to the array list.
		 */
		public function addAll(...args):void
		{
			for each(var arg:* in args)
			{
				add(arg);
			}
		}
		
		/**
		 * Get an object by index number.
		 */
		public function get(i:int):*
		{
			return this[i];
		}
		
		
		/**
		 * Removes an object by index. 
		 */
		public function removeIndex(i:int):Boolean
		{
			if(i < this.length)
			{
				this.splice(i, 1);
				return true;
			}
			else
			{
				return false;
			}
		}
		
		/**
		 *  Removes an item (object) from the arraylist.
		 */
		public function removeItem(o:*):Boolean
		{
			if(contains(o))
			{
				removeIndex(indexOf(o));
				return true;
			}
			else
			{
				return false;
			}
		}
		
		public function size():int
		{
			return this.length;
		}
	}
}