package com.plantuml.ugraphic;

import com.plantuml.ugraphic.color.ColorMapper;
import com.plantuml.svg.SvgGraphics;

interface UDriver {
	public function draw(shape:UShape, x:Float, y:Float, mapper:ColorMapper, param:UParam, object:SvgGraphics):Void;
}
