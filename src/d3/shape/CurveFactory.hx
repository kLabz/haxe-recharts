package d3.shape;

import haxe.extern.EitherType;
import js.html.CanvasRenderingContext2D;

typedef CurveFactory = EitherType<CanvasRenderingContext2D, Path>->CurveGenerator;
