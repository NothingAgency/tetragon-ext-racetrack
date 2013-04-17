/*
 *      _________  __      __
 *    _/        / / /____ / /________ ____ ____  ___
 *   _/        / / __/ -_) __/ __/ _ `/ _ `/ _ \/ _ \
 *  _/________/  \__/\__/\__/_/  \_,_/\_, /\___/_//_/
 *                                   /___/
 * 
 * Tetragon : Game Engine for multi-platform ActionScript projects.
 * http://www.tetragonengine.com/
 * Copyright (c) The respective Copyright Holder (see LICENSE).
 * 
 * Permission is hereby granted, to any person obtaining a copy of this software
 * and associated documentation files (the "Software") under the rules defined in
 * the license found at http://www.tetragonengine.com/license/ or the LICENSE
 * file included within this distribution.
 * 
 * The above copyright notice and this permission notice must be included in all
 * copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND. THE COPYRIGHT
 * HOLDER AND ITS LICENSORS DISCLAIM ALL WARRANTIES AND CONDITIONS, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO ANY IMPLIED WARRANTIES AND CONDITIONS OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT, AND ANY
 * WARRANTIES AND CONDITIONS ARISING OUT OF COURSE OF DEALING OR USAGE OF TRADE.
 * NO ADVICE OR INFORMATION, WHETHER ORAL OR WRITTEN, OBTAINED FROM THE COPYRIGHT
 * HOLDER OR ELSEWHERE WILL CREATE ANY WARRANTY OR CONDITION NOT EXPRESSLY STATED
 * IN THIS AGREEMENT.
 */
package tetragon.data.racetrack.proto
{
	import tetragon.data.DataObject;
	import tetragon.view.render2d.display.Image2D;

	import flash.utils.Dictionary;
	
	
	/**
	 * @author Hexagon
	 */
	public class RTObject extends DataObject
	{
		//-----------------------------------------------------------------------------------------
		// Properties
		//-----------------------------------------------------------------------------------------
		
		public var collectionID:String;
		public var defaultStateID:String;
		public var defaultFramerate:int;
		public var collisionGrace:Number;
		public var imageID:String;
		
		public var type:String;
		public var scale:Number;
		public var pixelOffsetY:Number;
		public var isPlayer:Boolean;
		
		public var image:Image2D;
		
		/**
		 * Maps object states.
		 */
		public var states:Dictionary;
		public var statesNum:int;
		
		/**
		 * A map of RTObjectImageSequence objects.
		 */
		public var sequences:Dictionary;
		public var sequencesNum:uint;
		
		/**
		 * Maps object-specific properties.
		 */
		public var properties:Dictionary;
		public var propertiesNum:uint;
		
		/**
		 * An array of RTTrigger objects.
		 */
		public var triggers:Vector.<RTTrigger>;
		public var triggersNum:uint;
		
		
		//-----------------------------------------------------------------------------------------
		// Constructor
		//-----------------------------------------------------------------------------------------
		
		/**
		 * Creates a new instance of the class.
		 */
		public function RTObject(id:String)
		{
			_id = id;
		}
	}
}
