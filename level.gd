#this is the script to implement streaming

extends WorldEnvironment


const top_room = "res://top_room.tscn"
const bottom_room = "res://bottom_room.tscn"


var player

# initialise
func _ready():
	#get the position of the player
	#player =  get_tree().root.get_node("level/player")
	#load_tscn("top_room")
	#load_tscn("bottom_room")
	pass
#code for the streaming alorithim
func _process(delta):
	#based on the position of the player load and unload 
	#different chunk of the level
	pass
#load tscn file(level chunk)
func load_tscn(name):
	
	#load the ralevent chunk based on its name
	var tscn
	if name == "top_room":
		tscn = preload(top_room)
	elif name =="bottom_room":
		tscn = preload(bottom_room)
	else:
		tscn == null
	#check whether the same node exist or not
	var node = get_node(name)
	#add the chunk to the scene	
	if tscn != null and node == null:
		var obj = tscn.instance()
		obj.name = name
		add_child(obj)

#unload tscn file(level chunk)
func unload_tscn(name):
	var node = get_node(name)
	if node != null:
		node.queue_free()
	
