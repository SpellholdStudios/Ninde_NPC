BEGIN ~LK#NIPRU~
BEGIN ~LK#NIWIN~
BEGIN ~LK#NIARC~
BEGIN ~LK#NIAON~
BEGIN ~LK#NIDIL~
BEGIN ~LK#NIJAM~
BEGIN ~LK#NIMES~

CHAIN IF ~NumTimesTalkedTo(0)~ THEN LK#NIMES LK#Ninde_Messenger
  @0 /* <CHARNAME>, correct?  You and your companions have been summoned by Lord Archonson, concerning a matter of great import. */
  == LK#NINDJ @1 /* Archonson?!  Why the blazes is he here, peon?  And how on Faerun did he know where I was? */
  == LK#NIMES @2 /* My Lord has his sources, Lady Amblecrown.  Follow me. */
  DO ~StartCutSceneMode() StartCutScene("lk#nict6")~
EXIT

CHAIN IF ~Global("LK#Ninde_Encounter","GLOBAL",2)~ THEN LK#NIARC LK#NindeEncounter
  @3 /* Drop your weapons, defenders of Lady Amblecrown! */
END
  ++ @4 /* We'll be doing nothing of the sort until you explain exactly who you are and what you want. */ EXTERN LK#NIARC LK#NE_main1
  ++ @5 /* No need for aggression, milord.  Let's all put our swords away and talk this over.  What exactly is it you want? */  EXTERN LK#NIARC LK#NE_main1
  ++ @6 /* The day I disarm at the order of an uppity blonde buffoon in blue britches is the day Artemis Entreri sends Drizzt away with a little pat on the head and a bag of sweets. */ EXTERN LK#NIARC LK#NE_entreri
  ++ @7 /* Lady Amblecrown?  What's Ninde done this time? */ EXTERN LK#NIARC LK#NE_donenow

CHAIN LK#NIARC LK#NE_entreri
  @8 /* Do not assume such a manner, associate of Lady Amblecrown, or join your companion at the end of my blade. */
EXTERN LK#NIARC LK#NE_main1

CHAIN LK#NIARC LK#NE_donenow
  @9 /* Lady Amblecrown's indiscretions are to numerous to list and of to appalling a nature for me to do so without striking her down as she stands! */
EXTERN LK#NIARC LK#NE_main1

CHAIN LK#NIARC LK#NE_main1
  @10 /* I am Lord Archonson of Waterdeep, paladin of Selune, and I am here to apprehend the murderess in your midst.  It is possible that you, like many others, have taken her into your bosom with trust in you heart, unaware of her poisonous nature. */
  == LK#NIARC @11 /* If this is the case, you have the opportunity to presently hand her over to us and continue unapprehended.  I should tell you, there is also a significant reward on her head.  However, if you will not permit us to fulfil our duty to both Waterdeep and our Goddess, we will not hesitate to use force. */
  == LK#NINDJ @12 /* Though I admire your perseverance in hunting me these years, you achieved what you set out too when Orachus and Sykre hung from your temple walls--I, Archonson?  I am guilty of nothing but the folly of youth and a partiality to a handsome set of mage's hands. */
  == LK#NIDIL @13 /* How dare you, beast!  How dare you smile before me, murderess!  You do not know me, I am sure, but perhaps you remember my father?  Left with his skull broken open upon the floor of his chamber...you didn't--didn't take anything.  As though you did it just for spite.  They say when they found him the room still stank of the lustful sweat of the kill.  And they found the sign of your disgusting group painted in blood on his...on his nightshirt.  I spit on you, Amblecrown! */
  == LK#NINDJ @14 /* That was the work of Orachus, not I, and the crime savours of his own, very memorable, lack of subtlety.  I re-iterate, Archonson, take me now and you will be taking an innocent woman.  Comparatively, anyway. */
  == LK#NIDIL @15 /* I will not believe a word from the mouth of this snake, this witch--and I would advise the same to you, my friends!  She is known to twist the truth to suit her own vile ends by some pernicious magic. */
  == LK#NINDJ @16 /* Is that all they teach you paladins?  Hearsay and fairy-tales from the common fish-wife's cauldron?  I am no danger to you and neither do I wish to be.  Accost me no further or you may find yourself in a situation you do not understand.  And you, you priestess--what does my death mean to you beyond an extra stripe on your sleeve, elevation in the eyes of your Goddess? */
  == LK#NIJAM @17 /* I do the work of Selune.  Your existence is abhorrent to her. */
  == LK#NIWIN @18 /* And I suppose you would claim you were no danger to...to that Calim family who were sacrificed to your Goddess in Skullport?  All eight of them… */
  == LK#NINDJ @19 /* I...I barely remember them.  I had little taste for the rites and ritual of- */
  == AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @20 /* The story these paladins tell seems to grow darker and darker!  <CHARNAME>...if- if Ninde is guilty then I am not sure I would wish to f-fight alongside her any longer… */
  == KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @21 /* <CHARNAME>, you must examine the claims of these paladins carefully.  If Ninde has indeed committed these atrocities then...then surely the decision you should make is an obvious one, whatever your feelings are for Ninde.  Her...personal charms must not enter this. */
  == LK#NIARC @22 /* You confess to nothing, then?  You deny all your crimes?  There is one murder for which we have irrefutable evidence of your guilt; perhaps you remember Elorl? */
  == LK#NINDJ @23 /* She aired my bedclothes and told me stories of frost giants at night.  That I could not forget. */
  == LK#NIARC @24 /* Then you may remember a night many years ago when she fled from your estate, and perhaps remember the circumstances of her flight? */
  == LK#NINDJ @25 /* I remember nothing of Elorl after the beginning of- */
  == LK#NIARC @26 /* After the beginning of the Time of Troubles.  Perhaps your must disgusting crime, Ninde, was striking at those who had taken you into their home, and indeed their hearts, in a gesture of astonishing charity.  You proved yourself to be a viper on a velvet cushion. */
  = @27 /* You are wanted for the murder of Inaed and Respen Amblecrown. */
END
  ++ @28 /* What?  Ninde, you told me your brother was murdered by shadow thieves, and your father of old age! */ EXTERN ~LK#NIARC~ LK#NE_liarliar
  ++ @29 /* Explain yourself, paladin?  What evidence do you have of her guilt? */ EXTERN ~LK#NIARC~ LK#NE_liarliar
  ++ @30 /* She murdered her family.  And?  She's an enterprising girl.  I would've done the same if my family had owned a successful trading coster. */ EXTERN ~LK#NIARC~ LK#NE_coster
  + ~ReputationGT(Player1,12)~ + @31 /* After...after hearing all this, Ninde...you disgust me.  I no longer desire your presence in this group.  Archonson, you may take her. */ + LK#NE_goodrep
  + ~ReputationLT(Player1,13)~ + @31 /* After...after hearing all this, Ninde...you disgust me.  I no longer desire your presence in this group.  Archonson, you may take her. */ + LK#NE_badrep

CHAIN LK#NIARC LK#NE_liarliar
  @32 /* So Ninde has been lying even to you, her purported leader.  Surely you can see she is not only a gross liability but a very real danger to you and your companions.  She must be punished for her crimes, and- */
  == HAERDAJ IF ~InParty("Haerdalis") !StateCheck("Haerdalis",CD_STATE_NOTVALID)~ THEN @33 /* Where will my dark feline flee when the armoured hounds come growling at her heels?  Whatever her crimes, my raven, you know that she is true to you.  I will not see her thrown to these braying dogs. */
  == MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @34 /* Minsc...Minsc is very confused.  The man in the shiny armour seems a clever one and he says that the pretty elf has done bad things...but she has never hurt us? */
  == IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @35 /* I don't know what to say, <CHARNAME>.  Ninde can do a lot of harm...but she never has to us.  And they're going...they're going to kill her?  It makes me feel very uneasy. */
EXTERN LK#NINDJ LK#NE_main1

CHAIN LK#NINDJ LK#NE_main1
  @36 /* Silence Archonson, I will speak! */
  == LK#NIARC @37 /* To deny even these crimes, I assume?  It is no use, the evidence cannot be dismissed-  */
  == LK#NINDJ @38 /* No.  Why would I deny something I was proud of?  Just one and twenty years and I found the strength to poison my own father.  I relished the moment he took the goblet to his perishing lips, and disguised my delight so well!  And Respen...it was only too easy...a spell. */
  = @39 /* My only regret is not slipping my blade through the copious gut of that Illuskan chambermaid! */
  == KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @40 /* Aye, she's lass after me own heart, if such an organ there be. */
END
  ++ @41 /* Despite all Ninde has done I think she may yet be redeemed.  I suggest you leave, Archonson, before things turn sour. */ EXTERN LK#NIARC LK#NE_rugrat
  + ~ReputationGT(Player1,12)~ + @42 /* Ninde is my friend, and her history, however grim, is irrelevant.  She has been loyal to me and I have no doubt she will continue to be.  Get thee gone, Archonson, and tell the rest of your order that any who attempt to find her or seek the bounty on her head will have to answer to <CHARNAME>. */ EXTERN LK#NIARC LK#NE_patience_goodrep
  + ~ReputationLT(Player1,13)~ + @42 /* Ninde is my friend, and her history, however grim, is irrelevant.  She has been loyal to me and I have no doubt she will continue to be.  Get thee gone, Archonson, and tell the rest of your order that any who attempt to find her or seek the bounty on her head will have to answer to <CHARNAME>. */ EXTERN LK#NIARC  LK#NE_patience_badrep
  + ~ReputationGT(Player1,12)~ + @43 /* (Chuckle) My Ninde.  I'm proud of you, too.  Archonson, I suggest you and your ugly cronies turn round and retreat very, very fast, before I lose patience. */ EXTERN LK#NIARC LK#NE_patience_goodrep
  + ~ReputationLT(Player1,13)~ + @43 /* (Chuckle) My Ninde.  I'm proud of you, too.  Archonson, I suggest you and your ugly cronies turn round and retreat very, very fast, before I lose patience. */ EXTERN LK#NIARC LK#NE_patience_badrep
  + ~ReputationGT(Player1,12)~ + @44 /* I have heard enough!  Her lack of remorse simply makes this decision easier.  Archonson, you may take her. */ EXTERN LK#NIARC LK#NE_goodrep
  + ~ReputationLT(Player1,13)~ + @44 /* I have heard enough!  Her lack of remorse simply makes this decision easier.  Archonson, you may take her. */ EXTERN LK#NIARC LK#NE_badrep
  ++ @45 /* Hmm...you mentioned a reward?  Of how much, exactly? */ EXTERN LK#NIARC LK#NE_reward

CHAIN LK#NIARC LK#NE_coster
  @46 /* Then I see your conscience is as blackened as hers, and I cannot hope to appeal to it.  I am sure your own safety, however, is of great import to you; she has proven herself to be capable of the grossest acts of betrayal.  Can you allow such a liability a place within your group? */
  == MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @34 /* Minsc...Minsc is very confused.  The man in the shiny armour seems a clever one and he says that the pretty elf has done bad things...but she has never hurt us? */
  == IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @35 /* I don't know what to say, <CHARNAME>.  Ninde can do a lot of harm...but she never has to us.  And they're going...they're going to kill her?  It makes me feel very uneasy. */
EXTERN LK#NINDJ LK#NE_main1


CHAIN LK#NIARC LK#NE_goodrep
  @47 /* Your reputation as an honourable <PRO_MANWOMAN> is well deserved, <CHARNAME>, as is your reward.  10,000 gold pieces, as per the order of Oliroe Amblecrown, and 5,000 for the capture of a dangerous Sharite.  The church of Selune thanks you...and so do I.  Hunting Ninde was laborious to say the least, but perhaps...perhaps seeing a rope around that neck will deliver a little gratification.  I do not mean to seem bloodthirsty, but to finally see the witch in a fix she can't squirm her way out of has its appeal.  Prufrock, Windhover, bind her. */
  == JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @48 /* Is this how quickly you would abandon a woman who, whatever her history, has been a steadfast companion to you?  I had always thought it was her that was fraught with disloyalty. */
  DO ~SetGlobal("LK#NindeEncounter_givingover","ARLKN1",1) ActionOverride("LK#NIARC",GiveGoldForce(15000)) ActionOverride("Ninde",LeaveParty()) ActionOverride("Ninde",SetGlobal("LK#NindeJoined","LOCALS",0)) StartCutSceneMode() StartCutScene("lk#nict2")~
EXIT


CHAIN LK#NIARC LK#NE_badrep
  @49 /* Your reputation as an untrustworthy <PRO_MANWOMAN> is clearly undeserved, <CHARNAME>.  But to your reward.  10,000 gold pieces, as per the order of Oliroe Amblecrown, and 5,000 for the capture of a dangerous Sharite.  The church of Selune thanks you...and so do I.  Hunting Ninde was laborious to say the least, but perhaps...perhaps seeing a rope around that neck will deliver a little gratification.  I do not mean to seem bloodthirsty, but to finally see the witch in a fix she can't squirm her way out of has its appeal.  Prufrock, Windhover, bind her. */
  == JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @48 /* Is this how quickly you would abandon a woman who, whatever her history, has been a steadfast companion to you?  I had always thought it was her that was fraught with disloyalty. */
  DO ~SetGlobal("LK#NindeEncounter_givingover","ARLKN1",1) ActionOverride("LK#NIARC",GiveGoldForce(15000)) ActionOverride("Ninde",LeaveParty()) ActionOverride("Ninde",SetGlobal("LK#NindeJoined","LOCALS",0)) StartCutSceneMode() StartCutScene("lk#nict2")~
EXIT

CHAIN IF ~Global("LK#NindeEncounter_givingover","ARLKN1",2)~ THEN LK#NINDJ LK#NE_betrayed
  @50 /* <CHARNAME>, look at me, you snivelling wretch!  Or can you not bear the sight of your own spinelessness?  I had not expected this of you- */
  == LK#NIPRU @51 /* Silence, Amblecrown! */
  == LK#NINDJ @52 /* Know this, Bhaalspawn; every night may be your last.  I will hunt you as I have been hunted.  I will kill you as these fools would kill me.  Before you die you will look into my eyes and know your own cowardice- */
  == LK#NIWIN @53 /* Silence yourself, woman, lest you make your situation worse! */
  == LK#NINDJ @54 /* These fools will take me no further then the City Gates!  Rest assured, Bhaalspawn, you will be seeing me again.  I am not scared.  Only hopeful.  It is you who should be scared.  Enjoy your reward.  Use it to drink, bed strangers, dance and enjoy your last sweet gulp of this world. */
  DO ~SetGlobal("LK#NindeEncounter_givingover","ARLKN1",3) StartCutSceneMode() StartCutScene("lk#nict3")~
EXIT

CHAIN IF ~Global("LK#NindeEncounter_givingover","ARLKN1",4)~ THEN AERIEJ LK#NE_aerie
  @55 /* D-don't worry, <CHARNAME>.  I'm sure she just wanted to scare you.  They're probably already in Waterdeep now. */
  == KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @56 /* You know not to underestimate Ninde's resourcefulness, <CHARNAME>, and I need not warn you to be vigilant.  She may not escape from Archonson, he did seem capable.  But a part of me wonders if all the paladins in Waterdeep would be able to handle her. */
  == MAZZYJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @57 /* You did the right thing, <CHARNAME>.  As much as I find the idea of her public execution distasteful, her actions, those murders...they demand retribution. */
  == KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @58 /* If this be the speed with which you turn yer comrades in when the Pallies come a'knocking, I best be watchin' me back. */
EXIT

CHAIN IF ~Global("LK#NindeEncounter_givingover","ARLKN1",4)~ THEN KELDORJ LK#NE_keldorn
  @56 /* You know not to underestimate Ninde's resourcefulness, <CHARNAME>, and I need not warn you to be vigilant.  She may not escape from Archonson, he did seem capable.  But a part of me wonders if all the paladins in Waterdeep would be able to handle her. */
  == MAZZYJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @57 /* You did the right thing, <CHARNAME>.  As much as I find the idea of her public execution distasteful, her actions, those murders...they demand retribution. */
  == KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @58 /* If this be the speed with which you turn yer comrades in when the Pallies come a'knocking, I best be watchin' me back. */
EXIT

CHAIN IF ~Global("LK#NindeEncounter_givingover","ARLKN1",4)~ THEN MAZZYJ LK#NE_mazzy
  @57 /* You did the right thing, <CHARNAME>.  As much as I find the idea of her public execution distasteful, her actions, those murders...they demand retribution. */
  == KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @58 /* If this be the speed with which you turn yer comrades in when the Pallies come a'knocking, I best be watchin' me back. */
EXIT

CHAIN IF ~Global("LK#NindeEncounter_givingover","ARLKN1",4)~ THEN KORGANJ LK#NE_korgan
  @58 /* If this be the speed with which you turn yer comrades in when the Pallies come a'knocking, I best be watchin' me back. */
EXIT

CHAIN LK#NIARC LK#NE_rugrat
  @59 /* <CHARNAME>, I ask you to consider this carefully; we will not leave without Lady Amblecrown.  I have followed her south from midwinter to midwinter to through rotten waste and darkened wood and I will not forsake my oath to see her hung!  Resist and you will share her fate. */
END
  ++ @60 /* Can no compromise be found?  I am not about to simply hand over one of my friends, but neither do I wish to fight you. */ EXTERN LK#NIARC LK#NE_compromise
  ++ @61 /* Then it seems I have little choice.  I will not surrender Ninde.  Draw swords, Archonson. */ EXTERN LK#NIARC LK#NE_violence
  ++ @62 /* Bring it on, Archy. */ EXTERN LK#NIARC LK#NE_violence
  + ~ReputationGT(Player1,12)~ + @63 /* It's nothing personal, Ninde, but these guys seem to mean business.  You Selunites are free to take her. */ EXTERN LK#NIARC LK#NE_goodrep
  + ~ReputationLT(Player1,13)~ + @63 /* It's nothing personal, Ninde, but these guys seem to mean business.  You Selunites are free to take her. */ EXTERN LK#NIARC LK#NE_badrep
  ++ @64 /* Tell me a little more about the reward you mentioned? */ EXTERN LK#NIARC LK#NE_reward

CHAIN LK#NIARC LK#NE_patience_goodrep
  @65 /* I thought perhaps a <PRO_MANWOMAN> as purportedly reasonable as yourself would see the sense in my words.  You give me no choice, <CHARNAME>.  Perhaps when I see Ninde on the end of a rope the blood spilt to get her there will no longer play on my mind.  I see now the she-wolf must have already assiduously plied her charms. */
  == LK#NINDJ @66 /* Charms you were once all too familiar with, Archonson.  Face it, darling; pursuing me as you have has nothing to do with honour, just your childish indignation at being once made a cuckold by an Amblecrown. */
  == LK#NIARC @67 /* No more words or provocations, Ninde.  You are no longer my childhood playmate.  The girl who released all the exotic birds from Lady Andrina's hothouse with a laugh and- */
  == LK#NINDJ @68 /* Do you remember the night in Ardeep wood, when we feel asleep curled beneath your cloak?  You were ridiculously overdressed for such a balmy evening and kept giving me reprimanding glances for leaving my mantle in the carriage and driving you to fits of rash impulse. */
  == LK#NIARC @69 /* Like that fight you got me into with the sailor. */
  == LK#NINDJ @70 /* Your face looked like an over-ripe plum for weeks!  Your father never quite forgave me that.  As for the birds in Lady Andrina's--heh.  I'm sure the elven organza in her parlour was never quite the same. */
END
  ++ @71 /* Archonson...you clearly cared greatly for Ninde.  Loved her, even.  Do you really think you could bring yourself to watch her die?  And by your hand? */ EXTERN LK#NIARC LK#NE_cutdown
  ++ @72 /* Ninde never spoke of you before, Archonson.  Am I to understand the two of you...were in love? */ EXTERN LK#NIARC LK#NE_cutdown
  ++ @73 /* No offense, Archonson, you're a strapping young thing as I ever did see, but you hardly seem her type. */ EXTERN LK#NIARC LK#NE_cutdown
  + ~Global("LK#NindeRomanceActive","GLOBAL",2)~ + @74 /* Happily, Ninde has far more advanced ideas about what constitutes a man these days.  She's gone from a puffed-up pint-sized paladin to a Bhaalspawn.  She's a clever girl, isn't she? */ EXTERN LK#NIARC LK#NE_cutdown
  ++ @75 /* Erm, as much as I hate to interrupt this touching little stroll back into memory, isn't there supposed to be a fight happening? */ EXTERN LK#NIARC LK#NE_cutdown

CHAIN LK#NIARC LK#NE_cutdown
  @76 /* I no longer feel anything for Ninde beyond loathing.  Perhaps...perhaps a spark of remembrance when you smile at me like that, but a hollow one.  Any feeling I had for you evaporated when that monster, that Sykre, became the prime object of your affections. */
  == LK#NIARC @77 /* Ready yourselves, companions! */
  == LK#NIPRU @78 /* The blessing of the Silver Lady upon us! */
  DO ~SetGlobal("LK#NindeEncounter_fight","ARLKN1",1)~
EXIT

CHAIN LK#NIARC LK#NE_patience_badrep
  @79 /* I approach this battle with caution, <CHARNAME>.  Your skill is as famous as your cruelty.  Although I do not wish for more bloodshed, it feels as though it is my duty to destroy you, as well as Ninde. */
  DO ~SetGlobal("LK#NindeEncounter_fight","ARLKN1",1)~
EXIT

CHAIN LK#NIARC LK#NE_violence
  @80 /* You force this conflict on me, <CHARNAME>.  I hoped perhaps I could convince you to open your eyes to the she-wolf in your midst, but I see now she must have already assiduously plied her charms. */
EXTERN LK#NINDJ LK#NE_main2

CHAIN LK#NIARC LK#NE_compromise
  @81 /* No.  There will be no compromise, <CHARNAME>, and if you are prepared to defend this she-wolf then I am left with no choice...she must have already assiduously plied her charms. */
EXTERN LK#NINDJ LK#NE_main2

CHAIN LK#NINDJ LK#NE_main2
  @66 /* Charms you were once all too familiar with, Archonson.  Face it, darling; pursuing me as you have has nothing to do with honour, just your childish indignation at being once made a cuckold by an Amblecrown. */
  == LK#NIARC @67 /* No more words or provocations, Ninde.  You are no longer my childhood playmate.  The girl who released all the exotic birds from Lady Andrina's hothouse with a laugh and- */
  == LK#NINDJ @68 /* Do you remember the night in Ardeep wood, when we feel asleep curled beneath your cloak?  You were ridiculously overdressed for such a balmy evening and kept giving me reprimanding glances for leaving my mantle in the carriage and driving you to fits of rash impulse. */
  == LK#NIARC @69 /* Like that fight you got me into with the sailor. */
  == LK#NINDJ @70 /* Your face looked like an over-ripe plum for weeks!  Your father never quite forgave me that.  As for the birds in Lady Andrina's--heh.  I'm sure the elven organza in her parlour was never quite the same. */
END
  ++ @72 /* Ninde never spoke of you before, Archonson.  Am I to understand the two of you...were in love? */ EXTERN LK#NIARC LK#NE_cutdown
  ++ @73 /* No offense, Archonson, you're a strapping young thing as I ever did see, but you hardly seem her type. */ EXTERN LK#NIARC LK#NE_cutdown
  + ~Global("LK#NindeRomanceActive","GLOBAL",2)~ + @74 /* Happily, Ninde has far more advanced ideas about what constitutes a man these days.  She's gone from a puffed-up pint-sized paladin to a Bhaalspawn.  She's a clever girl, isn't she? */ EXTERN LK#NIARC LK#NE_cutdown
  ++ @75 /* Erm, as much as I hate to interrupt this touching little stroll back into memory, isn't there supposed to be a fight happening? */ EXTERN LK#NIARC LK#NE_cutdown
  + ~ReputationGT(Player1,12)~ + @82 /* Eurgh, I feel sick just listening to you.  For Cyric's sake, Archonson, just take her! */ EXTERN LK#NIARC LK#NE_goodrep
  + ~ReputationLT(Player1,13)~ + @82 /* Eurgh, I feel sick just listening to you.  For Cyric's sake, Archonson, just take her! */ EXTERN LK#NIARC LK#NE_badrep

CHAIN LK#NIARC LK#NE_reward
  @83 /* There is a reward of 15,000 gold pieces for the capture of Lady Amblecrown, which you would be the happy recipient of if you hand her over now. */
END
  + ~ReputationGT(Player1,12)~ + @84 /* 15,000!  An astonishing sum.  I'd give you my right hand for that, let alone Ninde.  She's all yours. */ EXTERN LK#NIARC LK#NE_goodrep
  + ~ReputationLT(Player1,13)~ + @84 /* 15,000!  An astonishing sum.  I'd give you my right hand for that, let alone Ninde.  She's all yours. */ EXTERN LK#NIARC LK#NE_badrep
  ++ @85 /* Not enough I'm afraid.  Looks like this is going to end in violence after all. */ EXTERN LK#NIARC LK#NE_violence
