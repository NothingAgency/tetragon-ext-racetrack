/*
 *      _________  __      __
 *    _/        / / /____ / /________ ____ ____  ___
 *   _/        / / __/ -_) __/ __/ _ `/ _ `/ _ \/ _ \
 *  _/________/  \__/\__/\__/_/  \_,_/\_, /\___/_//_/
 *                                   /___/
 * 
 * tetragon : Engine for Flash-based web and desktop games.
 * Licensed under the MIT License.
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy of
 * this software and associated documentation files (the "Software"), to deal in
 * the Software without restriction, including without limitation the rights to
 * use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
 * the Software, and to permit persons to whom the Software is furnished to do so,
 * subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 * FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 * COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 * IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */
package tetragon.data.racetrack.constants
{
	public final class RTTriggerActions
	{
		//-----------------------------------------------------------------------------------------
		// Constants
		//-----------------------------------------------------------------------------------------
		
		public static const PLAY_SOUND:String			= "playSound";
		public static const ADD_SCORE:String			= "addScore";
		public static const SUBTRACT_SCORE:String		= "subtractScore";
		public static const ADD_BONUS:String			= "addBonus";
		public static const SUBTRACT_BONUS:String		= "subtractBonus";
		public static const ADD_TIME:String				= "addTime";
		public static const SUBTRACT_TIME:String		= "subtractTime";
		public static const ADD_HEALTH:String			= "addHealth";
		public static const SUBTRACT_HEALTH:String		= "subtractHealth";
		public static const CHANGE_OBJECT_STATE:String	= "changeObjectState";
		public static const DISABLE_PLAYER:String		= "disablePlayer";
		public static const COMPLETE_LEVEL:String		= "completeLevel";
		public static const STOP_PLAYER:String			= "stopPlayer";
		public static const TRACK_CHECKPOINT:String		= "trackCheckpoint";
		
		
		//-----------------------------------------------------------------------------------------
		// Public Methods
		//-----------------------------------------------------------------------------------------
		
		/**
		 * Indicates whether the given string is a valid constant value.
		 * 
		 * @param string
		 * @return true or false
		 */
		public static function isValid(string:String):Boolean
		{
			return string == PLAY_SOUND
				|| string == ADD_SCORE
				|| string == SUBTRACT_SCORE
				|| string == ADD_BONUS
				|| string == SUBTRACT_BONUS
				|| string == ADD_TIME
				|| string == SUBTRACT_TIME
				|| string == ADD_HEALTH
				|| string == SUBTRACT_HEALTH
				|| string == CHANGE_OBJECT_STATE
				|| string == DISABLE_PLAYER
				|| string == COMPLETE_LEVEL
				|| string == STOP_PLAYER
				|| string == TRACK_CHECKPOINT;
		}
	}
}
