package com.whitesword.utils
{
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.events.FocusEvent;
	import flash.events.MouseEvent;
	import flash.events.SoftKeyboardEvent;
	import flash.events.TextEvent;
	import flash.geom.Rectangle;
	import flash.text.AntiAliasType;
	import flash.text.TextField;
	import flash.text.TextFieldType;
	import flash.text.TextFormat;
	import flash.text.TextFormatAlign;
	
	public class Text extends Sprite
	{
		protected var fontSize:int;
		protected var startText:String;
		protected var textField:TextField = new TextField;
		
		/**
		 * Please do not call .text to change text, but use .setText(s:String).
		 * Set centered to true to have the font align center.
		 * Set resize to true if you want the text to resize itself to fit perfectly in the text field.
		 */
		public function Text(s:String, fontSize:int=50, textFormatAlign:String=TextFormatAlign.LEFT)
		{
			textField.text = s;
			this.fontSize = fontSize;
			var tf:TextFormat = new TextFormat("NaxcraftSpace", fontSize);
			
			tf.align = textFormatAlign;
			
			textField.defaultTextFormat = tf;
			textField.setTextFormat(tf);
			textField.embedFonts = true;
			textField.textColor = 0xFFFFFF;
			
			textField.selectable = false;
			textField.antiAliasType = AntiAliasType.ADVANCED;
			
			resizeTextBox();
			
			addChild(textField);
		}
		
		public function setPosition(x:Number, y:Number):void
		{
			this.x = x;
			this.y = y;
		}
		
		public function setSize(width:Number, height:Number, resize:Boolean):void
		{
			this.textField.width = width;
			this.textField.height = height;
			if(resize) resizeText();
		}
		
		public function setText(s:String, resizeBox:Boolean):void
		{
			textField.text = s;
			if(resizeBox)
			{
				resizeTextBox();
			}
		}
		
		public function getText():String
		{
			return this.textField.text;
		}
		
		public function centerX(stage:Stage):void
		{
			setPosition(stage.stageWidth * 0.5 - this.width * 0.5, this.y);
		}
		
		public function centerY(stage:Stage):void
		{
			setPosition(this.x, stage.stageHeight * 0.5 - this.height * 0.5);
		}
		
		public function centerXY(stage:Stage):void
		{
			setPosition(stage.stageWidth * 0.5 - this.width * 0.5, stage.stageHeight * 0.5 - this.height * 0.5);
		}
		
		public function setEditable(maxChars:int):void
		{
			this.textField.selectable = true;
			this.textField.needsSoftKeyboard = true;
			this.textField.type = TextFieldType.INPUT;
			
			this.textField.maxChars = maxChars;
			this.textField.restrict = "A-Za-z0-9";
			this.textField.textColor = 0x000000;
			this.textField.background = true;
			this.textField.backgroundColor = 0xEEEEEE;
			this.textField.focusRect = new Rectangle(0, 0, this.width, this.height);
			
			this.addEventListener(FocusEvent.FOCUS_IN, focusIn);
			this.addEventListener(FocusEvent.FOCUS_OUT, focusOut);
			
			this.startText = this.textField.text;
		}
		
		public function revertToStartText():void
		{
			this.textField.text = startText;
		}
		
		protected function focusIn(event:FocusEvent):void
		{
			var tf:TextFormat = textField.getTextFormat();
			tf.size = this.height;
			
			textField.setTextFormat(tf);
			textField.defaultTextFormat = tf;
			
			if(this.textField.text == startText)
			{
				this.textField.text = "";
			}
		}
		
		protected function focusOut(event:FocusEvent):void
		{
			var tf:TextFormat = textField.getTextFormat();
			tf.size = fontSize;
			
			textField.setTextFormat(tf);
			textField.defaultTextFormat = tf;
			
			if(this.textField.text == "")
			{
				this.textField.text = startText;
			}
		}
		
		protected function resizeTextBox():void
		{
			this.textField.width = textField.textWidth + 3;
			this.textField.height = textField.textHeight;
		}
		
		protected function resizeText():void 
		{
			var f:TextFormat = textField.getTextFormat();
			
			if(textField.textWidth > textField.width || textField.textHeight > textField.height)
			{
				while (textField.textWidth > textField.width || textField.textHeight > textField.height) 
				{
					f.size = int(f.size) - 1;
					textField.setTextFormat(f);
				}
			}
			else
			{
				while (textField.textWidth < textField.width || textField.textHeight < textField.height) 
				{
					f.size = int(f.size) + 1;
					textField.setTextFormat(f);
				}
			}
		}
	}
}