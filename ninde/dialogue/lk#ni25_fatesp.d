// FATE SPIRIT

EXTEND_TOP FATESP %fatesp_state_ninde% #%fatesp_transition_ninde%
+ ~!Dead("Ninde") !InMyArea("Ninde") CheckStatGT(Player1,12,CHR) Gender(Player1,MALE) Global("LK#NindeSummoned","GLOBAL",0)~ + @0 /* Bring me my lover, Ninde. */ 
	DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
	Wait(2)
	CreateCreature("lk#ni25",[1999.1228],1)
	SetGlobal("LK#NindeRomanceActive","GLOBAL",2)
	SetGlobal("LK#NindeRestored","GLOBAL",1)
	SetGlobal("LK#NindeSummoned","GLOBAL",1)~ GOTO 8
+ ~!Dead("Ninde") !InMyArea("Ninde") Global("LK#NindeSummoned","GLOBAL",0)~ + @1 /* Bring me Ninde, the elven necromancer. */ 
 	DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
	Wait(2)
	CreateCreature("lk#ni25",[1999.1228],1)
	SetGlobal("LK#NindeSummoned","GLOBAL",1)~ GOTO 8
END
