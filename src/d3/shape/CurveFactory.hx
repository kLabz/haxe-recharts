package d3.shape;

import js.html.CanvasRenderingContext2D;
import react.types.EitherType;

typedef CurveFactory = EitherType<CanvasRenderingContext2D, Path>->CurveGenerator;
