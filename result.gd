class_name Result
extends Resource

var value
var error
var is_error

<<<<<<< Updated upstream
=======

>>>>>>> Stashed changes
func is_ok() -> bool:
	return !is_error


func is_err() -> bool:
	return is_error


func ok() -> Maybe:
	if is_ok():
		return Maybe.Some(value)
	return Maybe.None()


func err() -> Maybe:
	if is_err():
		return Maybe.Some(error)
	return Maybe.None()

<<<<<<< Updated upstream

func Ok(new_value) -> Result:
	value = new_value
	error = null
	is_error = false	
	return self


func Err(msg) -> Result:
	value = null
	error = msg
	is_error = true
=======
func Ok(new_value) -> Result:
	self.value = new_value
	self.error = null
	self.is_error = false
	return self

func Err(msg) -> Result:
	self.value = null
	self.error = msg
	self.is_error = true
>>>>>>> Stashed changes
	return self
