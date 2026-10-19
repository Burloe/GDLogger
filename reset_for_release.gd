@tool
extends EditorScript

## This is an EditorScript used to revert the plugin Dock and Settings back to default for release

func _run() -> void:
	var dock := _find_dock(EditorInterface.get_base_control())
	if dock == null:
		printerr("GDLogger reset: GDLDock not found. Is the plugin enabled?")
		return
	dock.reset_to_default()
	dock._init_visibility()
	ResourceSaver.save(dock.data, dock.DATA_PATH)
	print("GDLogger reset: Dock successfully restored to defaults and reverted to proper visibility.")


func _find_dock(node: Node) -> GDLDock:
	if node is GDLDock:
		return node
	for child in node.get_children():
		var found := _find_dock(child)
		if found:
			return found
	return null