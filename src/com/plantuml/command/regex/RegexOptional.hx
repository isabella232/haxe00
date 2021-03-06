package com.plantuml.command.regex;

class RegexOptional extends AbstractRegex implements IRegex {
	private final orig:IRegex;

	public function new(orig:IRegex) {
		this.orig = orig;
		this.pattern = "(?:" + orig.getPattern() + ")?";
	}

	public function getSize():Int {
		return orig.getSize();
	}

	public function eat(array:Array<String>, map:Map<String, String>) {
		final s = array[0];
		if (s == null)
			array.pop();
		orig.eat(array, map);
	}
}
