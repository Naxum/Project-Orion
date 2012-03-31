package com.whitesword.utils
{
	public class SpaceUtil
	{
		protected static var alphabet:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		protected static var numerals:ArrayList = new ArrayList();
		
		{
			numerals.addAll("I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X");
		}
		
		public static function getLetterFromNumber(number:int):String
		{
			return alphabet.charAt(number%26);
		}
		
		public static function indentXML(data:String, times:int):String
		{
			var tempData:String = "";
			var prefix:String = "";
			
			for(var i:int = 0; i < times; i++)
			{
				prefix += "\t";
			}
			
			for each(var s:String in data.split("\n"))
			{
				tempData += prefix + s + "\n";
			}
			
			return tempData;
		}
		
		public static function getNumeralFromNumber(number:int):String
		{
			return numerals.get(number);
		}
	}
}