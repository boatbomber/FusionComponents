local Fusion = require(script.Parent.Fusion)
local State = Fusion.State

local theme = {
	["AttributeCog"] = State(Color3.fromRGB(170, 170, 170)),
	["Border"] = State(Color3.fromRGB(34, 34, 34)),
	["BrightText"] = State(Color3.fromRGB(229, 229, 229)),
	["Button"] = State(Color3.fromRGB(60, 60, 60)),
	["ButtonBorder"] = State(Color3.fromRGB(53, 53, 53)),
	["ButtonText"] = State(Color3.fromRGB(204, 204, 204)),
	["CategoryItem"] = State(Color3.fromRGB(53, 53, 53)),
	["ChatIncomingBgColor"] = State(Color3.fromRGB(234, 234, 234)),
	["ChatIncomingTextColor"] = State(Color3.fromRGB(57, 59, 61)),
	["ChatModeratedMessageColor"] = State(Color3.fromRGB(255, 68, 68)),
	["ChatOutgoingBgColor"] = State(Color3.fromRGB(66, 66, 66)),
	["ChatOutgoingTextColor"] = State(Color3.fromRGB(204, 204, 204)),
	["CheckedFieldBackground"] = State(Color3.fromRGB(37, 37, 37)),
	["CheckedFieldBorder"] = State(Color3.fromRGB(26, 26, 26)),
	["CheckedFieldIndicator"] = State(Color3.fromRGB(53, 181, 255)),
	["ColorPickerFrame"] = State(Color3.fromRGB(46, 46, 46)),
	["CurrentMarker"] = State(Color3.fromRGB(66, 66, 66)),
	["Dark"] = State(Color3.fromRGB(34, 34, 34)),
	["DebuggerCurrentLine"] = State(Color3.fromRGB(42, 60, 76)),
	["DebuggerErrorLine"] = State(Color3.fromRGB(76, 42, 42)),
	["DialogButton"] = State(Color3.fromRGB(60, 60, 60)),
	["DialogButtonBorder"] = State(Color3.fromRGB(60, 60, 60)),
	["DialogButtonText"] = State(Color3.fromRGB(204, 204, 204)),
	["DialogMainButton"] = State(Color3.fromRGB(0, 162, 255)),
	["DialogMainButtonText"] = State(Color3.fromRGB(255, 255, 255)),
	["DiffFilePathBackground"] = State(Color3.fromRGB(53, 53, 53)),
	["DiffFilePathBorder"] = State(Color3.fromRGB(34, 34, 34)),
	["DiffFilePathText"] = State(Color3.fromRGB(170, 170, 170)),
	["DiffLineNum"] = State(Color3.fromRGB(170, 170, 170)),
	["DiffLineNumAdditionBackground"] = State(Color3.fromRGB(55, 77, 49)),
	["DiffLineNumDeletionBackground"] = State(Color3.fromRGB(91, 34, 27)),
	["DiffLineNumNoChangeBackground"] = State(Color3.fromRGB(27, 32, 35)),
	["DiffLineNumSeparatorBackground"] = State(Color3.fromRGB(60, 83, 123)),
	["DiffTextAddition"] = State(Color3.fromRGB(204, 204, 204)),
	["DiffTextAdditionBackground"] = State(Color3.fromRGB(48, 63, 44)),
	["DiffTextDeletion"] = State(Color3.fromRGB(204, 204, 204)),
	["DiffTextDeletionBackground"] = State(Color3.fromRGB(72, 30, 24)),
	["DiffTextHunkInfo"] = State(Color3.fromRGB(170, 170, 170)),
	["DiffTextNoChange"] = State(Color3.fromRGB(204, 204, 204)),
	["DiffTextNoChangeBackground"] = State(Color3.fromRGB(27, 31, 32)),
	["DiffTextSeparatorBackground"] = State(Color3.fromRGB(49, 57, 73)),
	["DimmedText"] = State(Color3.fromRGB(102, 102, 102)),
	["Dropdown"] = State(Color3.fromRGB(46, 46, 46)),
	["EmulatorBar"] = State(Color3.fromRGB(46, 46, 46)),
	["EmulatorDropDown"] = State(Color3.fromRGB(46, 46, 46)),
	["ErrorText"] = State(Color3.fromRGB(255, 68, 68)),
	["FilterButtonAccent"] = State(Color3.fromRGB(53, 53, 53)),
	["FilterButtonBorder"] = State(Color3.fromRGB(46, 46, 46)),
	["FilterButtonBorderAlt"] = State(Color3.fromRGB(53, 53, 53)),
	["FilterButtonChecked"] = State(Color3.fromRGB(28, 28, 28)),
	["FilterButtonDefault"] = State(Color3.fromRGB(46, 46, 46)),
	["FilterButtonHover"] = State(Color3.fromRGB(37, 37, 37)),
	["GameSettingsTableItem"] = State(Color3.fromRGB(42, 42, 42)),
	["GameSettingsTooltip"] = State(Color3.fromRGB(53, 53, 53)),
	["HeaderSection"] = State(Color3.fromRGB(53, 53, 53)),
	["InfoBarWarningBackground"] = State(Color3.fromRGB(253, 251, 172)),
	["InfoBarWarningText"] = State(Color3.fromRGB(0, 0, 0)),
	["InfoText"] = State(Color3.fromRGB(128, 215, 255)),
	["InputFieldBackground"] = State(Color3.fromRGB(37, 37, 37)),
	["InputFieldBorder"] = State(Color3.fromRGB(26, 26, 26)),
	["Item"] = State(Color3.fromRGB(46, 46, 46)),
	["Light"] = State(Color3.fromRGB(64, 64, 64)),
	["LinkText"] = State(Color3.fromRGB(53, 181, 255)),
	["MainBackground"] = State(Color3.fromRGB(46, 46, 46)),
	["MainButton"] = State(Color3.fromRGB(0, 162, 255)),
	["MainText"] = State(Color3.fromRGB(204, 204, 204)),
	["Mid"] = State(Color3.fromRGB(34, 34, 34)),
	["Midlight"] = State(Color3.fromRGB(34, 34, 34)),
	["Notification"] = State(Color3.fromRGB(46, 46, 46)),
	["RibbonButton"] = State(Color3.fromRGB(46, 46, 46)),
	["RibbonTab"] = State(Color3.fromRGB(53, 53, 53)),
	["RibbonTabTopBar"] = State(Color3.fromRGB(53, 181, 255)),
	["ScriptBackground"] = State(Color3.fromRGB(37, 37, 37)),
	["ScriptBool"] = State(Color3.fromRGB(197, 151, 243)),
	["ScriptBracket"] = State(Color3.fromRGB(204, 202, 187)),
	["ScriptBuiltInFunction"] = State(Color3.fromRGB(91, 173, 235)),
	["ScriptComment"] = State(Color3.fromRGB(128, 128, 128)),
	["ScriptEditorCurrentLine"] = State(Color3.fromRGB(45, 50, 65)),
	["ScriptError"] = State(Color3.fromRGB(255, 0, 0)),
	["ScriptFindSelectionBackground"] = State(Color3.fromRGB(141, 118, 0)),
	["ScriptFunction"] = State(Color3.fromRGB(207, 159, 255)),
	["ScriptFunctionName"] = State(Color3.fromRGB(253, 253, 255)),
	["ScriptKeyword"] = State(Color3.fromRGB(197, 151, 243)),
	["ScriptLocal"] = State(Color3.fromRGB(197, 151, 243)),
	["ScriptLuauKeyword"] = State(Color3.fromRGB(197, 151, 243)),
	["ScriptMatchingWordSelectionBackground"] = State(Color3.fromRGB(85, 85, 85)),
	["ScriptMethod"] = State(Color3.fromRGB(231, 231, 231)),
	["ScriptNil"] = State(Color3.fromRGB(197, 151, 243)),
	["ScriptNumber"] = State(Color3.fromRGB(217, 119, 119)),
	["ScriptOperator"] = State(Color3.fromRGB(204, 192, 154)),
	["ScriptProperty"] = State(Color3.fromRGB(231, 231, 231)),
	["ScriptRuler"] = State(Color3.fromRGB(102, 102, 102)),
	["ScriptSelectionBackground"] = State(Color3.fromRGB(34, 75, 116)),
	["ScriptSelectionText"] = State(Color3.fromRGB(255, 255, 255)),
	["ScriptSelf"] = State(Color3.fromRGB(197, 151, 243)),
	["ScriptSideWidget"] = State(Color3.fromRGB(37, 37, 37)),
	["ScriptString"] = State(Color3.fromRGB(180, 241, 157)),
	["ScriptText"] = State(Color3.fromRGB(220, 220, 220)),
	["ScriptTodo"] = State(Color3.fromRGB(107, 120, 128)),
	["ScriptWarning"] = State(Color3.fromRGB(255, 115, 21)),
	["ScriptWhitespace"] = State(Color3.fromRGB(49, 49, 50)),
	["ScrollBar"] = State(Color3.fromRGB(56, 56, 56)),
	["ScrollBarBackground"] = State(Color3.fromRGB(41, 41, 41)),
	["SensitiveText"] = State(Color3.fromRGB(209, 93, 255)),
	["Separator"] = State(Color3.fromRGB(34, 34, 34)),
	["Shadow"] = State(Color3.fromRGB(64, 64, 64)),
	["StatusBar"] = State(Color3.fromRGB(46, 46, 46)),
	["SubText"] = State(Color3.fromRGB(170, 170, 170)),
	["Tab"] = State(Color3.fromRGB(53, 53, 53)),
	["TabBar"] = State(Color3.fromRGB(46, 46, 46)),
	["TableItem"] = State(Color3.fromRGB(42, 42, 42)),
	["Titlebar"] = State(Color3.fromRGB(53, 53, 53)),
	["TitlebarText"] = State(Color3.fromRGB(170, 170, 170)),
	["Tooltip"] = State(Color3.fromRGB(53, 53, 53)),
	["ViewPortBackground"] = State(Color3.fromRGB(37, 37, 37)),
	["WarningText"] = State(Color3.fromRGB(255, 142, 60)),
}

-- If this is running in a plugin, automatically make the theme match Studio's theme values
local isStudio, studioTheme = pcall(function()
	return settings().Studio.Theme
end)
if isStudio then
	local function applyStudioTheme()
		for _,enumItem in pairs(Enum.StudioStyleGuideColor:GetEnumItems()) do
			local c = studioTheme:GetColor(enumItem)
			if theme[enumItem.Name] then
				theme[enumItem.Name]:set(c)
			else
				theme[enumItem.Name] = State(c)
			end
		end
	end
	applyStudioTheme()
	settings().Studio.ThemeChanged:Connect(function()
		studioTheme = settings().Studio.Theme
		applyStudioTheme()
	end)
end

return theme
