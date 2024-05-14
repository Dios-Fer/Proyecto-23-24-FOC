extends Control

var COLLECTION_ID = "perfil_usuario"

# Called when the node enters the scene tree for the first time.
func _ready():
	loadData()
	$ParallaxBackground.speed = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_save_pressed():
	saveData()

func _on_edit_pressed():
	pass #TODO 1 

func _on_exit_pressed():
	get_tree().change_scene_to_file("res://Scenes/Menu.tscn")

#Guardar los cambios
func saveData():
	var auth = Firebase.Auth.auth
	if auth.localid:
		var collection: FirestoreCollection = Firebase.Firestore.collection(COLLECTION_ID)
		var user_name = $VBoxContainer/UserNameEdit.text
		var data: Dictionary = {
			"user_name": user_name
		}
		var task: FirestoreTask = collection.update(auth.localid, data)

#Cargar los datos que mostramos
func loadData():
	pass # Replace with function body.
	var auth = Firebase.Auth.auth
	
	if auth.localid:
		var collection: FirestoreCollection = Firebase.Firestore.collection(COLLECTION_ID)
		var task: FirestoreTask = collection.get_doc(auth.localid)
		var finished_task: FirestoreTask = await task.task_finished
		var document = finished_task.document
		if document && document.doc_fields:
			if document.doc_fields.user_name:
				$VBoxContainer/UserNameEdit.text = document.doc_fields.user_name
		else:
			print(finished_task.error)


