@tool
extends EditorPlugin

var lang_instance: MyCustomLanguage
var loader_instance: MyScriptLoader
var saver_instance: MyScriptSaver

func _enter_tree() -> void:
	lang_instance = MyCustomLanguage.new()
	loader_instance = MyScriptLoader.new()
	saver_instance = MyScriptSaver.new()
	
	Engine.register_script_language(lang_instance)
	ResourceLoader.add_resource_format_loader(loader_instance)
	ResourceSaver.add_resource_format_saver(saver_instance)

func _exit_tree() -> void:
	Engine.unregister_script_language(lang_instance)
	ResourceLoader.remove_resource_format_loader(loader_instance)
	ResourceSaver.remove_resource_format_saver(saver_instance)
