local Addon = LibStub("AceAddon-3.0"):GetAddon("MacroBank");
-- Names can't be longer than 16 letters (Blizzard restriction)  They will be truncated to 16 if they are longer  
-- If you do not include a name, category, or description, the temporary ones will be used 
-- Anything between [=[  and ]=]  is treated as literal text, so you can use single or double quotes (' or ") without it messing up LUA.  
--Pre-Made Macros were Created by Dugi Guides http://www.ultimatewowguide.com 

Addon.PreMadeMacros ={

{	name = "Mo1", 
	category = "Monk",
	desc = "Paralysis",
	body = [=[--Paralysis on focus if target is friendly or no target or mod Shift

#showtooltip Paralysis
/use [@focus,mod:Shift][harm,@target][@focus] Paralysis

]=],  }, 

{	name = "Mw1", 
	category = "Monk",
	desc = "Expel Harm > Jab Spam button",
	body = [=[--Use Expel Harm when available then Jab

#showtooltip Expel Harm
/castsequence reset=0.5 0,,Jab
/castsequence reset=0.5 Expel Harm
/script UIErrorsFrame:Hide();

]=],  }, 

{	name = "Mo2", 
	category = "Monk",
	desc = "Spear Hand Strike",
	body = [=[--Spear Hand Strike on focus if target is friendly or no target or mod Shift 

#showtooltip Spear Hand Strike
/stopcasting
/use [@focus,mod:Shift][harm,@target][@focus] Spear Hand Strike

]=],  }, 

{	name = "Mw2", 
	category = "Monk",
	desc = "Mistweaver Self Panic Button",
	body = [=[--Use all available cooldown/item except Life Cocoon 

#showtooltip Fortifying Brew
/use 13 --trinket slot1
/use 14 --trinket slot2
/use 10 --glove if engineering
/use Fortifying Brew
/use Healthstone
/use Revival
/use Thunder Focus Tea
/use Uplift

]=],  }, 

{	name = "Mw3", 
	category = "Monk",
	desc = "Life Cocoon",
	body = [=[--Stop casting > Life Cocoon

#showtooltip Life Cocoon
/stopcasting
/use Life Cocoon

]=],  }, 

{	name = "Mw4", 
	category = "Monk",
	desc = "Renewing Mist",
	body = [=[--Renewing Mist on friendly target otherwise cast on self. 

#showtooltip Renewing Mist
/use [help] [@targettarget, help] [@player] Renewing Mist

]=],  }, 

{	name = "Mo3", 
	category = "Monk",
	desc = "Invoke Xuen, the White Tiger",
	body = [=[--Burst Macro if you have Invoke Xuen talent

#showtooltip Invoke Xuen, the White Tiger
/use 13 --trinket slot1
/use 14 --trinket slot2
/use Tigereye Brew
/use 10 --glove if engineering
/use Chi Wave
/use Invoke Xuen, the White Tiger

]=],  }, 

{	name = "Mw5", 
	category = "Monk",
	desc = "Enveloping Mist/Chi Brew",
	body = [=[--Use Chi Brew if you don't have enough chi for Enveloping Mist

#showtooltip Enveloping Mist
/use [mod:alt,@player][help][@player]Enveloping Mist
/use [nochanneling] Chi Brew

]=],  }, 


{	name = "Wr1", 
	category = "Warrior",
	desc = "Berserker Rage",
	body = [=[--Cast mocking banner and intervene to it (spamable)

#showtooltip Mocking Banner
/target Mocking Banner
/use Intervene
/use Mocking Banner

]=],  }, 

{name = "Wr3",
category = "Warrior",
desc = "Charge",
body = [=[--Cancel Bladestorm, Hand of Proctection and Charge 

#showtooltip Charge
/cancelaura Bladestorm 
/cancelaura Hand of Protection
/use Charge
]=],  },

{	name = "Wr6",
	category = "Warrior",
	desc = "Charge Focus", 
	body = [=[--Charge on focus if target is friendly or no target or mod Shift

#showtooltip  
/use [@focus,mod:Shift][harm,@target][@focus]Charge 
]=],  },

{	name = "Wr4",  
	category = "Warrior", 
	desc = "Dual Wield/Shield",
	body = [=[--Switch to Dual Wield or 1H + Shield

/stopmacro [worn:Shields] 
/equipslot 16 weaponname
/equipslot 17 offhandname or shieldname
]=],  }, 

{ 	name = "Wr7",
	category = "Warrior",
	desc = "Heroic Throw,Shoot,Throw", 
	body = [=[--Heroic throw, shoot and throw in one

#showtooltip heroic throw 
/use Heroic Throw
/use Shoot 
/use Throw
]=],  },  

{	name = "Wr8", 
	category = "Warrior",  
	desc = "Intervene", 
	body = [=[--Intervene friendly target or hostile target's target 

#showtooltip
/cancelaura Bladestorm  
/cancelaura Hand of Protection 
/use [help][@targettarget, help] Intervene 
]=],  }, 

{ 	name = "Wr9",  
	category = "Warrior", 
	desc = "Intervene/Charge", 
	body = [=[--Intervene if friendly, Charge if hostile 

#showtooltip
/cancelaura Bladestorm
/cancelaura Hand of Protection
/use [help][@targettarget, help] Intervene; Charge
]=],  }, 

{	name = "Wr13", 
	category = "Warrior", 
	desc = "Shattering Throw", 
	body = [=[--Cancel aura and cast Shattering Throw

#showtooltip Shattering Throw 
/cancelaura Bladestorm 
/cancelaura Hand of Protection 
/use Shattering Throw
/startattack 
]=],  },

{	name = "Wr14", 
	category = "Warrior", 
	desc = "Arms DPS button",
	body = [=[--One button priority DPS, Colossus Smash should be applied manually. 

#showtooltip Mortal Strike
/castsequence reset=0.5 0,0,0,,Slam
/castsequence reset=0.5 0,0,,Execute
/castsequence reset=0.5 0,,Overpower
/castsequence reset=0.5 Mortal Strike
/script UIErrorsFrame:Hide();

]=],  }, 

{	name = "Wr15",
	category = "Warrior",
	desc = "Rallying Cry",  
	body = [=[--Rallying Cry panic button

#showtooltip Rallying Cry
/use Rallying Cry
/use Berserker Rage
/use Enraged Regeneration
/use Commanding Shout
/use Healthstone
/use Demoralizing Banner

]=],  },  

{	name = "Wr16", 
	category = "Warrior", 
	desc = "Stance Switching", 
	body = [=[--Toggles between Def and Battle stance and if CTRL clicked, it will go to Berzerker Stance 

#showtooltip 
/use [mod:ctrl,nostance:3] Berserker Stance; [stance:1] Defensive Stance; Battle Stance 
]=],  }, 

{	name = "Wr17", 
	category = "Warrior", 
	desc = "Burst Macro", 
	body = [=[--Use all cooldown/items for maximum burst damage

#showtooltip Recklessness
/use 13 --trinket1
/use 14 --trinket2
/use Berserking
/use Skull Banner
/use Recklessness
/use 10 --glove if engineering
/use Bloodbath

]=],  }, 

{	name = "Dr1",
	category = "Druid", 
	desc = "Cyclone Focus",  
	body = [=[--Cyclone on focus if target is friendly or no target or mod Shift 

#showtooltip 
/use [@focus,mod:Shift][harm,@target][@focus]Cyclone  
]=],  }, 

{	name = "Dr2",  
	category = "Druid", 
	desc = "Dash", 
	body = [=[--Switch to Cat Form and Dash

#showtooltip Dash 
/use [nostance:3] Cat Form; [stance:3] Dash
]=],  },

{	name = "Dr3", 
	category = "Druid",
	desc = "Entangling Root Focus", 
	body = [=[--Entangling Root on focus if target is friendly or no target or mod Shift

#showtooltip 
/use [@focus,mod:Shift][harm,@target][@focus]Entangling Root 
]=],  },

{	name = "Dr4", 
	category = "Druid",
	desc = "Feral Charge(Bear)",  
	body = [=[--Switch to Bear and Feral Charge 

#showtooltip Feral Charge(Bear Form)
/use [nostance:1] Bear Form; [stance:1] Feral Charge(Bear Form)
]=],  }, 

{	name = "Dr5", 
	category = "Druid",  
	desc = "Feral Charge(Cat)", 
	body = [=[--Switch to Cat and Feral Charge

#showtooltip Feral Charge(Cat Form)
/use [nostance:3] Cat Form; [stance:3,] Feral Charge(Cat Form)
]=],  },

{	name = "Dr6", 
	category = "Druid",
	desc = "Feral Charge(Both)", 
	body = [=[--Switch to Bear or Cat with Shift mod and Charge 
#showtooltip [mod:shift]Feral Charge(Cat Form);Feral Charge(Bear Form)  
/use [nostance:3,mod:shift]Cat Form; [nostance:1,nomod]Bear Form;[stance:3]Feral Charge(Cat Form);[stance:1] Feral Charge(Bear Form) 
]=],  }, 

{	name = "Dr7", 
	category = "Druid", 
	desc = "NS Healing Touch", 
	body = [=[#showtooltip Nature's Swiftness
/use Nature's Swiftness  
/stopcasting 
/use Healing Touch
]=],  },

{	name = "Dr8",
	category = "Druid",
	desc = "Panic Button",
	body = [=[--Use all cooldowns, ideal for tanking emergency  

/use Enrage 
/use Frenzied Regeneration 
/use Survival Instincts 
/use Barkskin 
/use Healthstone
]=],  }, 

{	name = "Dr9",
	category = "Druid",
	desc = "Pounce",
	body = [=[--Switch to Cat form, Prowl, Pounce target nearest enemy 

#showtooltip Pounce
/use [nostance:3] Cat Form; [stance:3,stealth] Pounce; [stance:3,nostealth] !Prowl
/targetenemy 
]=],  }, 

{	name = "Dr10", 
	category = "Druid", 
	desc = "Ravage", 
	body = [=[--Switch to Cat form, Prowl, Ravage target nearest enemy

#showtooltip Ravage
/use [nostance:3] Cat Form; [stance:3,stealth] Ravage; [stance:3,nostealth] !Prowl 
/targetenemy
]=],  },  

{	name = "Dr11", 
	category = "Druid", 
	desc = "Remove Corruption",  
	body = [=[--Casts Remove Corruption on your mouseover target or current target. 

#showtooltip Remove Corruption
/use [@mouseover, exists] Remove Corruption; Remove Corruption
]=],  },

{	name = "Dr12", 
	category = "Druid", 
	desc = "Rebirth",
	body = [=[--Casts Rebirth and announce target's name  

#showtooltip 
/use [dead] Rebirth 
/stopmacro [nodead][nohelp]
/emote is resurrecting %t 
]=],  },

{	name = "Dr13",
	category = "Druid",
	desc = "Skull Bash",
	body = [=[--Skull Bash for your feral form, switch to Cat if Caster  

#showtooltip 
/use [nostance:1/3] Cat Form; [stance:1] Skull Bash(Bear Form); [stance:3] Skull Bash(Cat Form)
]=],  }, 

{	name = "Dr14",
	category = "Druid",
	desc = "Skull Bash Focus", 
	body = [=[#showtooltip 
/use [noform:1/3] Cat Form; 
/use [form:1,@focus,mod:Shift][form:1,@target][form:1,@focus] Skull Bash(Bear Form)
/use [form:3,@focus,mod:Shift][form:3,@target][form:3,@focus] Skull Bash(Cat Form) 
]=],  },

{	name = "Dr15", 
	category = "Druid",
	desc = "Stampeding Roar",
	body = [=[--Switch to Bear or Cat and cast Stampeding Roar 
#showtooltip [mod:shift]Stampeding Roar(Cat Form);Stampeding Roar(Bear Form)  
/use [noform:3,mod:shift]Cat Form;[noform:1,nomod]Bear Form; [form:3]Stampeding Roar(Cat Form);[form:1]Stampeding Roar(Bear Form) 
]=],  },

{	name = "Dr16",  
	category = "Druid", 
	desc = "Travel Form",
	body = [=[--Uses the appropriate travel form fly, swim, run, for your situation. 
/stopmacro [form:5,flyable];[form:2, swimming];[form:4, noflyable];[form:4, combat] 
/use [flyable, nocombat, noswimming]Flight Form;[noswimming]Travel Form;[swimming]Aquatic Form
]=],  },

{	name = "Dk1", 
	category = "Death Knight", 
	desc = "Death Pact",
	body = [=[--Death Pact if pet exist or Raise Dead if not

#showtooltip Death Pact  
/use [@pet, exists, nodead] Death Pact; Raise Dead 
]=],  }, 

{	name = "Dk2",
	category = "Death Knight",
	desc = "Death Coil", 
	body = [=[--Death Coil on pet with Shift mod.

#showtooltip
/use [mod:shift,@pet][@target][@pet] Death Coil  
]=],  }, 

{	name = "Dk7", 
	category = "Death Knight",  
	desc = "Death Grip Focus", 
	body = [=[--Death Grip on focus if target is friendly or no target or mod Shift 

#showtooltip
/use [@focus,mod:Shift][harm,@target][@focus] Death Grip
]=],  }, 

{	name = "Dk3", 
	category = "Death Knight",
	desc = "Lichborne Self Heal",  
	body = [=[--Switch to Defensive Stance if not and cast Taunt if its not on you 

#showtooltip Lichborne  
/use !Lichborne; 
/use [@player] Death Coil 
]=],  }, 

{	name = "Dk4",
	category = "Death Knight", 
	desc = "Pet Dismiss/Summon",
	body = [=[--Dismiss your current pet and Raise a new pet  

#showtooltip Raise Dead 
/script PetDismiss()
/use Raise Dead
]=],  },  

{	name = "Dk5", 
	category = "Death Knight", 
	desc = "Pet Gnaw",  
	body = [=[--pet Gnaw ability with Leap 

#showtooltip Gnaw
/use Leap 
/use Gnaw  
]=],  }, 

{	name = "Dk6",  
	category = "Death Knight", 
	desc = "Pet Huddle",
	body = [=[--pet Huddle ability

#showtooltip Huddle
/use Huddle
]=],  }, 

{	name = "Dk7",
	category = "Death Knight",  
	desc = "Strangulate Focus", 
	body = [=[--Strangulate on focus if target is friendly or no target or mod Shift

#showtooltip
/use [@focus,mod:Shift][harm,@target][@focus] Strangulate
]=],  }, 

{	name = "Hu1", 
	category = "Hunter",  
	desc = "Misdirection", 
	body = [=[--Misdirection on friendly or Hostile target's target  

#showtooltip 
/use [help] Misdirection; [@targettarget] Misdirection 
]=],  }, 

{	name = "Hu2", 
	category = "Hunter", 
	desc = "Feign Death",
	body = [=[--Secured Feign Death, will stop cast and Feign Death

#showtooltip 
/stopcasting
/use Feign Death 
]=],  },

{	name = "Hu3",
	category = "Hunter",
	desc = "Kill Shot",
	body = [=[--Secured Kill Shot

#showtooltip
/cancelaura Hand of Protection  
/cancelaura Deterrence 
/use Kill Shot
]=],  },

{	name = "Hu1",
	category = "Hunter", 
	desc = "Misdirection", 
	body = [=[--Misdirection on friendly or Hostile target's target 

#showtooltip
/use [help] Misdirection; [@targettarget, help] Misdirection 
]=],  },

{	name = "Hu4",
	category = "Hunter",
	desc = "Pet Intervene",
	body = [=[--Pet Intervene friendly target or hostile target's target

#showtooltip  
/use [help] Intervene; [@targettarget, help] Intervene 
]=],  },

{	name = "Hu5",  
	category = "Hunter", 
	desc = "Pet Growl", 
	body = [=[--Pet Growl and attack current target 

#showtooltip
/use Growl  
/petattack 
]=],  },

{	name = "Hu6",
	category = "Hunter",
	desc = "Pet Master's Call", 
	body = [=[--Use Master's Call on friendly or use on self if no target or hostile.

#showtooltip
/use [help] Master's Call; [@player] Master's Call
]=],  },

{	name = "Hu7", 
	category = "Hunter",
	desc = "Pet Roar of Sacrifice",
	body = [=[--Use Roar of Sacrifice on friendly or use on self if no target or hostile.  

#showtooltip 
/use [help] Roar of Sacrifice; [@player] Roar of Sacrifice 
]=],  }, 

{	name = "Hu8", 
	category = "Hunter", 
	desc = "Scatter Shot",
	body = [=[--Secured Scatter Shot  

#showtooltip 
/stopcasting
/cancelaura Hand of Protection 
/cancelaura Deterrence
/use Scatter Shot
]=],  },  

{	name = "Hu9", 
	category = "Hunter", 
	desc = "Scatter Shot/Freezing Trap",
	body = [=[--Scatter shot then Freezing Trap

#showtooltip 
/use Scatter Shot
/castsequence reset=14 Trap Launcher, Freezing Trap  
]=],  }, 

{	name = "Hu10",
	category = "Hunter",
	desc = "Silencing Shot Focus",
	body = [=[--Secured Silencing Shot on focus if target is friendly or no target or mod Shift

#showtooltip
/stopcasting  
/cancelaura Hand of Protection 
/cancelaura Deterrence 
/use [@focus,mod:Shift][harm,@target][@focus]Silencing Shot
]=],  },

{	name = "Ma1", 
	category = "Mage",
	desc = "Arcane Power", 
	body = [=[--Use Arcane Power and Trinket

#showtooltip  
/stopcasting 
/use Arcane Power
/use trinket name 
]=],  }, 

{	name = "Ma2",  
	category = "Mage", 
	desc = "Blink",
	body = [=[--Stop any casting for Blink 

#showtooltip
/stopcasting  
/use Blink 
]=],  },

{	name = "Ma3",
	category = "Mage", 
	desc = "Blizzard", 
	body = [=[--Spammable Blizzard, will not toggle on/off 

#showtooltip  
/use !Blizzard 
]=],  },

{	name = "Ma4", 
	category = "Mage", 
	desc = "Counterspell Focus",
	body = [=[--Stop any casting for Counterspell on focus if target is friendly or no target or mod Shift 

#showtooltip  
/stopcasting 
/use [@focus,mod:Shift][harm,@target][@focus]Counterspell
]=],  }, 

{	name = "Ma5",  
	category = "Mage", 
	desc = "Fast Iceblock",  
	body = [=[--Faster cast and remove Iceblock. 

#showtooltip Ice Block
/stopcasting
/cancelaura Ice Block 
/use Ice Block
]=],  }, 

{	name = "Ma6",  
	category = "Mage", 
	desc = "Flamestrike",
	body = [=[--Spammable Flamestrike, will not toggle on/off

#showtooltip 
/use !Flamestrike 
]=],  },

{	name = "Ma7",  
	category = "Mage", 
	desc = "Icy Veins",
	body = [=[--Use Icy Veins and Trinket

#showtooltip 
/stopcasting
/use Icy Veins 
/use trinket name 
]=],  },

{	name = "Ma8",
	category = "Mage", 
	desc = "Polymorph Focus",
	body = [=[--Stop any casting for Polymorph on focus if target is friendly or no target or mod Shift  

#showtooltip 
/stopcasting
/use [@focus,mod:Shift][harm,@target][@focus]Polymorph 
]=],  }, 

{	name = "Ma9",
	category = "Mage",
	desc = "Polymorph Petpassive",
	body = [=[--Stop pet attack when you cast Polymorph

#showtooltip
/use Polymorph 
/petpassive 
]=],  },  

{	name = "Ma10", 
	category = "Mage", 
	desc = "Random Polymoprh",
	body = [=[--random Polymorph spell, remove the one you don't have  

#showtooltip 
/stopcasting  
/userandom Polymorph,Polymorph(Pig),Polymorph(Turtle), Polymorph(Black Cat), Polymorph(Serpent) 
]=],  },

{	name = "Ma11", 
	category = "Mage", 
	desc = "Remove Curse",
	body = [=[--Remove Curse without switching target with mouseover 

#showtooltip
/stopcasting 
/use [@mouseover,exists] Remove Curse; Remove Curse
]=],  }, 

{	name = "Ma12",
	category = "Mage",
	desc = "Water Elemental/Freeze",  
	body = [=[--Summon Water Elemental if not available and cast Freeze 

#showtooltip 
/use [nopet][@pet, dead] Summon Water Elemental; !Freeze 
]=],  },

{	name = "Pa1", 
	category = "Paladin",
	desc = "Cleanse",  
	body = [=[--Cleanse without switching target with mouseover 

#showtooltip Cleanse
/use [@mouseover,exists] Cleanse; Cleanse 
]=],  },

{	name = "Pa2", 
	category = "Paladin",
	desc = "Hammer Focus",
	body = [=[--Stop any casting for HOJ on focus if target is friendly or no target or mod Shift

#showtooltip 
/stopcasting
/use [@focus,mod:Shift][harm,@target][@focus]Hammer of Justice
]=],  }, 

{	name = "Pa3",
	category = "Paladin",
	desc = "Hammer of Wrath",
	body = [=[--Usefull to help finish your healing target's target 

#showtooltip
/use [harm] Hammer of Wrath; [@targettarget,harm] Hammer of Wrath 
]=],  },

{	name = "Pa4",
	category = "Paladin",
	desc = "Holy Shock/Righteous Defense", 
	body = [=[--Holy Shock and Righteous Defense on friendly target, usefull to taunt hostile pets to attack you to break CC

#showtooltip Holy Shock  
/use Holy Shock 
/use [noharm,help] Righteous Defense 
/stopmacro [harm] [noexists]
/use Righteous Defense 
]=],  }, 

{	name = "Pa5",
	category = "Paladin", 
	desc = "Righteous Defense", 
	body = [=[--Righteous Defense will work by targeting hostile or friendly

#showtooltip  
/use [@targettarget, help][help] Righteous Defense 
]=],  },

{	name = "Pa6",
	category = "Paladin", 
	desc = "Rebuke Focus", 
	body = [=[--Rebuke on focus if target is friendly or no target or mod Shift 

#showtooltip
/use [@focus,mod:Shift][harm,@target][@focus]Rebuke
]=],  }, 

{	name = "Pa7",
	category = "Paladin",
	desc = "Redemption",  
	body = [=[--Redemption and announce target's name 

#showtooltip
/use [dead] Redemption
/stopmacro [nohelp][nodead] 
/emote is resurrecting %t.
]=],  },  

{	name = "Pa8", 
	category = "Paladin",
	desc = "Turn Evil", 
	body = [=[--Turn Evil without switching target with mouseover

#showtooltip Turn Evil 
/use [@mouseover, exists, harm][harm] Turn Evil 
]=],  },

{	name = "Ge1", 
	category = "General", 
	desc = "Auto Assist Tank",
	body = [=[--Set the tank as focus and add this macro as part of your main attack

/target [@focustarget, harm, nodead]
]=],  }, 

{	name = "Ge2",
	category = "General",
	desc = "Abandon Quest", 
	body = [=[--Open your quest log and highlight a quest then click the macro. keep clicking to abandon all quest. 

/script SetAbandonQuest(); 
/script AbandonQuest();
]=],  },

{	name = "Ge3",
	category = "General",
	desc = "Announce Vent",
	body = [=[--Announce Vent and set Master Loot

/rw Vent Details Posted 
/raid My Guild Vent | abc.leetvent.com
/raid My Guild Vent | 1234
/raid My Guild Vent | secretpassword 
/raid Normalize Vent - http://some.vent.server/somewhere 
/threshold epic
/master player
]=],  }, 

{	name = "Ge4",
	category = "General",  
	desc = "Focus On Mouseover", 
	body = [=[--Set focus on mouseover target and you can clear it with Ctrl mod

/focus [@focus, noexists, nodead, harm] mouseover
/clearfocus [mod:ctrl] 
]=],  }, 

{	name = "Ge5", 
	category = "General", 
	desc = "One Click Northrend Dailies", 
	body = [=[
/use item:42246 
/use item:42164
/use item:40946
/use item:34127
/use item:42480 
/use item:40587 
/use item:43147  
/use item:43101 
/use item:43149
/use item:43142  
/use item:35506 
/use item:38566
/use item:38556
/use item:38544
/use item:38574 
/use item:42479  
]=],  }, 

{	name = "Ge6", 
	category = "General",
	desc = "Prevent UI Message", 
	body = [=[--Stop the red UI Message from appearing the middle of your screen,  place it at the end of your macro

/script UIErrorsFrame:Clear()
]=],  },

{	name = "Ge7",
	category = "General",
	desc = "Print Gender",
	body = [=[--Print target's gender, usefull for??

/run local x=UnitSex("target");local g={"n unknown!", " boy!", " girl!"} n=GetUnitName("target");if IsShiftKeyDown()then SendChatMessage(n .." is a" ..g[x],"SAY");else print(n .." is a" ..g[x]);end 
]=],  }, 

{	name = "Ge8", 
	category = "General",
	desc = "Raid Flask Check",
	body = [=[/run nf="[Flask!]: ";for i=1,GetNumRaidMembers()do for b=1,41 do ufl=UnitAura('raid'..i,b);if ufl then if strfind(ufl,"Flask")or strfind(ufl,"Distilled")then break;end;elseif b==41 then nf=nf..UnitName('raid'..i).." ";end;end;end;print(nf);
]=],  }, 

{	name = "Ge9", 
	category = "General", 
	desc = "Random Pet", 
	body = [=[/run g={"their","his","her"}; x=UnitSex("player");i=random(GetNumCompanions("critter"));id,name=GetCompanionInfo("critter",i);SendChatMessage("gasps as "..name .." hops out of "..g[x] .." pocket!","emote");CallCompanion("critter",i);  
]=],  }, 

{	name = "Ge10", 
	category = "General", 
	desc = "Raid Food Buff Check", 
	body = [=[/run nfb="[Eat!]: ";for i=1,GetNumRaidMembers()do for b=1,40 do ua=UnitAura('raid'..i,b);if ua=="Well Fed"or ua=="Food"then break;elseif b==40 and ua~="Well Fed"then nfb=nfb..UnitName('raid'..i).." ";end;end;end;print(nfb); 
]=],  }, 


{	name = "Ge11",
	category = "General",
	desc = "Sell All Grey Items", 
	body = [=[/run local c,i,n,v=0;for b=0,4 do for s=1,GetContainerNumSlots(b)do i={GetContainerItemInfo(b,s)}n=i[7]if n and string.find(n,"9d9d9d")then v={GetItemInfo(n)}q=i[2]c=c+v[11]*q;UseContainerItem(b,s)print(n,q)end;end;end;print(GetCoinText(c))
]=],  },

{	name = "Ge12", 
	category = "General",
	desc = "Switch Spec/Gear",  
	body = [=[ 
/equipset [spec:1] <Secondary Set Name>; <Primary Set Name>  
/usetalents [spec:1] 2; 1 
]=],  },

{	name = "Pr1",  
	category = "Priest", 
	desc = "SW:Death Sheep/Blind",
	body = [=[--SW:Death to break Sheep or Blind 
#showtooltip Shadow Word: Death
/cancelaura Power Word: Shield
/cancelaura Illuminated Healing
/stopcasting 
/use [harm] Shadow Word: Death
/stopmacro [harm] 
/targetenemy  
/use Shadow Word: Death 
/targetlasttarget 
]=],  }, 

{	name = "Pr2", 
	category = "Priest",
	desc = "Shadowfiend",
	body = [=[--One button for Shadowfiend and attack current or nearest target. 

#showtooltip Shadowfiend  
/use [nopet] Shadowfiend 
/petattack [harm]
/stopmacro [harm] 
/targetenemy 
/petattack 
/targetlasttarget 
]=],  }, 

{	name = "Pr3", 
	category = "Priest", 
	desc = "Mind Flay",  
	body = [=[--Spammable Mind Flay 

#showtooltip Mind Flay
/use [nochanneling:Mind Flay] Mind Flay  
]=],  }, 

{	name = "Pr4", 
	category = "Priest",
	desc = "Mana Burn Focus",
	body = [=[--Mana Burn on focus if target is friendly or no target or mod Shift 

#showtooltip
/use [@focus,mod:Shift][harm,@target][@focus]Mana Burn
]=],  },  

{	name = "Pr6", 
	category = "Priest", 
	desc = "Dispel Magic", 
	body = [=[--Dispel Magic on your mouseover target or current target. 

#showtooltip  
/use [@mouseover,exists] Dispel Magic; Dispel Magic
]=],  }, 

{	name = "Pr7", 
	category = "Priest",
	desc = "Mass Dispel",
	body = [=[--Spammable Mass Dispel, will not toggle on/off 

#showtooltip Mass Dispel
/use !Mass Dispel
]=],  }, 

{	name = "Pr8", 
	category = "Priest", 
	desc = "Psychic Horror",
	body = [=[--Stop casting and Psychic Horror focus if target is friendly or no target or mod Shift 

#showtooltip
/stopcasting 
/use [@focus,mod:Shift][harm,@target][@focus]Psychic Horror 
]=],  }, 

{	name = "Pr9",
	category = "Priest",
	desc = "Resurrection", 
	body = [=[--Resurrection and announce target's name 

#showtooltip Resurrection 
/use [dead] Resurrection 
/stopmacro [nohelp][nodead] 
/emote is resurrecting %t.
]=],  }, 

{	name = "Pr10",
	category = "Priest",
	desc = "Silence Focus", 
	body = [=[--Stop casting and Silence on focus if target is friendly or no target or mod Shift

#showtooltip 
/stopcasting 
/use [@focus,mod:Shift][harm,@target][@focus]Silence
]=],  },

{	name = "Ro1", 
	category = "Rogue",
	desc = "Ambush/Backstab",  
	body = [=[--Stealth and Ambush if out of combat else Backstab. 

#showtooltip
/use [nocombat,nostealth] !Stealth; [stealth] Ambush; Backstab 
]=],  },

{	name = "Ro2",  
	category = "Rogue", 
	desc = "Blind Focus",
	body = [=[--Blind on focus if target is friendly or no target or mod Shift

#showtooltip
/use [@focus,mod:Shift][harm,@target][@focus]Blind
]=],  },

{	name = "Ro3",
	category = "Rogue", 
	desc = "Cheap Shot",  
	body = [=[--Stealth if out of combat and Cheap Shot 

#showtooltip
/use [nocombat,nostealth] !Stealth; Cheap Shot 
]=],  }, 

{	name = "Ro4", 
	category = "Rogue",
	desc = "Cold Blood/Eviscerate", 
	body = [=[--Simple Cold Blood Eviscerate macro 

#showtooltip Cold Blood
/use Cold Blood 
/use Eviscerate  
]=],  }, 

{	name = "Ro5", 
	category = "Rogue", 
	desc = "Distract",
	body = [=[--Spammable Distract, will not toggle on/off  

#showtooltip 
/use !Distract
]=],  }, 

{	name = "Ro6", 
	category = "Rogue",
	desc = "Garrote",
	body = [=[--Stealth if out of combat and Garrote  

#showtooltip 
/use [nocombat,nostealth] !Stealth; Garrote 
]=],  },

{	name = "Ro6",  
	category = "Rogue", 
	desc = "Gouge Focus",
	body = [=[--Gouge on focus if target is friendly or no target or mod Shift 

#showtooltip
/use [@focus,mod:Shift][harm,@target][@focus]Gouge
]=],  },

{	name = "Pa6", 
	category = "Paladin",  
	desc = "Kick Focus", 
	body = [=[--Kick on focus if target is friendly or no target or mod Shift

#showtooltip  
/use [@focus,mod:Shift][harm,@target][@focus] Kick 
]=],  }, 

{	name = "Pa6", 
	category = "Paladin", 
	desc = "Kick/Gouge Focus",  
	body = [=[--Use Gouge if Kick is not available on focus if target is friendly or no target or mod Shift 

#showtooltip Kick 
/castsequence reset=10 [@focus,mod:Shift][harm,@target][@focus] Kick, Gouge
]=],  },

{	name = "Ro7",
	category = "Rogue",
	desc = "Stealth",
	body = [=[--Spammable Stealth, will not toggle on/off 

#showtooltip 
/use !Stealth
]=],  },

{	name = "Ro8",
	category = "Rogue", 
	desc = "Sap",
	body = [=[--Good to find stealth players, target nearest enemy and sap. 

#showtooltip Sap 
/console targetNearestDistance 10.000000
/targetenemy [noharm][dead]
/console targetNearestDistance 20.000000 
/use [harm,nodead] Sap
/script UIErrorsFrame:Clear() 
]=],  },  

{	name = "Ro9", 
	category = "Rogue",
	desc = "Preparation ",
	body = [=[--Use cooldowns before Preparation 

#showtooltip Preparation
/use Vanish
/stopcasting 
/use Sprint 
/stopcasting  
/use Preparation 
]=],  },

{	name = "Ro10", 
	category = "Rogue", 
	desc = "Vanish", 
	body = [=[--Secured Vanish

#showtooltip  
/stopcasting 
/use Vanish
]=],  }, 

{	name = "Ro11", 
	category = "Rogue", 
	desc = "Deadly Throw", 
	body = [=[--Deadly Throw, Shoot or Throw

#showtooltip Deadly Throw
/use Deadly Throw
/use Throw 
/use Shoot 
/script UIErrorsFrame:Clear()  
]=],  }, 

{	name = "Sh1", 
	category = "Shaman", 
	desc = "Ancestral Spirit", 
	body = [=[--Ancestral Spirit and announce target's name 

#showtooltip 
/use [dead] Ancestral Spirit 
/stopmacro [nodead][nohelp]
/emote is resurrecting %t 
]=],  },

{	name = "Sh2", 
	category = "Shaman", 
	desc = "Earthquake",
	body = [=[--Spammable Earthquake, will not toggle on/off

#showtooltip 
/use !Earthquake
]=],  },

{	name = "Sh3",
	category = "Shaman",
	desc = "Hex Focus",
	body = [=[--Hex on focus if target is friendly or no target or mod Shift

#showtooltip
/use [@focus,mod:Shift][harm,@target][@focus] Hex  
]=],  }, 

{	name = "Sh4",
	category = "Shaman",
	desc = "NS Greater Healing Wave", 
	body = [=[#showtooltip Nature's Swiftness
/use Nature's Swiftness
/stopcasting
/use Greater Healing Wave 
]=],  }, 

{	name = "Sh5",
	category = "Shaman",
	desc = "Multicast Totem",
	body = [=[--Use the current "Call of Totem" for 4 totems 

#showtooltip Call of the Spirits
/click MultiCastSummonSpellButton  
]=],  }, 


{	name = "Sh6",
	category = "Shaman", 
	desc = "Shields",
	body = [=[--Water Shield by default or Lightning with Ctrl, Alt or Shift 

#showtooltip
/use [nomod] Water Shield; Lightning Shield
]=],  }, 

{	name = "Sh7", 
	category = "Shaman", 
	desc = "Wind Shear Focus",
	body = [=[--Stop casting and Wind Shear on focus if target is friendly or no target or mod Shift 

#showtooltip
/stopcasting
/use [@focus,mod:Shift][harm,@target][@focus] Wind Shear
]=],  },

{	name = "Wl1", 
	category = "Warlock",
	desc = "2in1 Teleport ",
	body = [=[--Stopcasting and Demonic Circle with Shift mod else Teleport 

#showtooltip 
/stopcasting
/use [mod:shift] Demonic Circle: Summon; Demonic Circle: Teleport 
]=],  }, 

{	name = "Wl2",
	category = "Warlock",
	desc = "All Pet Interrupt Focus", 
	body = [=[#showtooltip [pet:felhunter]Spell Lock;[pet:succubus]Whiplash;[pet:felguard]Axe Toss 
/use [@focus,mod:Shift][harm,@target][@focus]Whiplash 
/use [@focus,mod:Shift][harm,@target][@focus]Spell Lock
/use [@focus,mod:Shift][harm,@target][@focus]Axe Toss
]=],  }, 

{	name = "Wl3", 
	category = "Warlock", 
	desc = "Banish",
	body = [=[--Banish on focus if target is friendly or no target or mod Shift

#showtooltip 
/use [@focus,mod:Shift][harm,@target][@focus] Banish
]=],  }, 

{	name = "Wl4",
	category = "Warlock",
	desc = "Chain Fear Mouseover",  
	body = [=[--Automatically set focus on your mouse over target and Fear. 

#showtooltip Fear  
/focus [@focus, noexists, nodead, harm] mouseover 
/use [@focus] Fear; Fear
/clearfocus [mod:ctrl]
]=],  },

{	name = "Wl5",
	category = "Warlock", 
	desc = "Curse of Tongues Focus",
	body = [=[--Curse of Tongues on focus if target is friendly or no target or mod Shift

#showtooltip
/use [@focus,mod:Shift][harm,@target][@focus]Curse of Tongues
]=],  }, 

{	name = "Wl6",  
	category = "Warlock", 
	desc = "Devour Magic",
	body = [=[--Devour Magic yourself or target with Shift mod  

#showtooltip 
/use [mod:shift, pet:Felhunter][@player] Devour Magic
]=],  },  

{	name = "Wl7", 
	category = "Warlock", 
	desc = "Drain Life",
	body = [=[--Spammable Drain Life, will not cut early.

#showtooltip 
/use [nochanneling: Drain Life] Drain Life 
]=],  },

{	name = "Wl8",
	category = "Warlock", 
	desc = "Drain Soul",
	body = [=[--Spammable Drain Soul, will not cut early.  

#showtooltip 
/use [nochanneling: Drain Soul] Drain Soul
]=],  },

{	name = "Wl9",
	category = "Warlock",
	desc = "Fear",
	body = [=[--Fear on focus if target is friendly or no target or mod Shift

#showtooltip
/use [@focus,mod:Shift][harm,@target][@focus] Fear
]=],  },

{	name = "Wl10", 
	category = "Warlock",  
	desc = "Soul Swap Focus", 
	body = [=[--Soul Swap on focus if target is friendly or no target or mod Shift 

#showtooltip  
/use [@focus,mod:Shift][harm,@target][@focus] Soul Swap 
]=],  },

{	name = "Wl11",  
	category = "Warlock", 
	desc = "Rain of Fire", 
	body = [=[--Spammable Rain of Fire, will not toggle on /off

#showtooltip
/use !Rain of Fire 
]=],  },

};
