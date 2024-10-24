# 🤔 what even is null?
class_name Maybe
extends Resource

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

func grab_node(base: Node, path: NodePath):
	var node = base.get_node_or_null(path)
	if not node:
		self.has_value = false
	else:
		self.has_value = true
		self.value = node
	return self

func expr():
	if self.has_value:
		return {"Some": self.value}
	else:
		return "None"
