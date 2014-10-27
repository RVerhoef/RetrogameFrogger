package  
{
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Rob
	 */
	public class MoveSmallCar extends Sprite
	{
		private var smallCar:SmallCar = new SmallCar;
		private var smallCarVelX:Number;
		private var smallCarVelY:Number;
		 
		public function MoveSmallCar(smallCarVelX2:Number, smallCarVelY2:Number):void
		{
			smallCarVelX = smallCarVelX2;
			smallCarVelY = smallCarVelY2;
			addChild(smallCar);
		}
		
		public function update():void
		{
			if(x < -32)
			{
				smallCarVelX = Math.abs(smallCarVelX);
				smallCar.x = 256;
			}
			else if(x > 288)
			{
				smallCarVelX = -Math.abs(smallCarVelX); 
				smallCar.x = 0;
			}
			
			x += smallCarVelX;
			y += smallCarVelY;
		}
		
	}

}