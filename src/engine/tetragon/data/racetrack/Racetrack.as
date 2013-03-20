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
package tetragon.data.racetrack
{
	import tetragon.data.DataObject;
	import tetragon.data.racetrack.vo.RTColorSet;
	import tetragon.data.racetrack.vo.RTEntity;
	import tetragon.data.racetrack.vo.RTObject;
	import tetragon.data.racetrack.vo.RTObjectCollection;
	import tetragon.data.racetrack.vo.RTOpponent;
	import tetragon.data.racetrack.vo.RTSegment;
	import tetragon.view.render2d.extensions.scrollimage.ScrollTile2D;

	import flash.utils.Dictionary;
	
	
	/**
	 * Racetrack class
	 *
	 * @author Hexagon
	 */
	public class Racetrack extends DataObject
	{
		//-----------------------------------------------------------------------------------------
		// Properties
		//-----------------------------------------------------------------------------------------
		
		public var roadWidth:int;
		public var segmentLength:int;
		public var rumbleLength:int;
		public var trackLength:int;
		public var lanes:int;
		public var opponentsNum:int;
		public var hazeDensity:int;
		
		public var hazeColor:uint;
		public var skyColor:uint;
		
		public var colorSetLight:RTColorSet;
		public var colorSetDark:RTColorSet;
		public var colorSetStart:RTColorSet;
		public var colorSetFinish:RTColorSet;
		
		public var backgroundLayers:Vector.<ScrollTile2D>;
		
		public var acceleration:Number;		// acceleration rate - tuned until it 'felt' right
		public var deceleration:Number;		// 'natural' deceleration rate when neither accelerating, nor braking
		public var braking:Number;			// deceleration rate when braking
		public var offRoadDecel:Number;		// speed multiplier when off road (e.g. you lose 2% speed each update frame)
		public var offRoadLimit:Number;		// limit when off road deceleration no longer applies (e.g. you can always go at least this speed even when off road)
		public var centrifugal:Number;		// centrifugal force multiplier when going around curves
		public var maxSpeed:Number;			// top speed (ensure we can't move more than 1 segment in a single frame to make collision detection easier)
		
		public var dt:Number;				// how long is each frame (in seconds)
		public var fieldOfView:int;			// angle (degrees) for field of view (80 - 140)
		public var cameraHeight:Number;		// z height of camera (500 - 5000)
		public var cameraDepth:Number;		// z distance camera is from screen (computed)
		
		public var playerZ:Number;
		
		public var segmentsNum:uint;
		public var segments:Vector.<RTSegment>;
		public var opponents:Vector.<RTOpponent>;
		
		public var objectScale:Number;
		
		public var objects:Dictionary;
		public var collections:Dictionary;
		public var colors:Dictionary;
		
		public var player:RTEntity;
		
		
		//-----------------------------------------------------------------------------------------
		// Constructor
		//-----------------------------------------------------------------------------------------
		
		/**
		 * Creates a new instance of the class.
		 */
		public function Racetrack(id:String)
		{
			_id = id;
			
			objects = new Dictionary();
			collections = new Dictionary();
			colors = new Dictionary();
		}
		
		
		//-----------------------------------------------------------------------------------------
		// Public Methods
		//-----------------------------------------------------------------------------------------
		
		public function reset():void
		{
		}
		
		
		/**
		 * 
		 */
		public function getObject(id:String):RTObject
		{
			return objects[id];
		}
		
		
		/**
		 * Adds a collection of Racetrack objects.
		 */
		public function addCollection(collection:RTObjectCollection):void
		{
			collections[collection.id] = collection;
		}
		
		
		/**
		 * Returns the object collection of the specified ID.
		 * 
		 * @param collectionID
		 * @return RTObjectCollection
		 */
		public function getCollection(collectionID:String):RTObjectCollection
		{
			return collections[collectionID];
		}
		
		
		/**
		 * Returns an array of all object IDs that are in the object collection with
		 * the specified ID.
		 * 
		 * @param collectionID
		 * @return Array of Strings.
		 */
		public function getCollectionObjectIDs(collectionID:String):Array
		{
			var collection:RTObjectCollection = collections[collectionID];
			if (!collection || !collection.objects) return null;
			var a:Array = [];
			for (var i:uint = 0; i < collection.objects.length; i++)
			{
				a.push(collection.objects[i].id);
			}
			return a;
		}
		
		
		/**
		 * @inheritDoc
		 */
		override public function dump():String
		{
			var s:String = toString() + "\nObjects:";
			var n:String;
			for (n in objects)
			{
				s += "\n\t" + n + ": " + objects[n];
			}
			s += "\nBackground Layers:";
			for (n in backgroundLayers)
			{
				s += "\n\t" + n + ": " + backgroundLayers[n];
			}
			s += "\nCollections:";
			for (n in collections)
			{
				s += "\n\t" + n + ": " + collections[n];
			}
			s += "\nColors:";
			for (n in colors)
			{
				s += "\n\t" + n + ": " + colors[n];
			}
			return s;
		}
		
		
		//-----------------------------------------------------------------------------------------
		// Accessors
		//-----------------------------------------------------------------------------------------
	}
}