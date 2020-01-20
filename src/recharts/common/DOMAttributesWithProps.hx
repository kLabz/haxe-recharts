package recharts.common;

#if (react_types_base_element == 'DOMElement')
import js.html.DOMElement;
#else
import js.html.Element as DOMElement;
#end

import haxe.Constraints.Function;
import js.html.Event;
import react.types.EventHandler;
import react.types.event.ClassicHandler;

typedef DOMAttributesWithProps<T:DOMElement> = ForcedOverride<DOMAttributes<T>, DOMEventsWithProps<T>>;

typedef DOMEventsWithProps<T:DOMElement> = {
	// Clipboard Events
	@:optional var onCopy:ClipboardEventHandler<T>;
	@:optional var onCopyCapture:ClipboardEventHandler<T>;
	@:optional var onCut:ClipboardEventHandler<T>;
	@:optional var onCutCapture:ClipboardEventHandler<T>;
	@:optional var onPaste:ClipboardEventHandler<T>;
	@:optional var onPasteCapture:ClipboardEventHandler<T>;

	// Composition Events
	@:optional var onCompositionEnd:CompositionEventHandler<T>;
	@:optional var onCompositionEndCapture:CompositionEventHandler<T>;
	@:optional var onCompositionStart:CompositionEventHandler<T>;
	@:optional var onCompositionStartCapture:CompositionEventHandler<T>;
	@:optional var onCompositionUpdate:CompositionEventHandler<T>;
	@:optional var onCompositionUpdateCapture:CompositionEventHandler<T>;

	// Focus Events
	@:optional var onFocus:FocusEventHandler<T>;
	@:optional var onFocusCapture:FocusEventHandler<T>;
	@:optional var onBlur:FocusEventHandler<T>;
	@:optional var onBlurCapture:FocusEventHandler<T>;

	// Form Events
	@:optional var onChange:FormEventHandler<T>;
	@:optional var onChangeCapture:FormEventHandler<T>;
	@:optional var onInput:FormEventHandler<T>;
	@:optional var onInputCapture:FormEventHandler<T>;
	@:optional var onReset:FormEventHandler<T>;
	@:optional var onResetCapture:FormEventHandler<T>;
	@:optional var onSubmit:FormEventHandler<T>;
	@:optional var onSubmitCapture:FormEventHandler<T>;
	@:optional var onInvalid:FormEventHandler<T>;
	@:optional var onInvalidCapture:FormEventHandler<T>;

	// Image Events
	@:optional var onLoad:ReactEventHandler<T>;
	@:optional var onLoadCapture:ReactEventHandler<T>;
	@:optional var onError:ReactEventHandler<T>; // also a Media Event
	@:optional var onErrorCapture:ReactEventHandler<T>; // also a Media Event

	// Keyboard Events
	@:optional var onKeyDown:KeyboardEventHandler<T>;
	@:optional var onKeyDownCapture:KeyboardEventHandler<T>;
	@:optional var onKeyPress:KeyboardEventHandler<T>;
	@:optional var onKeyPressCapture:KeyboardEventHandler<T>;
	@:optional var onKeyUp:KeyboardEventHandler<T>;
	@:optional var onKeyUpCapture:KeyboardEventHandler<T>;
	@:optional var onBeforeInput:InputEventHandler<T>;

	// Media Events
	@:optional var onAbort:ReactEventHandler<T>;
	@:optional var onAbortCapture:ReactEventHandler<T>;
	@:optional var onCanPlay:ReactEventHandler<T>;
	@:optional var onCanPlayCapture:ReactEventHandler<T>;
	@:optional var onCanPlayThrough:ReactEventHandler<T>;
	@:optional var onCanPlayThroughCapture:ReactEventHandler<T>;
	@:optional var onDurationChange:ReactEventHandler<T>;
	@:optional var onDurationChangeCapture:ReactEventHandler<T>;
	@:optional var onEmptied:ReactEventHandler<T>;
	@:optional var onEmptiedCapture:ReactEventHandler<T>;
	@:optional var onEncrypted:ReactEventHandler<T>;
	@:optional var onEncryptedCapture:ReactEventHandler<T>;
	@:optional var onEnded:ReactEventHandler<T>;
	@:optional var onEndedCapture:ReactEventHandler<T>;
	@:optional var onLoadedData:ReactEventHandler<T>;
	@:optional var onLoadedDataCapture:ReactEventHandler<T>;
	@:optional var onLoadedMetadata:ReactEventHandler<T>;
	@:optional var onLoadedMetadataCapture:ReactEventHandler<T>;
	@:optional var onLoadStart:ReactEventHandler<T>;
	@:optional var onLoadStartCapture:ReactEventHandler<T>;
	@:optional var onPause:ReactEventHandler<T>;
	@:optional var onPauseCapture:ReactEventHandler<T>;
	@:optional var onPlay:ReactEventHandler<T>;
	@:optional var onPlayCapture:ReactEventHandler<T>;
	@:optional var onPlaying:ReactEventHandler<T>;
	@:optional var onPlayingCapture:ReactEventHandler<T>;
	@:optional var onProgress:ReactEventHandler<T>;
	@:optional var onProgressCapture:ReactEventHandler<T>;
	@:optional var onRateChange:ReactEventHandler<T>;
	@:optional var onRateChangeCapture:ReactEventHandler<T>;
	@:optional var onSeeked:ReactEventHandler<T>;
	@:optional var onSeekedCapture:ReactEventHandler<T>;
	@:optional var onSeeking:ReactEventHandler<T>;
	@:optional var onSeekingCapture:ReactEventHandler<T>;
	@:optional var onStalled:ReactEventHandler<T>;
	@:optional var onStalledCapture:ReactEventHandler<T>;
	@:optional var onSuspend:ReactEventHandler<T>;
	@:optional var onSuspendCapture:ReactEventHandler<T>;
	@:optional var onTimeUpdate:ReactEventHandler<T>;
	@:optional var onTimeUpdateCapture:ReactEventHandler<T>;
	@:optional var onVolumeChange:ReactEventHandler<T>;
	@:optional var onVolumeChangeCapture:ReactEventHandler<T>;
	@:optional var onWaiting:ReactEventHandler<T>;
	@:optional var onWaitingCapture:ReactEventHandler<T>;

	// MouseEvents
	@:optional var onClick:MouseEventHandler<T>;
	@:optional var onClickCapture:MouseEventHandler<T>;
	@:optional var onContextMenu:MouseEventHandler<T>;
	@:optional var onContextMenuCapture:MouseEventHandler<T>;
	@:optional var onDoubleClick:MouseEventHandler<T>;
	@:optional var onDoubleClickCapture:MouseEventHandler<T>;
	@:optional var onDrag:DragEventHandler<T>;
	@:optional var onDragCapture:DragEventHandler<T>;
	@:optional var onDragEnd:DragEventHandler<T>;
	@:optional var onDragEndCapture:DragEventHandler<T>;
	@:optional var onDragEnter:DragEventHandler<T>;
	@:optional var onDragEnterCapture:DragEventHandler<T>;
	@:optional var onDragExit:DragEventHandler<T>;
	@:optional var onDragExitCapture:DragEventHandler<T>;
	@:optional var onDragLeave:DragEventHandler<T>;
	@:optional var onDragLeaveCapture:DragEventHandler<T>;
	@:optional var onDragOver:DragEventHandler<T>;
	@:optional var onDragOverCapture:DragEventHandler<T>;
	@:optional var onDragStart:DragEventHandler<T>;
	@:optional var onDragStartCapture:DragEventHandler<T>;
	@:optional var onDrop:DragEventHandler<T>;
	@:optional var onDropCapture:DragEventHandler<T>;
	@:optional var onMouseDown:MouseEventHandler<T>;
	@:optional var onMouseDownCapture:MouseEventHandler<T>;
	@:optional var onMouseEnter:MouseEventHandler<T>;
	@:optional var onMouseLeave:MouseEventHandler<T>;
	@:optional var onMouseMove:MouseEventHandler<T>;
	@:optional var onMouseMoveCapture:MouseEventHandler<T>;
	@:optional var onMouseOut:MouseEventHandler<T>;
	@:optional var onMouseOutCapture:MouseEventHandler<T>;
	@:optional var onMouseOver:MouseEventHandler<T>;
	@:optional var onMouseOverCapture:MouseEventHandler<T>;
	@:optional var onMouseUp:MouseEventHandler<T>;
	@:optional var onMouseUpCapture:MouseEventHandler<T>;

	// Selection Events
	@:optional var onSelect:ReactEventHandler<T>;
	@:optional var onSelectCapture:ReactEventHandler<T>;

	// Touch Events
	@:optional var onTouchCancel:TouchEventHandler<T>;
	@:optional var onTouchCancelCapture:TouchEventHandler<T>;
	@:optional var onTouchEnd:TouchEventHandler<T>;
	@:optional var onTouchEndCapture:TouchEventHandler<T>;
	@:optional var onTouchMove:TouchEventHandler<T>;
	@:optional var onTouchMoveCapture:TouchEventHandler<T>;
	@:optional var onTouchStart:TouchEventHandler<T>;
	@:optional var onTouchStartCapture:TouchEventHandler<T>;

	// Pointer Events
	@:optional var onPointerDown:PointerEventHandler<T>;
	@:optional var onPointerDownCapture:PointerEventHandler<T>;
	@:optional var onPointerMove:PointerEventHandler<T>;
	@:optional var onPointerMoveCapture:PointerEventHandler<T>;
	@:optional var onPointerUp:PointerEventHandler<T>;
	@:optional var onPointerUpCapture:PointerEventHandler<T>;
	@:optional var onPointerCancel:PointerEventHandler<T>;
	@:optional var onPointerCancelCapture:PointerEventHandler<T>;
	@:optional var onPointerEnter:PointerEventHandler<T>;
	@:optional var onPointerEnterCapture:PointerEventHandler<T>;
	@:optional var onPointerLeave:PointerEventHandler<T>;
	@:optional var onPointerLeaveCapture:PointerEventHandler<T>;
	@:optional var onPointerOver:PointerEventHandler<T>;
	@:optional var onPointerOverCapture:PointerEventHandler<T>;
	@:optional var onPointerOut:PointerEventHandler<T>;
	@:optional var onPointerOutCapture:PointerEventHandler<T>;
	@:optional var onGotPointerCapture:PointerEventHandler<T>;
	@:optional var onGotPointerCaptureCapture:PointerEventHandler<T>;
	@:optional var onLostPointerCapture:PointerEventHandler<T>;
	@:optional var onLostPointerCaptureCapture:PointerEventHandler<T>;

	// UI Events
	@:optional var onScroll:UIEventHandler<T>;
	@:optional var onScrollCapture:UIEventHandler<T>;

	// Wheel Events
	@:optional var onWheel:WheelEventHandler<T>;
	@:optional var onWheelCapture:WheelEventHandler<T>;

	// Animation Events
	@:optional var onAnimationStart:AnimationEventHandler<T>;
	@:optional var onAnimationStartCapture:AnimationEventHandler<T>;
	@:optional var onAnimationEnd:AnimationEventHandler<T>;
	@:optional var onAnimationEndCapture:AnimationEventHandler<T>;
	@:optional var onAnimationIteration:AnimationEventHandler<T>;
	@:optional var onAnimationIterationCapture:AnimationEventHandler<T>;

	// Transition Events
	@:optional var onTransitionEnd:TransitionEventHandler<T>;
	@:optional var onTransitionEndCapture:TransitionEventHandler<T>;
}

abstract RechartsHandler<TElement:DOMElement, E:BaseSyntheticEvent<TElement>>(Function)
from Noop from Any->Void from Any->E->Void from Any->Event->Void {
	private function new(handler:Function) this = handler;

	@:from
	public static function fromHandler<
		TProps,
		TElement:DOMElement,
		E:BaseSyntheticEvent<TElement>
	>(handler:TProps->E->Void):RechartsHandler<TElement, E> {
		return new RechartsHandler(handler);
	}

	@:from
	public static function fromEventHandler<
		TProps,
		TElement:DOMElement
	>(handler:TProps->Event->Void):RechartsHandler<TElement, BaseSyntheticEvent<TElement>> {
		return new RechartsHandler(handler);
	}

	@:from
	public static function fromPropsHandler<
		TProps,
		TElement:DOMElement,
		E:BaseSyntheticEvent<TElement>
	>(
		handler:TProps->Void
	):RechartsHandler<TElement, E> {
		return new RechartsHandler(handler);
	}
}

abstract TypedRechartsHandler<TProps, TElement:DOMElement, E:BaseSyntheticEvent<TElement>>(Function)
from Noop from TProps->Void from TProps->Event->Void from TProps->E->Void {}

typedef ReactEventHandler<TElement:DOMElement> = RechartsHandler<TElement, BaseSyntheticEvent<TElement>>;
typedef ClipboardEventHandler<TElement:DOMElement> = RechartsHandler<TElement, ClipboardEvent<TElement>>;
typedef CompositionEventHandler<TElement:DOMElement> = RechartsHandler<TElement, CompositionEvent<TElement>>;
typedef DragEventHandler<TElement:DOMElement> = RechartsHandler<TElement, DragEvent<TElement>>;
typedef FocusEventHandler<TElement:DOMElement> = RechartsHandler<TElement, FocusEvent<TElement>>;
typedef FormEventHandler<TElement:DOMElement> = RechartsHandler<TElement, FormEvent<TElement>>;
typedef ChangeEventHandler<TElement:DOMElement> = RechartsHandler<TElement, ChangeEvent<TElement>>;
typedef InputEventHandler<TElement:DOMElement> = RechartsHandler<TElement, InputEvent<TElement>>;
typedef KeyboardEventHandler<TElement:DOMElement> = RechartsHandler<TElement, KeyboardEvent<TElement>>;
typedef MouseEventHandler<TElement:DOMElement> = RechartsHandler<TElement, MouseEvent<TElement>>;
typedef TouchEventHandler<TElement:DOMElement> = RechartsHandler<TElement, TouchEvent<TElement>>;
typedef PointerEventHandler<TElement:DOMElement> = RechartsHandler<TElement, PointerEvent<TElement>>;
typedef UIEventHandler<TElement:DOMElement> = RechartsHandler<TElement, UIEvent<TElement>>;
typedef WheelEventHandler<TElement:DOMElement> = RechartsHandler<TElement, WheelEvent<TElement>>;
typedef AnimationEventHandler<TElement:DOMElement> = RechartsHandler<TElement, AnimationEvent<TElement>>;
typedef TransitionEventHandler<TElement:DOMElement> = RechartsHandler<TElement, TransitionEvent<TElement>>;

