# 🤔 what even is null?
class_name Maybe
extends Node

var value
var has_value: bool = false

func _init(new_value = null):
	self.value = new_value
	self.has_value = new_value != null

func unwrap():
	assert(self.has_value, "Tried to unwrap a null value!")
	return self.value

func is_some():
	return self.has_value

func is_none():
	return !self.has_value

func unwrap_or(default_value):
	if self.has_value:
		return self.value
	else:
		return default_value

func unwrap_or_else(fn):
	if self.has_value:
		return self.value
	else:
		return fn.call()

func Some(new_value):
	return get_script().new(new_value)

func None():
	return get_script().new()
