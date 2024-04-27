public Action ConfigEvent_PrintToChat(EventMap args, ConfigEventType_t type)
{
	int calling_player_idx;
	VSH2Player calling_player;
	if (!args.GetTarget(calling_player_idx, calling_player))
		return Plugin_Continue;

	int text_size = args.GetSize("text");
	if (!text_size)
		return Plugin_Continue;

	char[] text = new char[text_size];
	args.Get("text", text, text_size);
	CPrintToChat(calling_player_idx, "{deeppink}[武器提示]{default}: %s", text);
	return Plugin_Continue;
}