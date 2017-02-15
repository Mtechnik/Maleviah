local ZGV = ZygorGuidesViewer
if not ZGV then return end

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local FONTSTATUS="Fonts\\ARIALN.TTF"
local L = ZGV.L
local CHAIN = ZGV.ChainCall
local cachedGetItemInfo = ZGV.cachedGetItemInfo

local DROPDOWN_STYLE=2

if not ZGV.Mailtools then ZGV.Mailtools = {} end
local Mailtools = ZGV.Mailtools

local ui = ZGV.UI
local SkinData = ui.SkinData

local MAILTOOLS_FRAME_SIZE={425,424}
local MAILTOOLS_FRAME_ROW_WIDTH=235

local HEADER_HEIGHT = 30		-- exported to GoldHelp.lua
local FOOTER_HEIGHT = 25
local ICON_SIZE = 17
local SCROLL_WIDTH=15		-- TODO This does not actual change the width, copied value from ScrollBar.lua. Need to change up scrollbar for it to actually change the width.
local TOGGLE_BUT_SIZE=10	-- TODO This does not actual change the size, 10 is the default size
local ROWCOUNT=14
local ROW_HEADER = 20
local ROW_FOOTER = 30
local COLHEADER_FONTSIZE = 13
local COLFOOTER_FONTSIZE = 12
local ZA_COL_PADDING= 10
local ROW_FONTSIZE=12
local ROW_ICONSIZE=20

local COLLECTOR_COLUMNSIZES = { 20, 200, 130, 40 }
local SENDER_COLUMNSIZES = { 20, 335, 40 }
local ZA_FRAME_ROW_HEIGHT=(MAILTOOLS_FRAME_SIZE[2] - HEADER_HEIGHT - FOOTER_HEIGHT - ROW_HEADER - ROW_FOOTER) / ROWCOUNT	

function Mailtools:CreateMainFrame()
	self.MainFrame = CHAIN(ui:Create("Frame",UIParent,"ZygorMailtools"))
		:SetSize(unpack(MAILTOOLS_FRAME_SIZE))
		:SetPoint("TOPLEFT",MailFrame,"TOPRIGHT")
		:SetFrameStrata("MEDIUM")
		:SetFrameLevel(MailFrame:GetFrameLevel()+1)
		:SetToplevel(enable)
		:SetScript("OnMouseWheel", function(self,delta)
			ZGV.Mailtools.MainFrame.offset=ZGV.Mailtools.MainFrame.offset-delta
			ZGV.Mailtools.needToUpdate=true
			ZGV.Mailtools.MainFrame.hideTooltip=true

		end)
		.__END


	local MF = self.MainFrame 
	--[[
	MF:ClearAllPoints()
	MF:SetPoint("TOPLEFT",MailFrame,"TOPRIGHT", 0, -13)
	MF:SetPoint("BOTTOMLEFT",MailFrame,"BOTTOMRIGHT",0,11)
	--]]

	-- Header
	MF.Tabs = {}
	MF.MenuCollectorButton = CHAIN(CreateFrame("Button", "ZM_Menu_Collector", MF)) 
		:SetPoint("TOPLEFT",MF,"TOPLEFT",5,5) 
		:SetSize(80,40)
		:SetScript("OnClick",function(tab) Mailtools:SetCurrentTab("Collector") MailFrameTab_OnClick(self, 1) end)
	.__END

	MF.MenuCollectorButton.label = CHAIN(MF.MenuCollectorButton:CreateFontString())
		:SetFont(FONT,14) :SetTextColor(unpack(SkinData("TabDefaultColor")))
		:SetText("Collector")
	 .__END

	MF.MenuCollectorButton:SetFontString(MF.MenuCollectorButton.label)
	MF.Tabs[1] = MF.MenuCollectorButton

	MF.MenuSenderButton = CHAIN(CreateFrame("Button", "ZM_Menu_Sender", MF))
		:SetPoint("LEFT",MF.MenuCollectorButton,"RIGHT",5,0)
		:SetSize(120,40)
		:SetScript("OnClick",function(tab) Mailtools:SetCurrentTab("Sender") MailFrameTab_OnClick(self, 2) end)
	.__END

	MF.MenuSenderButton.label = CHAIN(MF.MenuSenderButton:CreateFontString())
		:SetFont(FONT,14) :SetTextColor(unpack(SkinData("TabDefaultColor")))
		:SetText("Sender")
	 .__END
	MF.MenuSenderButton:SetFontString(MF.MenuSenderButton.label)
	MF.Tabs[2] = MF.MenuSenderButton


	-- Footer
	MF.FooterSettingsButton = CHAIN(CreateFrame("Button",nil,MF))
		:SetPoint("BOTTOMRIGHT",-5,5)
		:SetSize(15,15)
		:SetScript("OnClick",function() ZGV:OpenOptions() end)
	.__END
	ZGV.AssignButtonTexture(MF.FooterSettingsButton,(SkinData("TitleButtons")),5,32)

	MF.FooterStatus = CHAIN(MF:CreateFontString())
		:SetPoint("BOTTOMLEFT",5,5)
		:SetFont(FONTBOLD,12)
		:SetText("GOLD:")
	.__END

	MF.FooterStatusDetails = CHAIN(MF:CreateFontString())
		:SetPoint("LEFT",MF.FooterStatus ,"RIGHT",5,0)
		:SetFont(FONT,12)
		:SetText("no time")
	.__END


	MF.scrollbar = CHAIN(ui:Create("ScrollItems",self.MainFrame,"ZMScroll"))
		:SetPoint("TOPLEFT",self.MainFrame,"TOPRIGHT",-SCROLL_WIDTH-1,-HEADER_HEIGHT - ROW_HEADER)
		:SetPoint("BOTTOMRIGHT",self.MainFrame,"BOTTOMRIGHT",-SCROLL_WIDTH-1,FOOTER_HEIGHT + ROW_FOOTER)
		:MaxValueAtOnce(ROWCOUNT)
		:SetScript("OnVerticalScroll",function(me,offset)
			self.MainFrame.offset=math.round(offset)
			self.needToUpdate=true
		end)
		:SetHideWhenUnless(1)
	.__END

	self.toggleVisibility = CHAIN(ui:Create("Button",UIParent, "ZM_Toggle"))
		:SetSize(25,20)
		:SetPoint("RIGHT",self.MainFrame,"RIGHT",25,5)
		:SetFont(FONT,12)
		:SetText("Z")
		:SetFrameStrata("MEDIUM")
		:SetFrameLevel(self.MainFrame:GetFrameLevel()+1)
		:SetScript("OnClick",function() Mailtools:ToggleVisibility() end)
		:Show()
	.__END

	MF.Collector_Frame = self:MakeCollectorTable()
	MF.Sender_Frame = self:MakeSenderTable()
end

function Mailtools:ToggleVisibility()
	ZGV.db.profile.IsWidgetCollapsed = ZGV.db.profile.IsWidgetCollapsed or {}
	if ZGV.db.profile.IsWidgetCollapsed["Mailtools"] == true then
		ZGV.db.profile.IsWidgetCollapsed["Mailtools"] = false
		self.MainFrame:Show()
		self.toggleVisibility:SetPoint("RIGHT",self.MainFrame,"RIGHT",25,5)
		Mailtools:Update()
	else 
		ZGV.db.profile.IsWidgetCollapsed["Mailtools"] = true
		self.MainFrame:Hide()
		self.toggleVisibility:SetPoint("RIGHT",MailFrame,"RIGHT",25,5)
	end
end

function Mailtools:MakeCollectorTable()	
	local frame = CHAIN(ui:Create("SecFrame",self.MainFrame,"ZM_Collector_Frame"))
		:SetPoint("TOPLEFT",1,-HEADER_HEIGHT)
		:SetPoint("BOTTOMRIGHT",-1,FOOTER_HEIGHT)
		:SetFrameLevel(self.MainFrame:GetFrameLevel()+1)
		:CanDrag("parent")
	.__END

	-- Header
	frame.col_icon = CHAIN(frame:CreateFontString())
		:SetPoint("TOPLEFT",frame,"TOPLEFT",0,0)
		:SetSize(COLLECTOR_COLUMNSIZES[1],ROW_HEADER)
		:SetJustifyV("CENTER")
		:SetJustifyH("LEFT")
		:SetFont(FONT,COLHEADER_FONTSIZE)
		:SetText("")
	.__END

	frame.col_name = CHAIN(frame:CreateFontString())
		:SetPoint("LEFT",frame.col_icon,"RIGHT",ZA_COL_PADDING,0) 
		:SetSize(COLLECTOR_COLUMNSIZES[2],ROW_HEADER)
		:SetJustifyV("CENTER")
		:SetJustifyH("LEFT")
		:SetFont(FONT,COLHEADER_FONTSIZE)
		:SetText("Items")
	.__END

	frame.col_source = CHAIN(frame:CreateFontString())
		:SetSize(COLLECTOR_COLUMNSIZES[3],ROW_HEADER)
		:SetPoint("LEFT",frame.col_name,"RIGHT",ZA_COL_PADDING,0) 
		:SetJustifyV("CENTER")
		:SetJustifyH("RIGHT")
		:SetFont(FONT,COLHEADER_FONTSIZE)
		:SetText("Source")
	.__END

	frame.col_toggle = CHAIN(ui:Create("ToggleButton",frame))
		:SetPoint("LEFT",frame.col_source,"RIGHT",ZA_COL_PADDING+5,0) 
		:SetFont(FONT,COLHEADER_FONTSIZE)
		:SetText("All")
	.__END
	
	frame.col_toggle:RegisterToggleCallback(function()
		Mailtools:ToggleAllInbox(frame.col_toggle:IsChecked())
	end)

	-- Middle
	frame.rows={}
	for n=1,ROWCOUNT do
		frame.rows[n] = CHAIN(ui:Create("Button",frame,"ZM_INB_ROW"..n))
			-- Tricky tricky setting width. Set the height then set right point so that if the scrollbar is hidden that it expands the whole frame. If scrollbar is shown, then only expands to the scrollbar.
			:SetSize(MAILTOOLS_FRAME_ROW_WIDTH,ZA_FRAME_ROW_HEIGHT)
			:SetPoint("RIGHT",self.MainFrame.scrollbar.barframe,"LEFT")
			:SetFrameStrata("MEDIUM")
			:SetFrameLevel(self.MainFrame:GetFrameLevel()+2)
			:SetNormalBackdropColor(0,0,0,0)
			:SetBackdropBorderColor(0,0,0,0)
			:CanDrag("parent")
		.__END

		--frame.rows[n]:SetScript("OnClick",function()
		--	Mailtools:InventoryClick(frame.rows[n])
		--end)

		if n==1 then
			frame.rows[n]:SetPoint("TOPLEFT",frame,"TOPLEFT",0,-ROW_HEADER)
		else
			frame.rows[n]:SetPoint("TOPLEFT",frame.rows[n-1],"BOTTOMLEFT",0,0)
		end

		local row = frame.rows[n]

		row.icon = CHAIN(row:CreateTexture())
			:SetPoint("CENTER",row,"LEFT",frame.col_icon:GetWidth()/2+3,0) 
			:SetSize(ROW_ICONSIZE,ROW_ICONSIZE)
		.__END

		row.iconOverlay = CHAIN(ui:Create("Button",row,"ZM_INV_ROW"..n.."OVERLAY"))
			:SetPoint("LEFT",row,"LEFT",0,0) 
			:SetSize(30,20)
			:SetFrameLevel(self.MainFrame:GetFrameLevel()+3)
			:SetBackdropColor(0,0,0,0)
			:SetBackdropBorderColor(1,1,0,0)
			:SetScript("OnEnter",function()
				if row.item.id < 1000000000 and row.item.gold == 0 then
					GameTooltip:SetOwner(row.iconOverlay ,"ANCHOR_RIGHT")
					GameTooltip:SetItemByID(row.item.id)
					GameTooltip:Show()
				end
			end)
			:SetScript("OnLeave",function()
				GameTooltip:Hide()
			end)
		.__END

		row.name = CHAIN(row:CreateFontString())
			:SetPoint("LEFT",row,"LEFT",frame.col_icon:GetWidth() + ZA_COL_PADDING,0) 
			:SetSize(COLLECTOR_COLUMNSIZES[2],ROW_FONTSIZE)
			:SetJustifyH("LEFT")
			:SetFont(FONT,ROW_FONTSIZE)
			:SetText("name")
		.__END

		row.price = CHAIN(row:CreateFontString())
			:SetPoint("LEFT",row.name,"RIGHT",ZA_COL_PADDING,0)
			:SetSize(COLLECTOR_COLUMNSIZES[3],ROW_FONTSIZE)
			:SetJustifyH("RIGHT")
			:SetFont(FONT,ROW_FONTSIZE)
			:SetText("price")
		.__END

		row.toggle = CHAIN(ui:Create("ToggleButton",row,"MT_Collector_"..n.."_Toggle"))
			:SetPoint("LEFT",row.price,"RIGHT",ZA_COL_PADDING+5,0)
			:SetText("") -- no text
		.__END

		row.toggle:RegisterToggleCallback(function()
			row.item.selected = row.toggle:IsChecked()
			Mailtools.needToUpdate = true
			--Mailtools:AddItemToCollect(row.item,row.toggle:IsChecked())
		end)


		row.hilite = CHAIN(row:CreateTexture(row:GetName().."Back","HIGHLIGHT")) :SetAllPoints() :SetTexture(1,1,0,0) .__END
		row.back = CHAIN(row:CreateTexture(row:GetName().."Back","ARTWORK")) :SetAllPoints() :SetTexture(1,1,1,0) .__END


	end
	
	frame.footer = CHAIN(CreateFrame("FRAME",nil,frame))
		:SetPoint("BOTTOMLEFT",frame,"BOTTOMLEFT",0,0)
		:SetPoint("TOPRIGHT",frame,"BOTTOMRIGHT",0,ROW_FOOTER)
	.__END

	--Footer
	frame.CollectButton = CHAIN(ui:Create("Button",frame))
		:SetSize(105,20)
		:SetPoint("BOTTOMRIGHT",frame.footer,"BOTTOMRIGHT", -5, 5)
		:SetFont(FONT,12)
		:SetText("Collect")
		:SetScript("OnClick", function() if not self.soft_disabled then Mailtools:StartCollecting() end end)
		:SetScript("OnEnter",function(self) 
			CHAIN(GameTooltip):SetOwner(self, "ANCHOR_BOTTOM") 
			:SetText(type(self.tooltip)=="function" and self:tooltip() or tostring(self.tooltip)) 
			:Show() 
			end)
		:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
	.__END

	frame.CollectAllToggle = CHAIN(ui:Create("ToggleButton",frame))
		:SetPoint("RIGHT",frame.CollectButton,"LEFT",-100,0) 
		:SetFont(FONT,COLHEADER_FONTSIZE)
		:SetText("Auto-collect")
		:SetToggle(ZGV.db.profile.collectall)
		:SetScript("OnEnter",function(self) 
			CHAIN(GameTooltip):SetOwner(self, "ANCHOR_BOTTOM") 
			:SetText(type(self.tooltip)=="function" and self:tooltip() or tostring(self.tooltip)) 
			:Show() 
			end)
		:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
	.__END
	
	frame.CollectAllToggle:RegisterToggleCallback(function()
		ZGV.db.profile.collectall = frame.CollectAllToggle:IsChecked()
	end)


	--frame:Hide()
	return frame
end

function Mailtools:MakeSenderTable()	
	local frame = CHAIN(ui:Create("SecFrame",self.MainFrame,"ZM_Sender_Frame"))
		:SetPoint("TOPLEFT",1,-HEADER_HEIGHT)
		:SetPoint("BOTTOMRIGHT",-1,FOOTER_HEIGHT)
		:CanDrag("parent")
		:SetFrameLevel(self.MainFrame:GetFrameLevel()+1)
	.__END

	-- Header
	frame.col_icon = CHAIN(frame:CreateFontString())
		:SetPoint("TOPLEFT",frame,"TOPLEFT",0,0)
		:SetSize(SENDER_COLUMNSIZES[1],ROW_HEADER)
		:SetJustifyV("CENTER")
		:SetJustifyH("LEFT")
		:SetFont(FONT,COLHEADER_FONTSIZE)
		:SetText("")
	.__END

	frame.col_name = CHAIN(frame:CreateFontString())
		:SetPoint("LEFT",frame.col_icon,"RIGHT",ZA_COL_PADDING,0) 
		:SetSize(SENDER_COLUMNSIZES[2],ROW_HEADER)
		:SetJustifyV("CENTER")
		:SetJustifyH("LEFT")
		:SetFont(FONT,COLHEADER_FONTSIZE)
		:SetText("Name")
	.__END

	frame.col_toggle = CHAIN(ui:Create("ToggleButton",frame))
		:SetPoint("LEFT",frame.col_name,"RIGHT",ZA_COL_PADDING+10,0) 
		:SetFont(FONT,COLHEADER_FONTSIZE)
		:SetText("All")
	.__END
	
	frame.col_toggle:RegisterToggleCallback(function()
		Mailtools:ToggleAllInventory(frame.col_toggle:IsChecked())
	end)

	-- Middle
	frame.rows={}
	for n=1,ROWCOUNT do
		frame.rows[n] = CHAIN(ui:Create("Button",frame,"ZM_INV_ROW"..n))
			-- Tricky tricky setting width. Set the height then set right point so that if the scrollbar is hidden that it expands the whole frame. If scrollbar is shown, then only expands to the scrollbar.
			:SetSize(MAILTOOLS_FRAME_ROW_WIDTH,ZA_FRAME_ROW_HEIGHT)
			--:SetPoint("RIGHT",self.MainFrame.scrollbar.barframe,"LEFT")
			:SetFrameStrata("MEDIUM")
			:SetFrameLevel(self.MainFrame:GetFrameLevel()+2)

			:SetNormalBackdropColor(0,0,0,0)
			:SetBackdropBorderColor(0,0,0,0)
			:SetBackdropColor(unpack(ui.SkinData("SecBackdropColor")))
			:SetBackdropBorderColor(0,0,0,0)

			:SetScript("OnEnter",function(self)
				if frame.rows[n].tooltip then
					CHAIN(GameTooltip):SetOwner(frame.rows[n], "ANCHOR_BOTTOM") 
					:SetText(tostring(frame.rows[n].tooltip)) 
					:Show() 
				end
			end)
			:SetScript("OnLeave",function()
				GameTooltip:Hide()
			end)
		
		.__END

		if n==1 then
			frame.rows[n]:SetPoint("TOPLEFT",frame,"TOPLEFT",0,-ROW_HEADER)
		else
			frame.rows[n]:SetPoint("TOPLEFT",frame.rows[n-1],"BOTTOMLEFT",0,0)
		end

		local row = frame.rows[n]

		row.icon = CHAIN(row:CreateTexture())
			:SetPoint("CENTER",row,"LEFT",frame.col_icon:GetWidth()/2+3,0) 
			:SetSize(ROW_ICONSIZE,ROW_ICONSIZE)
		.__END

		row.iconOverlay = CHAIN(ui:Create("Button",row,"ZM_INV_ROW"..n.."OVERLAY"))
			:SetPoint("LEFT",row,"LEFT",0,0) 
			:SetSize(30,20)
			:SetFrameLevel(self.MainFrame:GetFrameLevel()+3)
			:SetBackdropColor(0,0,0,0)
			:SetBackdropBorderColor(0,0,0,0)
			:SetScript("OnEnter",function()
				if row.item.id < 1000000000 then
					GameTooltip:SetOwner(row.iconOverlay ,"ANCHOR_RIGHT")
					GameTooltip:SetItemByID(row.item.id)
					GameTooltip:Show()
				end
			end)
			:SetScript("OnLeave",function()
				GameTooltip:Hide()
			end)
		.__END

		row.name = CHAIN(row:CreateFontString())
			:SetPoint("LEFT",row,"LEFT",frame.col_icon:GetWidth() + ZA_COL_PADDING,0) 
			:SetSize(SENDER_COLUMNSIZES[2],ROW_FONTSIZE)
			:SetJustifyH("LEFT")
			:SetFont(FONT,ROW_FONTSIZE)
			:SetText("name")
		.__END

		row.toggle = CHAIN(ui:Create("ToggleButton",row,"MT_Sender_"..n.."_Toggle"))
			:SetPoint("LEFT",row.name,"RIGHT",ZA_COL_PADDING+10,0)
			:SetText("") -- no text
		.__END

		row.toggle:RegisterToggleCallback(function()
			row.item.selected = row.toggle:IsChecked()
			Mailtools.needToUpdate = true
			--Mailtools:AddItemToCollect(row.item,row.toggle:IsChecked())
		end)


		row.hilite = CHAIN(row:CreateTexture(row:GetName().."Hilite","HIGHLIGHT")) :SetAllPoints() :SetTexture(1,1,0,0) .__END
		row.back = CHAIN(row:CreateTexture(row:GetName().."Back","ARTWORK")) :SetAllPoints() :SetTexture(1,1,1,0) .__END


	end
	
	frame.footer = CHAIN(CreateFrame("FRAME",nil,frame))
		:SetPoint("BOTTOMLEFT",frame,"BOTTOMLEFT",0,0)
		:SetPoint("TOPRIGHT",frame,"BOTTOMRIGHT",0,ROW_FOOTER)
	.__END

	--Footer

	frame.recipentLabel = CHAIN(frame:CreateFontString())
		:SetFont(FONTBOLD,13)
		:SetPoint("BOTTOMLEFT",5,9)
		:SetJustifyH("LEFT")
		:SetWidth(25)
		:SetText("To: ")
	.__END

	frame.recipent = CHAIN(ui:Create("EditBox",frame))
		:SetSize(100,15)
		:SetPoint("LEFT",frame.recipentLabel ,"RIGHT",5,-1.5)
		:SetScript("OnTextChanged",function(self, isUserInput)
			if isUserInput then
				Mailtools:FillSenderList(frame.recipent:GetText())
				frame.recipentSuggest:ShowList()
				frame.recipentSuggest:ShowAll()
				-- update dropdown
			end
		end)
		:SetText(ZGV.db.char.last_mail_target or "")
	.__END

	frame.recipentSuggest = CHAIN(ZGV.SuggestBox:New(frame,"senderlist"))
		:ClearAllPoints()
		:SetPoint("TOPLEFT",frame.recipent , "BOTTOMLEFT", 0, -5)
		:SetPoint("TOPRIGHT",frame.recipent , "BOTTOMRIGHT", 0, -5)
		:SetButtonPoint("TOPLEFT",frame.recipent , "TOPRIGHT", 7, 0)
		.__END

	frame.SendButton = CHAIN(ui:Create("Button",frame))
		:SetSize(105,20)
		:SetPoint("BOTTOMRIGHT",frame.footer,"BOTTOMRIGHT", -5, 5)
		:SetFont(FONT,12)
		:SetText("Send")
		:SetScript("OnClick", function() if not self.soft_disabled then Mailtools:SendSelected() end end)
		:SetScript("OnEnter",function(self) 
			CHAIN(GameTooltip):SetOwner(self, "ANCHOR_BOTTOM") 
			:SetText(type(self.tooltip)=="function" and self:tooltip() or tostring(self.tooltip)) 
			:Show() 
			end)
		:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
	.__END

	--frame:Hide()
	return frame
end

function Mailtools:SetCurrentTab(tabname)
	if not self.MainFrame then return end

	for i,object in pairs(self.MainFrame.Tabs) do
		if object:GetName() == "ZM_Menu_"..tabname then
			object.label:SetTextColor(unpack(SkinData("TabSelectedColor")))
		else
			object.label:SetTextColor(unpack(SkinData("TabDefaultColor")))
		end
	end

	local windows = {"Collector","Sender"}
	for i,framename in pairs(windows) do
		self.MainFrame[framename.."_Frame"]:Hide()
	end
	self.MainFrame[tabname.."_Frame"]:Show()

	self.ActiveTab = tabname
	Mailtools.itemForHighlights = nil

	Mailtools.MainFrame.Sender_Frame.recipentSuggest.frame:Hide()
	Mailtools:Update()
end

function Mailtools:ShowWindow()
	if not self.MainFrame then self:CreateMainFrame() end

	ZGV.db.profile.IsWidgetCollapsed = ZGV.db.profile.IsWidgetCollapsed or {}
	if not ZGV.db.profile.IsWidgetCollapsed["Mailtools"] then
		ZGV.db.profile.IsWidgetCollapsed["Mailtools"] = false
	end
	
	if ZGV.db.profile.IsWidgetCollapsed["Mailtools"] == false then
		self.MainFrame:Show()
		self.toggleVisibility:SetPoint("RIGHT",self.MainFrame,"RIGHT",25,5)
	else 
		self.MainFrame:Hide()
		self.toggleVisibility:SetPoint("RIGHT",MailFrame,"RIGHT",25,5)
	end
	self.toggleVisibility:Show()

	ZGV.Mailtools.MainFrame.offset=0
	self:SetCurrentTab("Collector")
end

function Mailtools:HideWindow()
	if self.MainFrame then
		self.MainFrame:Hide()
		self.toggleVisibility:Hide()
	end
end

--]]