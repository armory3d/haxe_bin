/*
 * Copyright (C)2005-2018 Haxe Foundation
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 */

// This file is generated from mozilla\Event.webidl. Do not edit!

package js.html;

/**
	The `Event` interface represents any event which takes place in the DOM; some are user-generated (such as mouse or keyboard events), while others are generated by APIs (such as events that indicate an animation has finished running, a video has been paused, and so forth). There are many types of events, some of which use other interfaces based on the main `Event` interface. `Event` itself contains the properties and methods which are common to all events.

	Documentation [Event](https://developer.mozilla.org/en-US/docs/Web/API/Event) by [Mozilla Contributors](https://developer.mozilla.org/en-US/docs/Web/API/Event$history), licensed under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/).

	@see <https://developer.mozilla.org/en-US/docs/Web/API/Event>
**/
@:native("Event")
extern class Event
{
	static inline var NONE : Int = 0;
	static inline var CAPTURING_PHASE : Int = 1;
	static inline var AT_TARGET : Int = 2;
	static inline var BUBBLING_PHASE : Int = 3;
	static inline var ALT_MASK : Int = 1;
	static inline var CONTROL_MASK : Int = 2;
	static inline var SHIFT_MASK : Int = 4;
	static inline var META_MASK : Int = 8;
	
	
	/**
		The name of the event (case-insensitive).
	**/
	var type(default,null) : String;
	
	/**
		A reference to the target to which the event was originally dispatched.
	**/
	var target(default,null) : EventTarget;
	
	/**
		A reference to the currently registered target for the event. This is the object to which the event is currently slated to be sent; it's possible this has been changed along the way through retargeting.
	**/
	var currentTarget(default,null) : EventTarget;
	
	/**
		Indicates which phase of the event flow is being processed.
	**/
	var eventPhase(default,null) : Int;
	
	/**
		A Boolean indicating whether the event bubbles up through the DOM or not.
	**/
	var bubbles(default,null) : Bool;
	
	/**
		A Boolean indicating whether the event is cancelable.
	**/
	var cancelable(default,null) : Bool;
	
	/**
		A historical property introduced by Internet Explorer and eventually adopted into the DOM specification in order to ensure existing sites continue to work. Ideally, you should try to use `Event.preventDefault()` and `Event.defaultPrevented` instead, but you can use `returnValue` if you choose to do so.
	**/
	var returnValue : Bool;
	
	/**
		Indicates whether or not `event.preventDefault()` has been called on the event.
	**/
	var defaultPrevented(default,null) : Bool;
	
	/**
		A Boolean value indicating whether or not the event can bubble across the boundary between the shadow DOM and the regular DOM.
	**/
	var composed(default,null) : Bool;
	
	/**
		Indicates whether or not the event was initiated by the browser (after a user click for instance) or by a script (using an event creation method, like event.initEvent).
	**/
	var isTrusted(default,null) : Bool;
	
	/**
		The time at which the event was created (in milliseconds). By specification, this value is time since epoch, but in reality browsers' definitions vary; in addition, work is underway to change this to be a `DOMHighResTimeStamp` instead.
	**/
	var timeStamp(default,null) : Float;
	
	/**
		A historical alias to `Event.stopPropagation()`. Setting its value to `true` before returning from an event handler prevents propagation of the event.
	**/
	var cancelBubble : Bool;
	
	/**
		The original target of the event, before any retargetings (Mozilla-specific).
	**/
	var originalTarget(default,null) : EventTarget;
	
	/**
		The explicit original target of the event (Mozilla-specific).
	**/
	var explicitOriginalTarget(default,null) : EventTarget;
	
	/** @throws DOMError */
	function new( type : String, ?eventInitDict : EventInit ) : Void;
	
	/**
		Returns the event’s path (objects on which listeners will be invoked). This does not include nodes in shadow trees if the shadow root was created with its `ShadowRoot.mode` closed.
	**/
	function composedPath() : Array<EventTarget>;
	
	/**
		Stops the propagation of events further along in the DOM.
	**/
	function stopPropagation() : Void;
	
	/**
		For this particular event, no other listener will be called. Neither those attached on the same element, nor those attached on elements which will be traversed later (in capture phase, for instance)
	**/
	function stopImmediatePropagation() : Void;
	
	/**
		Cancels the event (if it is cancelable).
	**/
	function preventDefault() : Void;
	
	/**
		Initializes the value of an Event created. If the event has already being dispatched, this method does nothing.
	**/
	function initEvent( type : String, ?bubbles : Bool = false, ?cancelable : Bool = false ) : Void;
}