// ---------------------------------------------
// Ninde J File
// ---------------------------------------------
BEGIN LK#NINDJ

/* ----------------- *
 *  Ninde Lovetalks  *
 * ----------------- */

// 1. Aran and the Shadow Thieves
// ------------------------------
IF ~Global("LK#NindeLoveTalks","GLOBAL",1)~ LK#NL1_intro
  SAY @0 /* This is certainly a rare treat. I suppose this is what they call 'fresh sea air'? Here I am gadding about with the great unwashed while Aran Linvail is fed seedless grapes by buxom wenches. And I have sand in my undergarments. */
  ++ @1 /* Sand in your undergarments? Offering to assist you is the only chivalrous course of action... */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL1_allowme
  ++ @2 /* Oh Ninde, it is not so bad! The water is clear, the weather fine, and the locals most accommodating...if a little eccentric here and there. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL1_notsobad
  ++ @3 /* Yes, well I'm not exactly enjoying my time on this dirt-pile island either, but it is a necessary means to an end. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL1_idontlike
  ++ @4 /* I can already see that your accompaniment will become a chore. I only hope you're as good at spellcasting as you are at complaining. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL1_moaner
END

IF ~~ LK#NL1_allowme
  SAY @5 /* Very amusing, Bhaalspawn, but don't try your luck. */
  IF ~~ + LK#NL1_aran
END

IF ~~ LK#NL1_notsobad
  SAY @6 /* You, Bhaalspawn, are the kind of person who would find having your leg amputated scintillating fun if you are enjoying this. */
  IF ~~ + LK#NL1_aran
END

IF ~~ LK#NL1_idontlike
  SAY @7 /* Indeed. Just look at these slack-jawed seamen! Even their fleas have fleas! */
  IF ~~ + LK#NL1_aran
END

IF ~~ LK#NL1_moaner
  SAY @8 /* Not allowing your compatriots a certain degree of self-expression will simply breed discontent. In short, kitten, I shall moan all I like! */
  IF ~~ + LK#NL1_aran
END

IF ~~ LK#NL1_aran
  SAY @9 /* It's just...argh! Aran Linvail! Why must we serve that up-start backstabbing plebeian? He infuriates me! With his pretensions of nobility and shiny green trousers. */
  ++ @10 /* I sense there's a little enmity between you. */ + LK#NL1_enmity
  ++ @11 /* I noticed those trousers too. They really are quite distracting when one is attempting to engage in serious dialogue with him. */ + LK#NL1_trousers
  ++ @12 /* Backstabbing? Care to elaborate? */ + LK#NL1_end
  ++ @13 /* Aran Linvail is a likeable rogue, who never did a thing to harm us. */ + LK#NL1_ilikehim
  ++ @14 /* I'm not fond of him either, but I will do whatever I must to find Imoen. */ + LK#NL1_notfond
  ++ @15 /* I thought you were supposed to be intelligent--I'm not interested. Shut your mouth. */ + LK#NL1_shutmouth
END

IF ~~ LK#NL1_enmity
  SAY @16 /* How very perceptive of you, <CHARNAME>. No--no, I have never been a friend to the Shadow Thieves. The organisation as a whole. */
  IF ~~ + LK#NL1_hatethem
END

IF ~~ LK#NL1_trousers
  SAY @17 /* It takes a certain degree of class to carry trousers of that magnitude successfully, a class that, among other things, Linvail is obviously lacking. As are the Shadow Thieves in general. But I suppose that's what you get if you bundle every Amnish street rat with halitosis and his own set of burglary tools into some supposed organisation. */
  ++ @18 /* There's some kind of personal reason you don't like them, then? The Shadow Thieves, not the trousers, that is. */ + LK#NL1_end
  ++ @19 /* The Shadow Thieves do not really do any significant harm. */ + LK#NL1_end
  ++ @20 /* I hate the lawless vagabonds, too, but I had to do what I had to do, Ninde. */ + LK#NL1_end
END

IF ~~ LK#NL1_ilikehim
  SAY @21 /* Then that is because you are an infinitely poor judge of character. The only thing worse than being an uneducated Amnish street rat with halitosis and your own set of burglary tools is being the leader of a pack of Amnish street rats with halitosis and their own sets of burglary tools. */
  ++ @18 /* There's some kind of personal reason you don't like them, then? The Shadow Thieves, not the trousers, that is. */ + LK#NL1_end
  ++ @19 /* The Shadow Thieves do not really do any significant harm. */ + LK#NL1_end
  ++ @20 /* I hate the lawless vagabonds, too, but I had to do what I had to do, Ninde. */ + LK#NL1_end
END

IF ~~ LK#NL1_notfond
  SAY @22 /* Clearly, Bhaalspawn, you are an excellent judge of character...well, if we excuse some of our current companions. But no, I have never been a friend to the Shadow Thieves. The organisation as a whole. */
  IF ~~ + LK#NL1_hatethem
END

IF ~~ LK#NL1_hatethem
  SAY @23 /* They exert far too much influence over everything and generally, in the past, that hasn't been particularly conducive to my getting along in life. */
  ++ @24 /* There's some kind of personal reason you don't like them, then? */ + LK#NL1_end
  ++ @19 /* The Shadow Thieves do not really do any significant harm. */ + LK#NL1_end
  ++ @20 /* I hate the lawless vagabonds, too, but I had to do what I had to do, Ninde. */ + LK#NL1_end
  ++ @25 /* I doubt a vampire coven in Athkatla's crypts was particularly conducive to 'people getting along in life' either, but that didn't seem to bother you at all. */ + LK#NL1_vampcoven
END

IF ~~ LK#NL1_end
  SAY @26 /* They stick their daggers into situations which do not concern them and...and that has cost me...friends, in the past. Although generally speaking I am not one to hold grudges, neither do I forget. Enough, Bhaalspawn. There are far too many things I would rather be doing then dwelling upon this subject. Let's find this Imoen of yours, mayhap she'll prove better conversation then the rest of this ragtag band. In fact, my sanity rather depends on it. */
  IF ~~ EXIT
END

IF ~~ LK#NL1_shutmouth
  SAY @27 /* I don't know why I bothered making conversation with such a grotesque creature such as you in the first place, Bhaalspawn. In terms of pleasure, 'tis akin to eating one's own head. */
  IF ~~ EXIT
END

IF ~~ LK#NL1_vampcoven
  SAY @28 /* You're undoubtedly correct. But vampires have always been my friends, as opposed to killing them...Shadow Thieves stick their daggers into situations that don't concern them, and although generally speaking I am not one to hold grudges, neither do I forget. Enough, Bhaalspawn. There are far too many things I would rather be doing then dwelling upon this subject. Let's find this Imoen of yours, mayhap she'll prove better conversation then the rest of this ragtag band. In fact, my sanity rather depends on it. */
  IF ~~ EXIT
END


// 2. Soullessness #1
// ------------------
IF ~Global("LK#NindeLoveTalks","GLOBAL",3)~ LK#NL2_intro
  SAY @29 /* I suppose I had best tell you a little more about my...'affliction'. */
  ++ @30 /* Please do. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL2_main1
  ++ @31 /* Ooh, are you going to tell me all about your rashes in, ah, embarrassing places? (smirk) */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL2_rashes
  ++ @32 /* I think I understand, for the most part. You don't have a soul, do you, Ninde? Or not the one you were born with, at any rate. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL2_main1
  ++ @33 /* To be frank, I'm really not interested. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL2_notinterested
END

IF ~~ LK#NL2_main1
  SAY @34 /* Very well. You must think of me like...a rag doll. Yes, a child's rag doll, and my soul as the thread that is holding me together. Holding my stuffing in, my limbs to my body. Now imagine if the thread was to be picked out. */
  = @35 /* I would fall to pieces, disintegrate, literally--and soon I would no longer be a rag doll, just a heap of lint and string. You know what I'm getting at, pudding? */
  ++ @36 /* Not really, no. Could you abandon the slightly disturbing metaphor for a moment? */ + LK#NL2_main2
  ++ @37 /* And is there no way it can be reversed? */ + LK#NL2_main2
  ++ @38 /* Wonderful. You're not going to drop dead in the middle of a battle, are you? That really would be something of an inconvenience. */ + LK#NL2_main2
  ++ @39 /* And I suppose the same thing is going to happen to me. Fabulous. */ + LK#NL2_main2
END

IF ~~ LK#NL2_rashes
  SAY @40 /* Oh <CHARNAME>, please stop being so childish just for a moment. I seem to be a bad influence on you, the number of innuendoes and silly double entendres you've been spouting lately. I may have to watch my tongue around you in future, lest you pick up more of my bad habits. *Smile* Anyway...will you listen or not? */
  ++ @41 /* Certainly. */ + LK#NL2_main1
  ++ @42 /* I don't really have time to chat right now, Ninde. */ + LK#NL2_notinterested
END

IF ~~ LK#NL2_notinterested
  SAY @43 /* You certainly know how to make a girl feel wanted, <CHARNAME>. Hmph. I thought considering your present state you might find my own...similar predicament of interest, but apparently not. I shan't bother you again, Bhaalspawn. */
  IF ~~ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NL2_main2
  SAY @44 /* Don't be so tiresome, godchild. My--my immortal elven soul was removed, and as a result, I am dying. Slowly and painlessly, but nonetheless...perishing. I cannot say whether the same will happen to you dear. But, as you are no doubt noticing, a soul is the kind of thing you don't really know you have until you haven't anymore. */
  = @45 /* A void blooms inside you like some kind of ghastly flower. At first you dismiss it. The pain is akin to what you might feel if you were separated from a lover; an aching. A slight physical pang of wanting. It grows until it no longer feels alien, and you begin to fear you have lost all your love, the very ability to love or be loved; then everything goes cold. */
  = @46 /* You become weaker in mind and body, until eventually you are more void than...person. You are left a mere husk, your instinct to live, to survive, all that remains of your former self. You can live without a soul. But not for long. */
  = @47 /* And despite all the research I have conducted, I have learned of no cure, no rescue from my fate but the restoration of what was lost. In other words, we're rather without hope. Would you like a biscuit? They're rather delicious. */
  ++ @48 /* You sound a little like Irenicus, Ninde. */ + LK#NL2_irenicus
  ++ @49 /* After hearing your words I almost understand why Irenicus will go to such lengths to attain one. I would not wish the fate you have described on anyone. */ + LK#NL2_desperate
  ++ @50 /* Do you think your character altered at all after you lost your soul? */ + LK#NL2_changes
  ++ @51 /* How did you lose your soul? Your daddy didn't happen to be a ravening lord of murder, did he, because everyone seems to want a piece of that kind of soul. */ + LK#NL2_howlost
  ++ @52 /* ...Hey Ninde, you always know how to cheer this Bhaalspawn up. */ + LK#NL2_cheerup
  ++ @53 /* Biscuits?! Who could east biscuits at a time like this!? We're dying, Ninde! */ + LK#NL2_biskeetzzzz
END

IF ~~ LK#NL2_irenicus
  SAY @54 /* Your arch nemesis and I have a suprising amount in common. (grin) Except, of course, I am vastly more desirable. And you must never accept biscuits from Irenicus, no matter how earnestly he appears to offer them--for they will most likely be malevolent, soul-draining biscuits. Mine, however, are perfectly lovely. Here. Perhaps...perhaps I'll tell you how I lost my soul sometime. I'm feeling a little dejected now, however. */
  IF ~~ EXIT
END

IF ~~ LK#NL2_desperate
  SAY @55 /* Don't be silly, <CHARNAME>, there are plenty in this world who deserve such a fate, and worse...and I'm still not sure whether or not I am among them. Enough talk for today. Truth be told I'm feeling rather forlorn. Perhaps I'll tell you how...how I lost my soul, soon enough. */
  IF ~~ EXIT
END

IF ~~ LK#NL2_changes
  SAY @56 /* Yes. I used to be a better person. Don't look at me like that, you know I'm not exactly a saint. What, you think I was born this cruel and cynical? Perhaps...perhaps I'll tell you how I lost it sooner or later. I'm feeling a little forlorn now. */
  IF ~~ EXIT
END

IF ~~ LK#NL2_howlost
  SAY @57 /* Unfortunately, my daddy was a moongazing elf who couldn't string his bow quick enough to save himself from a little Drow raid. A story for another time, perhaps. I'm feeling a little forlorn. */
  IF ~~ EXIT
END

IF ~~ LK#NL2_cheerup
  SAY @58 /* My dear Bhaalspawn, if my aim was to cheer you up you'd be on the floor with your britches round your ankles. I can't think of a better way to put a smile on a godchild's face then a little bit of...anyway. Perhaps I'll tell you when you're older. And maybe...maybe I'll tell you how I lost my soul too. The truth be told, I'm feeling a little dejected at the moment. */
  IF ~~ EXIT
END

IF ~~ LK#NL2_biskeetzzzz
  SAY @59 /* Oh, do try not to be quite so melodramatic! We have plenty of time, and you may yet wrest your soul from Irenicus' greasy little mittens. Perhaps I'll tell you how I lost my own soul some day, but the truth is I'm currently feeling more than a little forlorn. */
  IF ~~ EXIT
END


// 3. Soullessness #2
// ------------------
IF ~Global("LK#NindeLoveTalks","GLOBAL",5)~ LK#NL3_intro
  SAY @60 /* I believe I offered to tell you, <CHARNAME>, of how it was I became...soulless. */
  ++ @61 /* And I'd certainly like to hear. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL3_liketohear
  ++ @62 /* Let me guess, illicit magical experiment gone horribly wrong? */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL3_letmeguess
  ++ @63 /* I'm a little preoccupied at the moment, Ninde. Perhaps another time? */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL3_notime
  ++ @64 /* I've got better things to do then listen to your incessant nattering, elf. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL3_notime
END

IF ~~ LK#NL3_liketohear
  SAY @65 /* Very well. It began shortly before the Time of Troubles. I returned from my birthplace, Cormanthor, with heavy spirits. I felt the trip had been in vain--I had discovered nothing of my origins, and the stirring darkness across the dales compelled me to leave, to return home, which had, in my absence, altered irrevocably. */
  IF ~~ + LK#NL3_main1
END

IF ~~ LK#NL3_letmeguess
  SAY @66 /* As usual, my esteemed leader, you are entirely wrong. */
  = @67 /* It began shortly before the Time of Troubles. I returned from my birthplace, Cormanthor, with heavy spirits. I felt the trip had been in vain--I had discovered nothing of my origins, and the stirring darkness across the dales compelled me to leave, to return home, which had, in my absence, altered irrevocably. */
  IF ~~ + LK#NL3_main1
END

IF ~~ LK#NL3_notime
  SAY @68 /* Pfeh, as you wish Bhaalspawn, though you are distinctly lacking in manners to dismiss me so. What's a girl to do? There's just no one to talk to. */
  IF ~~ EXIT
END

IF ~~ LK#NL3_main1
  SAY @69 /* My family's mercantile business had crumbled under the decidedly lacklustre business planning of my elder brother, Respen, and though he knew of my return I could not bring myself to enter our manor again...it no longer felt right. I had moved on. I was no longer the Amblecrown's young ingenue. But neither was I an independent creature. Although I was no longer a child, I was the pampered and coddled daughter of the Waterdhavian elite, and could not have survived on my own. I returned to my former tutor...and lover, Sykre D'Alysoss. */
  = @70 /* Sykre was violent and passionate and fierce...and quite possibly the most alluring creature I have ever met. A shadow mage from the Moonsea, he...he taught me all that I know. He changed me, <CHARNAME>. He introduced me to The Night Hand, a mage cabal--they were powerful, yes, and dangerous as well, but it was Sykre and I who made them nefarious. He had an appetite for chaos, which I, perhaps foolishly, indulged. We do silly things for love. */
  = @71 /* Sacrifices. Defiling temples...especially those of Selune. I remember...I remember when Sykre and I broke into Dilatuvelle estate, murdered the dribbling old lord, made love in his still-warm bed. It was a heady time for the group of us; we knew this life could not last, was not sustainable, but we knew we had stepped too far over the edge, that there was no turning back now. We made many enemies, as I'm sure you can imagine. */
  = @72 /* The Time of Troubles came, and life suddenly became difficult. I no longer had magic, and was effectively as helpless as a newborn babe. Our enemies moved in, but...but it was not me they struck at. It was Respen. Waterdeep's Shadow Thieves were put at a disadvantage by our monopoly on the trade of magical devices. They did not kill my brother...just tortured him. */
  = @73 /* He was alive, though barely...and I could not bare the thought of him dying. Perhaps I hadn't been the best or most devoted of sisters, but Respen was the one who had taken me to Waterdeep, plucked me starving from the forest. His kindness was my life. I could not bear him perishing for my stupidity. He could not. He would not. But neither could he be resurrected, or even so much as healed. It was the Time of Troubles, remember. */
  = @74 /* There...there was a last resort. I dragged his limp, heavy body through the streets to the crypts Sykre had taught me to fear. The only part of the city I feared. It poured with rain that night, lashings of it, extinguishing the street lamps and soaking my skirts. I pulled until I screamed with frustration, until blood trickled from beneath my nails. I remember how the pearls tore from his satin doublet and clattered on the cobblestones. I remember how the bloated orphans dived for them. I remember how I cared for nothing but his life. */
  = @75 /* And I took him to...to Lassal. *Smile* A name you undoubtedly recognise. He lorded it up in the north in those days, and most of Waterdeep's undead were supplicant to him. It was a wonder I was not instantly sucked dry, but I undoubtedly intrigued him...and I begged him, at any cost, to save Respen. And I suppose he did, in some sense. He sired him, breathed into him a vampiric half-life worse then death. I should have thought. As I say, we do foolish things for...for love. */
  = @76 /* But Respen's deliverance came with a hefty price. A soul...for a soul. He gave Respen part of his, and by some magic, took mine as payment. My soul, and twenty years of servitude. I was to be his daylight emissary. I eventually became his tragic mortal pet. Then his consort. And then you found me, and then you killed Lassal. I am thankful, since you broke the bonds of my servitude.... He would like to think I'd weep for him. (smile) */
  ++ @77 /* What became of Sykre? */ + LK#NL3_sykre
  ++ @78 /* What happened to your brother? */ + LK#NL3_brother
  ++ @79 /* I'm not sure what to think. On one hand, you sacrificed a part of yourself to save your brother, on the other, you helped this...this Night Hand group murder countless innocents. */ + LK#NL3_grey
  ++ @80 /* You're a nobler person then I believe you give yourself credit for. */ + LK#NL3_grey
  ++ @81 /* I must confess, I never thought you capable of such an act of selflessness. */ + LK#NL3_grey
  ++ @82 /* Were you...were you Lassal's lover? */ + LK#NL3_lassallove
  ++ @83 /* A likely story! No doubt you lost your soul in some magical accident you're too proud to admit to! */ + LK#NL3_likelystory
  ++ @84 /* You disgusting murderer! Have at you! */ DO ~LeaveParty() SetGlobal("LK#NindeJoined","LOCALS",0) Enemy()~ EXIT
END

IF ~~ LK#NL3_sykre
  SAY @85 /* The law caught up with him, and eventually, he hanged, the poor man. He was a genius in his own...special way. (sigh) Memories. Do you not think it grim that the single kindest, greatest act of my miserable existence had the most unpleasant outcome? */
  ++ @86 /* Maybe, but that's no reason to give up on goodness. It is not as though every righteous act comes with such a dire cost. */ + LK#NL3_nogiveup
  ++ @87 /* Heh, yes. I suppose I can understand why you're such an evil harpy now. */ + LK#NL3_evilbitch
  ++ @88 /* Well, Ninde, it just goes to show that such things are seldom worth doing. They just aren't cost-effective--you would've been far better off if you'd simply left your brother. */ + LK#NL3_justshows
  ++ @89 /* Psh, your existence isn't all THAT miserable dear. Buck up. */ + LK#NL3_notmiserable
END

IF ~~ LK#NL3_brother
  SAY @90 /* I - I never saw him after that night. I assume he's still somewhere in Waterdeep draining brothel girls and street urchins. I didn't exactly save his life in the classical sense. */
  IF ~~ + LK#NL3_main2
END

IF ~~ LK#NL3_main2
  SAY @91 /* Do you not think it ironic, though, that the single kindest, greatest act of my miserable existence had the most unpleasant outcome? */
  ++ @86 /* Maybe, but that's no reason to give up on goodness. It is not as though every righteous act comes with such a dire cost. */ + LK#NL3_nogiveup
  ++ @87 /* Heh, yes. I suppose I can understand why you're such an evil harpy now. */ + LK#NL3_evilbitch
  ++ @88 /* Well, Ninde, it just goes to show that such things are seldom worth doing. They just aren't cost-effective--you would've been far better off if you'd simply left your brother. */ + LK#NL3_justshows
  ++ @89 /* Psh, your existence isn't all THAT miserable dear. Buck up. */ + LK#NL3_notmiserable
END

IF ~~ LK#NL3_grey
  SAY @92 /* I'm a living example that the world is not all black and white and straight lines, <CHARNAME>, something one such as you would do well to commit to memory. */
  IF ~~ + LK#NL3_main2
END

IF ~~ LK#NL3_lassallove
  SAY @93 /* Oh, heavens no dear. I'm not *that* kind of necromancer...I prefer my men thoroughly alive and kicking. */
  IF ~~ + LK#NL3_main2
END

IF ~~ LK#NL3_likelystory
  SAY @94 /* Oh hush, my cynical Bhaalspawn. I am not so crippled by pride as to deny my mistakes. */
  IF ~~ + LK#NL3_main2
END

IF ~~ LK#NL3_nogiveup
  SAY @95 /* Perhaps not, but opportunities for truly righteous acts are few and far between. It seems we only show our best in the worst of situations, and even then my choice to save him was made from selfishness. I could not have lived if he had died. I do not remember what a love so unconditional felt like...despite the pain it brings, I hope to again someday. */
  IF ~~ EXIT
END

IF ~~ LK#NL3_evilbitch
  SAY @96 /* Do not judge me so harshly, <CHARNAME>, I may have a tongue like a guillotine but that doesn't necessarily equate to evil. I'm a highly selfish individual undoubtedly. */
  IF ~~ EXIT
END

IF ~~ LK#NL3_justshows
  SAY @97 /* Perhaps, but I could not have lived if he had died. Funny, I do not remember what a love so unconditional felt like...despite the pain it brings, I hope to again someday. */
  IF ~~ EXIT
END

IF ~~ LK#NL3_notmiserable
  SAY @98 /* Maybe not, but perhaps I'd be happier if I had a few screaming brats and a little house in Mistledale. On the other hand, maybe not. */
  IF ~~ EXIT
END


// 4. Making your mark
// -------------------
IF ~Global("LK#NindeLoveTalks","GLOBAL",7)~ LK#NL4_intro
  SAY @99 /* I envy you, <CHARNAME>. */
  ++ @100 /* Because of my astonishingly well-honed physique and commanding aura? (smirk) */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL4_physique
  ++ @101 /* And why is that, Ninde? */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL4_main1
  ++ @102 /* Ooh, the elf finally notices an admirable trait in someone other then herself. Surely, this is a first. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL4_cynical
END

IF ~~ LK#NL4_physique
  SAY @103 /* Hmm...speaking of your physique, perhaps I should give it a closer examination later on....No. */
  IF ~~ + LK#NL4_main1
END

IF ~~ LK#NL4_main1
  SAY @104 /* I envy you the fact that you have been handed the opportunity, with little cost, to make your mark upon this world. */
  ++ @105 /* Little cost?! My heritage, this 'opportunity to make my make upon the world', has been more a burden; it has drained me emotionally and physically, and cost the lives of some dear friends along the way. It's not all daisies and sunshine, Ninde, I would've thought that was fairly evident! */ + LK#NL4_lilcost
  ++ @106 /* I suppose that indeed, it is a boon to know that after I am gone my name will not soon be forgotten. It is what drives me to continue my travels--it would be a shameful thing to die in anonymity. */ + LK#NL4_thankful
  ++ @107 /* Becoming a figure of legend, one's name being echoed down the ages...this troubles me not. I live for the day, nay, for the moment, and what is the use of infamy after death? After all, it's not as though you'll be about to enjoy it. */ + LK#NL4_carpediem
  ++ @108 /* There are other ways to achieve a lasting fame then having a divine, murderous birthright forced upon you; perhaps I would rather be known for my mercy, or my enterprise, or for being the greatest lover of women ever to grace the Sword Coast! */ + LK#NL4_otherways
END

IF ~~ LK#NL4_cynical
  SAY @109 /* I notice a great deal of admirable traits in many I have the pleasure of meeting, though not necessarily in you, dear. But your naivety is perhaps understandable considering the number of blows to the head you must have received these past few years; indeed, I was surprised to find you more cogent then a hobgoblin with a mouthful of grapes. There, <CHARNAME>. For your resilience, I admire you. (smirk) */
  = @110 /* But it is for something else I envy you. */
  IF ~~ + LK#NL4_main1
END

IF ~~ LK#NL4_lilcost
  SAY @111 /* Your path to infamy is undoubtedly one soaked in blood, but that is the very nature of your birthright; a birthright that in itself is a unique gift. */
  IF ~~ + LK#NL4_main2
END

IF ~~ LK#NL4_thankful
  SAY @112 /* I agree, it would be unfortunate to die without significant legacy. And yet thousands do every day, is that not sad? I wonder what it is that makes you and I different, fuels the fires within us that burn for fame. Perhaps it is our power as individuals, or else our unconventional upbringings? But alas...it seems unlikely now my name will echo down the ages as yours might. A dusty fold of parchments in a Waterdhavian law office, rotting chiffon gowns in a burnt-out northern manor. That is my legacy. */
  ++ @113 /* Come now, Ninde, that need not be it! You should immediately begin to sire a brood of your own little Nindelings; then you can be certain of remembrance, at least by some. Heh. */ + LK#NL4_comenow
  ++ @114 /* No need to be such a fatalist, Ninde. You are my companion, after all, and I can think of no reason why those that stood by my side during my adventures should not stand by my side in the songs of bards and the scrolls of scholars in the centuries to come! */ + LK#NL4_mightnotbe
  ++ @115 /* Yes, I suppose that's it. It seems that the memories of most of you are simply doomed to fade in the mists of time. You are right to envy me. */ + LK#NL4_mightnotbe
END

IF ~~ LK#NL4_comenow
  SAY @116 /* I cannot feature myself attempting to raise anything more consequential then a cabbage, a decision that if many of the parents of our companions had made, would render our adventuring group very small indeed. We are a bunch of queer ducks, are we not? Anyway dear, best not stand around any longer if we hope to be thoroughly enshrined in the memories of all and sundry for generations to come. */
  IF ~~ EXIT
END

IF ~~ LK#NL4_mightnotbe
  SAY @117 /* I worry you overrate the significance of your heritage--you are singular, it is true, but there are many others who carry the same blood and bone. If you seek to set yourself above them, it will be a struggle. And it certainly won't do to sit around here chin-wagging all day if we wish to be thoroughly enshrined in the memories of all and sundry for generations to come. But you...you are certainly an interesting companion. */
  IF ~~ EXIT
END

IF ~~ LK#NL4_carpediem
  SAY @118 /* An admirable sentiment, and I suppose it holds some truth, though it is truly a philosophy for the young. Wait, Bhaalspawn, 'til you are a little older, and then perhaps you will appreciate the soundness of my advice. You are, after all, less then half my age...ergh, what a sobering thought. */
  = @119 /* But your birthright is a unique gift. */
  IF ~~ + LK#NL4_main2
END

IF ~~ LK#NL4_main2
  SAY @120 /* Yes, a gift, <CHARNAME>. If you could come to terms with this there would undoubtedly be far less boo-hooing going on all the time, as it is frankly growing rather tiresome. */
  ++ @121 /* Sometimes I think you sound like Irenicus, but now it is Sarevok whose sentiments you echo! */ + LK#NL4_sarevok
  ++ @122 /* You call my heritage a 'gift', and while I concede that it has given me the potential to achieve great infamy, I cannot, as to do so would force me to abandon all that is good and true in myself. */ + LK#NL4_embrace
  ++ @123 /* Perhaps you are right. I am a godchild...I have powers beyond the dreams of most. Why should I let them go to waste? */ + LK#NL4_correct
END

IF ~~ LK#NL4_otherways
  SAY @124 /* Yuch, it's not as though you'd have much competition to the latter title considering that the population of your homeland is composed primarily of buck-toothed pig-farmers who look like what one might get if one forced an ogre to breed with a sack of potatoes. */
  ++ @125 /* While we're on the subject of racial stereotypes, is fatalism and tedious periods of self-reflection characteristic to all elves, or just the few I've met? Your parties must be truly exciting affairs. */ + LK#NL4_racist
  ++ @126 /* At least I don't get my ears stuck in doors. (grin) */ + LK#NL4_potatoe
END

IF ~~ LK#NL4_sarevok
  SAY @127 /* Ah yes, your half brother. I do so wish I could have met him, he sounds like my true intellectual equal. Pity you had to kill the little scamp. Oh well, any ideas as to how I could achieve everlasting recognition? */
  = @128 /* I suppose I could pop out a babe or two, what think you? */
  IF ~~ + LK#NL4_end
END

IF ~~ LK#NL4_embrace
  SAY @129 /* Hehee, you really can be most tiresome, Bhaalspawn. I suppose you think moral fibre a substitute for real personality. Well, if you have no ideas for ensuring your own place in history, perhaps you could volunteer some for me? */
  = @130 /* Speaking of shapely rear ends, perhaps that could be my legacy? Or perhaps I could pop out a babe or two, what think you? */
  IF ~~ + LK#NL4_end
END

IF ~~ LK#NL4_correct
  SAY @131 /* Yes, well, don't get carried away. I learnt too late that caution is just as admirable as a monumentally shapely rear end. */
  = @130 /* Speaking of shapely rear ends, perhaps that could be my legacy? Or perhaps I could pop out a babe or two, what think you? */
  IF ~~ + LK#NL4_end
END

IF ~~ LK#NL4_end
  SAY @132 /* On second thought, no, I cannot feature myself attempting to raise anything more consequential then a cabbage, a decision that if many of the parents of our companions had made, would render our adventuring group very small indeed. We are a bunch of queer ducks, are we not? Anyway dear, best not stand around any longer if we hope to be thoroughly enshrined in the memories of all and sundry for generations to come. */
  IF ~~ EXIT
END

IF ~~ LK#NL4_racist
  SAY @133 /* It is good that, upon occasion, you are able to give as good as you get. Considering our formidable array of enemies, hopefully the same applies to combat, since I have no wish to be a squished elf in the near future. */
  = @134 /* In actual fact, I'd would rather pass into legend and eternal life. Any ideas? I suppose I could pop out a babe or two, what think you? */
  IF ~~ + LK#NL4_end2
END

IF ~~ LK#NL4_potatoe
  SAY @135 /* That was once, Bhaalspawn, and I'd thank you not to continually draw attention to that frightfully humiliating lapse in grace. (grin) */
  = @136 /* But, to return to the topic at hand, perhaps I could pop out a babe or two, what think you? */
  IF ~~ + LK#NL4_end2
END

IF ~~ LK#NL4_end2
  SAY @137 /* On second thought, no, I cannot feature myself attempting to raise anything more consequential then a cabbage, a decision that if many of the parents of our companions had made, would render our adventuring group very small indeed. We are a bunch of queer ducks, are we not? */
  = @138 /* Anyway dear, best not stand around any longer if we hope to be thoroughly enshrined in the memories of all and sundry for generations to come. */
  IF ~~ EXIT
END

// 5. The past, present and future
// -------------------------------
IF ~Global("LK#NindeLoveTalks","GLOBAL",9) InParty("Imoen2")~ LK#NL5_intro
  SAY @139 /* You have your sister back. I have heard you both hinting at the exceptionally close relationship you shared as children. Ahh, the tomfoolery of youth. I'll warrant back among the echoey turrets and cloistered monks of your adolescence, neither of you supposed you'd one day be spiritually barren 'adventurers' trotting around Amn, subject to the whims of beings superior to yourselves, desperately attempting to maintain a semblance of the reality you once knew. Pity. */
  ++ @140 /* Perhaps things did not transpire quite as I imagined they would, but I always knew adventuring was the right path. I would never have been content being a farmer or a barrel-maker or something. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL5_alwaysadvent
  ++ @141 /* Danger, adventure, magic, blood! It is the only reality there is! I am leading the life I had always dreamed I would! */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL5_dangerventure
  ++ @142 /* Spiritually barren?! */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL5_spiritbarren
  ++ @143 /* Frankly, Ninde, you abusive hag, I don't want to talk to you at all. */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END

IF ~Global("LK#NindeLoveTalks","GLOBAL",9) !InParty("Imoen2")~ LK#NL5_introB
  SAY @144 /* You have rescued your sister. I have heard you hinting at the exceptionally close relationship you shared as children, though it may have waned now. Ahh, the tomfoolery of youth. I'll warrant back among the echoey turrets and cloistered monks of your adolescence, neither of you supposed you'd one day be spiritually barren 'adventurers' trotting around Amn, subject to the whims of beings superior to yourselves, desperately attempting to maintain a semblance of the reality you once knew. Pity. */
  ++ @140 /* Perhaps things did not transpire quite as I imagined they would, but I always knew adventuring was the right path. I would never have been content being a farmer or a barrel-maker or something. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL5_alwaysadvent
  ++ @141 /* Danger, adventure, magic, blood! It is the only reality there is! I am leading the life I had always dreamed I would! */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL5_dangerventure
  ++ @142 /* Spiritually barren?! */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL5_spiritbarren
  ++ @143 /* Frankly, Ninde, you abusive hag, I don't want to talk to you at all. */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NL5_alwaysadvent
  SAY @145 /* Hopes and dreams so often go unfulfilled. It hardly seems worth having them. When I was young I wished for no more for myself than to be the wife of some Waterdhavian Lord with a nose so high in the air it could've been what knocked Netheril out of tilt. */
  IF ~~ + LK#NL5_main1
END

IF ~~ LK#NL5_main1
  SAY @146 /* I wanted woven Mulhorandi silks and brocade corsets beaded by the hands of Calimport's most disadvantaged orphans, and the chance to inspire awed whisperings whenever I walked into a room. Admiring glances of young bachelors tempered with the frightful murmuring of serving maids who knew I could turn their hair red with a glance. */
  = @147 /* But naturally, my own idyllic conception of how I was to live was forced aside by how it truly was to live. Oh, and for the record, a barrel maker is called a cooper. See, I am not so out of touch with the working man. (smirk) */
  ++ @148 /* Heh, you probably only know what a cooper is because you used to have a mantel made out of one. */ + LK#NL5_cooperz
  ++ @149 /* You're right, dreams are seldom realised, but they are nonetheless necessary. How would we survive with them, without something to strive toward? We would be nought but animals. */ + LK#NL5_dreamsfull
  ++ @150 /* Well, you probably got most of those things in your time, nasally endowed husband aside. Somehow I can tell you were a pretty spoilt child. */ + LK#NL5_soundslike
  ++ @151 /* What silly aspirations! Frocks and lace and men. Did you not wish to better the world? To use your wealth and talents to further the causes of good? */ + LK#NL5_sillydreamz
  ++ @152 /* You know what I wanted when I was an adolescent? A busty sun elf in some skimpy mage robes, a cosy little room in an inn, a few simulacrum scrolls and a couple of weeks. What do you say, Nindey? Heehee. */ + LK#NL5_iwanted
END

IF ~~ LK#NL5_dangerventure
  SAY @153 /* I think it is most likely Bhaal doing the talking there and not your brain. In any case, I most certainly did not wish for adventure when I was younger. I wished for no more for myself than to be the wife of some Waterdhavian Lord with a nose so high in the air it could've been what knocked Netheril out of tilt. */
  IF ~~ + LK#NL5_main1
END

IF ~~ LK#NL5_spiritbarren
  SAY @154 /* While I understand you may not want me to twist that particular knife, I'd hasten to point out that in the literal sense, what I said was really quite accurate. That aside, I most certainly did not wish for adventure when I was younger. I wished for no more for myself than to be the wife of some Waterdhavian Lord with a nose so high in the air it could've been what knocked Netheril out of tilt. */
  IF ~~ + LK#NL5_main1
END

IF ~~ LK#NL5_cooperz
  SAY @155 /* Heh, you can occasionally give as good as you get, sweets. Hmm...I am far too old for hopes or dreams, and yet I seem to manage perfectly fine. */
  IF ~~ + LK#NL5_main2
END

IF ~~ LK#NL5_main2
  SAY @156 /* One merely needs to convince oneself that one has no future to strive toward, and the rest will take care of itself, more or less. You, however, may still reach the age of dribbling and incontinence, and have the pleasure of being a profound inconvenience to your family. */
  IF ~~ + LK#NL5_main3
END

IF ~~ LK#NL5_dreamsfull
  SAY @157 /* I believe I'm the living contradiction to your little theory. I am far too old for hopes or dreams, and yet I seem to manage perfectly fine. */
  IF ~~ + LK#NL5_main2
END

IF ~~ LK#NL5_soundslike
  SAY @158 /* And what is wrong with getting what one wishes? Wealth is no use unless it is spent! My birthdays would often cost three thousand gold pieces, 500 Damaran bloodstones, and the life of a peasant--he'd be crushed carrying in the cake, naturally. Oh, don't look at me like that! Just because I expect all your guardian ever got you for your birthday was...a box. Yes. An empty box. */
  ++ @159 /* Don't speak ill of the box, Ninde! Imoen and I would have hours of fun with that box, playing Durlag's tower... */ + LK#NL5_knockbox
  ++ @160 /* Wealth, affluence...these things never concerned me. One can lead a fulfilled life without it. */ + LK#NL5_wealthnever
  ++ @161 /* My childhood may well have been modest, but it has only made me all the more determined to make my future otherwise. */ + LK#NL5_deprived
END

IF ~~ LK#NL5_sillydreamz
  SAY @162 /* Yes, well it may surprise you to learn I was not always the bastion of wisdom, good judgment and overpowering femininity you see before you now. I'd say my aspirations had improved in quality, but I no longer have any. */
  IF ~~ + LK#NL5_main2
END

IF ~~ LK#NL5_iwanted
  SAY @163 /* Bhaalspawn, you truly are a man of no account! All jesting aside, how have your hopes for the future changed? You may still reach the age of dribbling and incontinence, and have the pleasure of being a profound inconvenience to your family, with a little luck... */
  IF ~~ + LK#NL5_main3
END

IF ~~ LK#NL5_knockbox
  SAY @164 /* Well, at least you have a sense of humor about the limitations of your upbringing, it really does irk me when the poor cannot see the inherent comic value of their situation. I suppose it never occurred to you that years later you would not merely be *playing* Durlag's tower, though you may have wished it. But do you now wish the same? With a little luck you might still reach the age of dribbling and incontinence, and have the pleasure of being a profound inconvenience to your family, with a little luck... */
  IF ~~ + LK#NL5_main3
END

IF ~~ LK#NL5_wealthnever
  SAY @165 /* With your powers wealth falls into your lap only too easily. I suppose what you truly desire is something a little more...elusive. You may yet, with a little luck, reach the age of dribbling and incontinence, and have the pleasure of being a profound inconvenience to your family, with a little luck... */
  IF ~~ + LK#NL5_main3
END

IF ~~ LK#NL5_deprived
  SAY @166 /* So you seek riches? You've already accumulated enough to live quite comfortably and pay whoever you want to call you 'lord' for the rest of your days. I sense a deeper force driving you, Bhaalspawn. You may yet, with a little luck, reach the age of dribbling and incontinence, and have the pleasure of being a profound inconvenience to your family, with a little luck... */
  IF ~~ + LK#NL5_main3
END

IF ~~ LK#NL5_main3
  SAY @167 /* Tell me...what do you want to do with the rest of your life? */
  ++ @168 /* To travel and continue adventuring. I have never been the type to settle. */ + LK#NL5_traveland
  ++ @169 /* As unlikely as it sounds, I'd like children, a wife...If anything, all this chaos has left me craving a simple existence somewhere back on the Sword Coast. Run me an ale and call me farmer Bhaalspawn! */ + LK#NL5_family
  ++ @170 /* Riches, ladies, rubies and wine! Simultaneously if possible. */ + LK#NL5_riches
  ++ @171 /* For my bloody rule to extend across Faerun, for all too fear and adore me, the world and its riches in my blood-soaked hands. */ + LK#NL5_bloodyrule
END

IF ~~ LK#NL5_traveland
  SAY @172 /* Hmm...the wandering adventure. The grit of the road in his lashes and an unshaven chin...such a figure would once not have seemed out of place in the sauciest dreams of my adolescence! But it has been so long, I am sure you have forgotten what it is to wake up in a familiar bed. I hope you remember soon, for I would not wish this wandering solitude upon my worst enemy. */
  IF ~~ EXIT
END

IF ~~ LK#NL5_family
  SAY @173 /* A formidable woman this wife would have to be to put up with your nonsense, sweetling. And what children! If they were to take after their grandsire they would be doubtless more abhorrent then your average life-sucking, screaming, snot-laden, dribbling child. Good luck in your endeavor, you certainly won't be able to wrangle Aunty Ninde into any nose wiping or story reading that might be required. */
  IF ~~ EXIT
END

IF ~~ LK#NL5_riches
  SAY @174 /* Sweetness, I never pegged you for a hedonist! And who can blame you--with such skill as yours, however unrefined, you are perfectly capable of making the silliest of buxom virgins swoon, though the rubies might prove a little more difficult. Still, do try to find time amidst your orgies to remember *dear* old Ninde. */
  IF ~~ EXIT
END

IF ~~ LK#NL5_bloodyrule
  SAY @175 /* Your ambition does not disappoint, dearest Bhaalspawn. Ensure your judgement does not falter and I'm sure one day I may, with true pride and humility, call you 'evil overlord Bhaalspawn'. Incidentally, if you're ever on the lookout for a dark queen to oversee your ravening horde or vast realm, I trust you'll agree I'd lend the role some glamour. (wink) */
  IF ~~ EXIT
END


// 6.1
// ---
IF ~Global("LK#NindeLT6.2WakeUp","GLOBAL",0) Global("LK#NindeLoveTalks","GLOBAL",11)~ LK#NL6_intro
  SAY @176 /* Guard duty is truly the most dreary of necessities. <CHARNAME>, sit with me a while, won't you, so that we might talk? */
  ++ @177 /* Very well, I am not too tired. */ DO ~SetGlobal("LK#NindeLT6.2WakeUp","GLOBAL",1)~ + LK#NL6_verywell
  ++ @178 /* Ninde, guard duty is not supposed to be enjoyable. It's a duty that everyone in our party must do, irrespective of how tedious they find it. */ DO ~SetGlobal("LK#NindeLT6.2WakeUp","GLOBAL",1)~ + LK#NL6_doduty
  ++ @179 /* Frankly dear, I'd rather eat envy. */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3) RestParty()~ EXIT
END

IF ~~ LK#NL6_verywell
  SAY @180 /* Wonderful. What shall be talk about? What could we possibly discuss that might break through the darkness of these times? Kittens? No...I know. Love. Let's talk about love, and the trials, tribulations and triumphs thereof. That ought to lighten the collective mood. */
  ++ @181 /* Ah, love is all around us. Love lifts us up where we belong. Was it the wise Alaundo who said 'all you need is love?' */ + LK#NL6_lovelove
  ++ @182 /* I've encountered more of the tribulations than the triumphs, unfortunately. */ + LK#NL6_moretrials
  ++ @183 /* Love is for Sunites and octogenarians. I'm more an advocate of raw, animal lust. */ + LK#NL6_lustplz
  ++ @184 /* There's no time for love on this bloody path. */ + LK#NL6_notime
END

IF ~~ LK#NL6_doduty
  SAY @185 /* I thought washing was supposed to be an unpleasant necessity as well until I encountered your little party. When you manage to convince them to wash--their feet at least--without complaint, I'll do guard duty without complaint, Bhaalspawn. It amounts to the same. */
  ++ @186 /* Ninde, we are adventurers! Dirty, smelly strong adventurers! Adventurers do not wash, as Waterdhavian ladies don't brawl in bars. */ + LK#NL6_machoman
  ++ @187 /* Point taken...the smell is getting a little much. */ + LK#NL6_pointtaken
  + ~InParty("Korgan") !Dead("Korgan")~ + @188 /* Korgan washing would mean Korgan taking his clothes off. And no one, *no one* wants that. */ + LK#NL6_korgybaby
END

IF ~~ LK#NL6_lovelove
  SAY @189 /* Do not speak to me of Alaundo. I had to study Alaundo at the academy. If by some hilarious magical anomaly I should ever meet him, I'll be sure to slap him upside the head for the boredom he has indirectly caused me over the years. */
  = @190 /* But lovers...of those, I've had a few. <CHARNAME>, care you for a tale of boys, black louts and blacker magic? */
  ++ @191 /* Please, continue. */ + LK#NL6_main1
  ++ @192 /* Pfegh, I've heard it all. But never the less, carry on. */ + LK#NL6_main1
  ++ @193 /* On second thought, I have much to lay my mind too tomorrow; I cannot sacrifice what little rest I get to sit up all night listening to your lurid stories. */ DO ~RestParty()~ EXIT
END

IF ~~ LK#NL6_moretrials
  SAY @194 /* That is true of all and sundry, but do not the moments of memories of a certain calm in the morning, a soft head resting on your chest outweigh those of arguments at sunset or the sting of a slap? */
  IF ~~ + LK#NL6_main1
END

IF ~~ LK#NL6_machoman
  SAY @195 /* Hmm, I wouldn't be so sure. You should've seen me after a few ales when a buxom floozy began flirting with Sykre. Of course, spell slinging is more my style, but whatever got the job done. Sykre... */
  = @196 /* Sykre was beautiful. A beautiful, awful fruit cake. I know. I will tell you about him, if you wish to listen. */
  ++ @191 /* Please, continue. */ + LK#NL6_main1
  ++ @192 /* Pfegh, I've heard it all. But never the less, carry on. */ + LK#NL6_main1
  ++ @193 /* On second thought, I have much to lay my mind too tomorrow; I cannot sacrifice what little rest I get to sit up all night listening to your lurid stories. */ DO ~RestParty()~ EXIT
END

IF ~~ LK#NL6_pointtaken
  SAY @197 /* Excellent! I trust you'll be frog-marching us all to a bath-house first thing tomorrow, so I can make myself beautiful again. If Sykre could see me in this state he's undoubtedly--Sykre. */
  = @198 /* Yes. I'll tell you more about Sykre. */
  ++ @191 /* Please, continue. */ + LK#NL6_main1
  ++ @192 /* Pfegh, I've heard it all. But never the less, carry on. */ + LK#NL6_main1
  ++ @193 /* On second thought, I have much to lay my mind too tomorrow; I cannot sacrifice what little rest I get to sit up all night listening to your lurid stories. */ DO ~RestParty()~ EXIT
END

IF ~~ LK#NL6_korgybaby
  SAY @199 /* Ha! Who knows what hell would be unleashed upon these unsuspecting realms. But speaking of the removal of clothes...yes. Love. We'll talk about love, and the trials, tribulations and triumphs thereof. That ought to lighten the collective mood. */
  ++ @181 /* Ah, love is all around us. Love lifts us up where we belong. Was it the wise Alaundo who said 'all you need is love?' */ + LK#NL6_lovelove
  ++ @182 /* I've encountered more of the tribulations than the triumphs, unfortunately. */ + LK#NL6_moretrials
  ++ @183 /* Love is for Sunites and octogenarians. I'm more an advocate of raw, animal lust. */ + LK#NL6_lustplz
  ++ @184 /* There's no time for love on this bloody path. */ + LK#NL6_notime
END

IF ~~ LK#NL6_lustplz
  SAY @200 /* While I admire the sentiment, and agree there's nothing like a long night's red shirting to clear the mind, I like a man who can appreciate the silken nuances of a good romance. And if you can't appreciate such things now, Bhaalspawn, I shall make you. */
  IF ~~ + LK#NL6_main1
END

IF ~~ LK#NL6_notime
  SAY @201 /* How characteristically, grotesquely northern of you, Bhaalspawn. What are you, Illuskan? Lady Sweetwater used to say the best lovers were Chessentans, Halruuans and Thayvians. No coarseness there--all soft hands and sensitive spirits, never did a day's honest labour in their lives. Anyway, if you do not appreciate the silken nuances of a great love, I shall make you. */
  IF ~~ + LK#NL6_main1
END

IF ~~ LK#NL6_main1
  SAY @202 /* In my youth I was sent to one of Waterdeep's most prestigious magical academies, The Seminary of Mystryl. I was never the most dedicated student, however, more pre-occupied by my own burgeoning charm and how to employ it on the sons of my father's business associates, often to great effect. They were noisy, red-cheeked northern boys, who wouldn't look out of place with their backs glistening over fields anywhere in the Heartlands, though naturally had cut-glass elocution and a passion for team sports, fencing and pretty debutantes such as myself. */
  = @203 /* The courtship was hollow, however. Unlike many of my friends I had no intention of marrying just any muscular lad who scaled my balcony at night with a bunch of white roses; besides, I was to be the inheritor of a powerful trading coster, I didn't need their wealth or their thick shoulders. But I knew men early, and enjoyed being an object of their desires, a daughter of one of Waterdeep's great families. */
  ++ @204 /* Go on. */ + LK#NL6_main2
  ++ @205 /* Very interesting, but I'm going to turn in now. */ DO ~RestParty()~ EXIT
END

IF ~~ LK#NL6_main2
  SAY @206 /* Little did I know my family, the Amblecrowns, were about to fall into decline. It happened with the death of my adoptive father, Inaed, which I may or may not have told you, plunged me briefly into a torrent of emotions I was unfamiliar with. They broke me. It was just before his death I met Sykre. At a ball at the Prufrock's I was introduced to him; a handsome young man from the Moonsea, poor but beautiful in a grey silk shirt, with long eyelashes, matching scars on his cheeks, and a rapier on his strong flank. */
  = @207 /* He had fled from Mulmaster, where all spellcasters of a certain power are recquired to join the Cloaks, a militaristic organisation. He had been tortured, a sure aphrodisiac to the naïve young girl. His hands shook when he grasped the stem of a goblet. I was drunk on wine, he on the joy of surviving to hold another woman in his arms, before a window outside which snow fell. He laughed at everything I said, had a teasing foreign lilt on his lips and a fierceness to his movements. I fell asleep and he packed me into a coach back to the Amblecrown manor. I had only the name to remember him by; Sykre D'Alysoss. */
  = @208 /* I did not think I would see him again, but to my surprise he was hired as a tutor at the Seminary--teaching, naturally, Necromancy. I insinuated my way into his classes to hear that lilting voice, developed a taste for dissections to feel his steady hand guiding my own. Our intimacy was never repeated, however...I'm sure that now he was my tutor, he felt it would be inappropriate. I'd always known when a man desired me, though, and did not give in. */
  ++ @209 /* He was your teacher. You dissected things to win a special place in his heart. This story is creepy on so many levels. Then again, you're Ninde. What did I expect? */ + LK#NL6_ewnonce
  ++ @210 /* You really know how to tell a story. Go on. */ + LK#NL6_know2tell
  ++ @211 /* This is truly, irrepressibly boring. I'm going to bed. */ DO ~RestParty()~ EXIT
END

IF ~~ LK#NL6_ewnonce
  SAY @212 /* What did you expect, indeed. Like all aspects of my life, my love life was unconventional to say the least. Ahh...I tire of this story. Mayhaps I'll be in the mood to continue tomorrow morning. Until then, rest well, Bhaalspawn. */
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ LK#NL6_know2tell
  SAY @213 /* Perhaps...though truth be told, I tire of this story, for tonight. Perhaps if the mood strikes me I'll continue tomorrow. For now, good night, Bhaalspawn. */
  IF ~~ DO ~RestParty()~ EXIT
END


// 6.2
// ---
IF ~Global("LK#NindeLT6.2WakeUp","GLOBAL",1)~ LK#NL6.2_intro
  SAY @214 /* Good morrow, dear. Care for me to finish that story? I'm rather in the mood for a little reminiscing. */
  ++ @215 /* Certainly, I'd never say no to one of your stories. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1) IncrementGlobal("LK#NindeLT6.2WakeUp","GLOBAL",1)~ + LK#NL6.2_main1
  ++ @216 /* Ah, more creepy antics of Sykre and Ninde. Why not? */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1) IncrementGlobal("LK#NindeLT6.2WakeUp","GLOBAL",1)~ + LK#NL6.2_main1
  ++ @217 /* There's much to be done, Ninde. I'm not sure there's time right now. */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NL6.2_main1
  SAY @218 /* Very well. Where was I...hmm, yes... */
  = @219 /* My father died on a balmy Mirtul morning, and my education at the Seminary was suspended. His funeral took place days later, in a mild spring rain, and I stood by the side of his crypt with my brother's hand on my shoulder. Sykre waited for me at a small shrine to Myrkul just outside that boneyard. I broke away from the procession to go there and he pressed a dagger up against my throat. Ordinarily I would've been frightened...but with his body and his face close to mine, his shirt damp and just barely open... */
  = @220 /* It was one of the most erotic moments of my life. He took me there on the altar. Yes, I know, he took advantage of me. My life...my life became increasingly volatile. Sykre, it transpired, had not merely been an escapee of the Cloaks of Mulmaster, but was a Shadow Mage; one of those who practice their magics on the very edge of the weave. He was a student of the secretive Iron Fang keep, an enclave of such mages most had only heard of in hushed legend. */
  = @221 /* My brother, Shar watch over his soul, was a businessman of the worst degree, and it was not long before the coster began to falter. As all I had known disintegrated, Sykre drew me deeper into his world; and introduced me to his friends. The Night Hand. They were dark, intoxicating times. My powers grew immensely, fuelled by the desire to impress and match my new compatriots in power. Respen, my brother, saw what I had become involved in but was too pre-occupied to intervene...but...no. The story of my time with the Night Hand is--is something else. */
  = @222 /* But Sykre...I loved him, in a way. And he certainly was...hmm. */
  ++ @223 /* And what became of Sykre, in the end? */ + LK#NL6.2_whatbecame
  ++ @224 /* That was certainly...interesting. And by interesting I mean downright unsettling. */ + LK#NL6.2_interested
  ++ @225 /* You were corrupted by your love for him. One should not dedicate oneself so entirely to another; it can only lead to hardship. */ + LK#NL6.2_corruptedzzz
  ++ @226 /* Ah, love, the sweetest of things. */ + LK#NL6.2_lovesies
END

IF ~~ LK#NL6.2_whatbecame
  SAY @227 /* He was hanged not long after the Time of Troubles for the murder of a group of Selunites. Much of the Night Hand met a similar fate. Some escaped, I believe...Nemphre fled to Baldur's Gate, and she may still be alive. Orachus Dilatuvel is undoubtedly still conducting his own one-man rampage in Calimport. Lord Nycticorax bought the authorities off, and still lives in Waterdeep as far as I know. And...and I, of course...he was the only man that ever frightened me. */
  = @228 /*  Now and then I still feel him at my back. */
  IF ~~ EXIT
END

IF ~~ LK#NL6.2_interested
  SAY @229 /* My dear Bhaalspawn, one falls in love to be unsettled. Perhaps Sykre was not the wisest choice of first love, but I lived to tell the tale. To tell *you* the tale, in fact. He...he was the only man ever to frighten me...and when I felt at my most invulnerable. Now and then I still feel him at my back. */
  IF ~~ EXIT
END

IF ~~ LK#NL6.2_corruptedzzz
  SAY @230 /* Bhaalspawn, I never lived for purity or virtue, and neither for vice, which you'd do well enough to learn. He...he frightened me, truth be told. And he was the only man ever to do so. That was it. That was enough. I sometimes still hear his voice at my back. */
  IF ~~ EXIT
END

IF ~~ LK#NL6.2_lovesies
  SAY @231 /* Our love was many things, but never sweet, <CHARNAME>. */
  IF ~~ EXIT
END

// 7.
// --
IF ~Global("LK#NindeLoveTalks","GLOBAL",13)~ LK#NL7_intro
  SAY @232 /* I've not exactly been rose petals, incense and a kitten to you. Out of curiosity, have you wondered why I haven't slit your throat and made off with all your gold yet? */
  ++ @233 /* Er...no? Should I be? */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL7_suspicion
  ++ @234 /* No, because I know that deep down you *are* a kitten. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL7_deepdown
  ++ @235 /* No, you haven't been rose petals, incense and a kitten. You've actually been a callous bitch who has embraced every opportunity to remind me of the difficulties of my situation and eradicate any hope I had left. I'd probably be much better off without you. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL7_notroses
END

IF ~~ LK#NL7_suspicion
  SAY @236 /* No. No, you shouldn't be. I confess that was my original plan, but a girl's got to have a little fluidity when it comes to these things. */
  IF ~~ + LK#NL7_main1
END

IF ~~ LK#NL7_deepdown
  SAY @237 /* A kitten from a lion's den. I'm not so certain of that--what I am certain of is that I certainly joined this group with the intention of putting a knife to your neck, and making off with enough to gold to choke a dragon on. But I couldn't do it. */
  IF ~~ + LK#NL7_main1
END

IF ~~ LK#NL7_notroses
  SAY @238 /* My dear, it's not as though you took me along to be your friend, is it? Hm, perhaps if that's how you feel, <CHARNAME>, we shall see how well you do without me. Try not to get yourself *too* killed, sugarplum. */
  IF ~~ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3) SetGlobal("LK#NindeJoined","LOCALS",0) LeaveParty() /*teleportaway*/ EscapeArea()~ EXIT
END

IF ~~ LK#NL7_main1
  SAY @239 /* The truth is, I like you. I didn't expect to, but I do. You're powerful, attractive and rich. */
  ++ @240 /* What superficial reasons to like someone. */ + LK#NL7_superficial
  ++ @241 /* I like you too, Ninde. You're caustic, cutting cruel...and I wouldn't have you any other way. */ + LK#NL7_ilikeyou2
  ++ @242 /* I am, aren't I? Hehe. */ + LK#NL7_lookingood
  ++ @243 /* Aha, so you confess you joined this group with the intention of killing me! */ + LK#NL7_wtftraitor
END

IF ~~ LK#NL7_superficial
  SAY @244 /* Well, do you expect me to like you for your *personality*? Although that's all very well and good, it is...it is something else about you that attracts me. */
  ++ @245 /* My astonishing good looks and boyish charms claim another victim! */ + LK#NL7_lookingood
  ++ @246 /* The feeling is mutual, my dear... */ + LK#NL7_ilikeyou2
  ++ @247 /* Perfect. For all I know that 'something else' could be the bounty on my head. And you seem the type. */ + LK#NL7_another
END

IF ~~ LK#NL7_lookingood
  SAY @248 /* And if you had any more personal magnetism thieves would likely be able to do significantly more damage with their poorly-aimed throwing knives. I'm...I'm not exaggerating. */
  IF ~~ + LK#NL7_main2
END

IF ~~ LK#NL7_ilikeyou2
  SAY @249 /* I feel I should warn you--the people who like me are rather prone to, well...horrible death. Then again, that seems a likely enough end for you, anyway. The funny thing is, I rather don't want that for you. */
  IF ~~ + LK#NL7_main2
END

IF ~~ LK#NL7_main2
  SAY @250 /* It's been a long time since I've met anyone I liked, boy. */
  ++ @251 /* Great, so I've gone from 'Bhaalspawn' to 'boy'. You'll be asking me to address you by your title next. */ + LK#NL7_beetobee
  ++ @252 /* And...and I like you too. You're a worthy companion and despite your multitude of flaws...a, erm, interesting friend. */ + LK#NL7_andilike
  ++ @253 /* (smile) If it so rarely bestowed, then your appreciation is an even greater honour, Ninde. */ + LK#NL7_greathonour
END

IF ~~ LK#NL7_wtftraitor
  SAY @254 /* Verily, I did. */
  IF ~~ + LK#NL7_traitor
END

IF ~~ LK#NL7_another
  SAY @255 /* Verily, that was my sole intention when I first joined your group. */
  IF ~~ + LK#NL7_traitor
END

IF ~~ LK#NL7_traitor
  SAY @256 /* But what does that matter? I did not. Could not. If you had any more personal magnetism thieves would likely be able to do significantly more damage with their poorly-aimed throwing knives. I'm...I'm not exaggerating. It's been a long time since I've met anyone I liked, boy. */
  ++ @251 /* Great, so I've gone from 'Bhaalspawn' to 'boy'. You'll be asking me to address you by your title next. */ + LK#NL7_beetobee
  ++ @252 /* And...and I like you too. You're a worthy companion and despite your multitude of flaws...a, erm, interesting friend. */ + LK#NL7_ilikeyou2
  ++ @253 /* (smile) If it so rarely bestowed, then your appreciation is an even greater honour, Ninde. */ + LK#NL7_greathonour
  ++ @257 /* I'm afraid I cannot tolerate your double-crossing any longer, Ninde! You admit you joined this group with the sole intention of murdering me, then expect our conversation to continue? Hah! Draw steel! */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3) SetGlobal("LK#NindeJoined","LOCALS",0) LeaveParty() Enemy()~ EXIT
END

IF ~~ LK#NL7_beetobee
  SAY @258 /* Lady Amblecrown; it has a certain elegance on the tongue, does it not? (wink) */
  IF ~~ EXIT
END

IF ~~ LK#NL7_andilike
  SAY @259 /* Hah, 'interesting' might very well be the word, sugarplum. */
  IF ~~ EXIT
END

IF ~~ LK#NL7_greathonour
  SAY @260 /* Goodness, you're more slimy then Aran Linvail's washcloth today, dear. (smirk) */
  IF ~~ EXIT
END


// 8.
// --
IF ~Global("LK#NindeLoveTalks","GLOBAL",15)~ LK#NL8_intro
  SAY @261 /* Correct me if I'm wrong, my dear Bhaalspawn, but it seems as though you haven't given much thought as to how you intend to prevent Bodhi, Irenicus and company from using us as so many jars of strawberry preserve. */
  = @262 /* From grinding our bones into luxury bath salts, performing an elaborate puppet show with our skulls, perhaps, if they feel any sort of civic duty, using our dismembered arms to pick up litter from Waukeen's Promenade. Oh, and to complete the festivities, they'll do an abstract finger-painting of our crushing defeat on our dried hides. It will be so terribly amusing for everyone who isn't us. And frankly, I care very little for any who isn't us. Or rather, me. */
  ++ @263 /* And then make stylish lace gloves from our entrails, I suppose. Yes, I'm working on a way round that. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL8_forget
  ++ @264 /* Hah! I'd like to see that leathery undead bimbo and pasty-faced maggotty mageling try! */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL8_machoman
  ++ @265 /* I doubt there can be any planning or strategising for the confrontation that is to come. We will survive, or we will not. It's as simple as that. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL8_liveornot
  ++ @266 /* Worry not, Ninde, I have a flawless strategy all worked out. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL8_flawless
END

IF ~~ LK#NL8_forget
  SAY @267 /* You seem to forget, sugarlump, that Bodhi and myself were on first-name terms for many years, and I've been busy plotting the demise of that neck-munching know-it-all since before you could reach the top shelves in your beloved library. */
  IF ~~ + LK#NL8_knowher
END

IF ~~ LK#NL8_machoman
  SAY @268 /* And that is precisely the sort of macho posturing that got you into this mess in the first place, and certainly won't get you out of it. The dirtnapping slattern and booming-voiced sadist will, sooner or later, come back to finish you off, and stomping about like some snout-nosed ursine isn't going to avert that. */
  = @269 /* You seem to have forgot that I am, perhaps, the best equipped to help you get Bodhi that extra little bit dead. And I assure you, no one has more passion for the endeavour. In fact, I've been busy plotting the demise of that neck-munching know-it-all since before you could reach the top shelves in your beloved library. */
  ++ @270 /* Yes, I suppose you're a veritable font of inside information on our enemies...it could come in very helpful. */ + LK#NL8_share
  ++ @271 /* Why don't you like Bodhi? Aside from the obvious, predatory-killer reasons. */ + LK#NL8_whynotlike
  ++ @272 /* And I suppose you're overflowing with helpful suggestions? As far as I can see, brute force is the most effective way to deal with Bodhi and her ilk. */ + LK#NL8_bruteforce
  ++ @273 /* Keep your trap shut, and leave the battle-plan to those better equipped to carry it out. */ + LK#NL8_endall
END

IF ~~ LK#NL8_liveornot
  SAY @274 /* And I'm afraid, <CHARNAME>, this is where you are wrong. You seem to forget, sugarlump, that Bodhi and myself were on first-name terms for many years, and I've been busy plotting the demise of that neck-munching know-it-all since before you could reach the top shelves in your beloved library. */
  IF ~~ + LK#NL8_knowher
END

IF ~~ LK#NL8_knowher
  SAY @275 /* I also know her. I have it on good authority that her favourite flower is the daffodil and she doesn't like cheese, that strange film that often forms on the top of hot drinks, or people touching her feet. In short, no-one is better equipped to help you destroy her, and no-one has more passion for doing so. */
  ++ @276 /* Perfect! We place a bunch of daffodils in the middle of her crypt, and set lots of bear-traps round them. When she comes skulking out to get the flowers, she'll get caught in one of the bear-traps, and then, before she knows what's hit her, CHEESE! Cheese, cheese, cheese from every direction! And when she is finally subdued, we'll all touch her feet! Why did I not think of it before? */ + LK#NL8_madplan
  ++ @270 /* Yes, I suppose you're a veritable font of inside information on our enemies...it could come in very helpful. */ + LK#NL8_share
  ++ @277 /* What use is any of this banal trivia to me, Ninde? I'm trying to fight her, not write an amusing profile on her for 'Bloodsucking Fiends Periodical.' */ + LK#NL8_banal
  ++ @278 /* Why don't you like Bodhi? Aside for the obvious, predatory-killer reasons. */ + LK#NL8_whynotlike
END

IF ~~ LK#NL8_flawless
  SAY @279 /* And you would rely on these hapless buffoons to perform it? My dear, with an adventuring group this dire, even the Red Knight would not be able to formulate a fool-proof stratagem for victory. It would appear that I am, as always, your greatest asset. */
  ++ @280 /* My greatest asset with the greatest assets! (wink) */ + LK#NL8_omgsexist
  ++ @281 /* That doesn't inspire much hope, but go on. */ + LK#NL8_forget
  ++ @282 /* How is it you can help me? */ + LK#NL8_forget
  ++ @283 /* You? My greatest asset? Ha! I only keep you around for the view. */ + LK#NL8_endall
END

IF ~~ LK#NL8_madplan
  SAY @284 /* (smiles) <CHARNAME>, however endearing your silliness can be, it is, upon occasion, grating. I merely sought to illustrate my encyclopaedic knowledge of the wench, and the course of action it suggests. Which, I believe, is subtlety. */
  = @285 /* She has made a very great mistake already; releasing you into Spellhold. */
  IF ~~ + LK#NL8_main1
END

IF ~~ LK#NL8_share
  SAY @286 /* I am. And this encyclopaedic knowledge of the wench has led me to conclude that you are made a greater threat to her by the sheer fact she believes you are not one. */
  ++ @287 /* That's all very well and good, but what should I *do*? */ + LK#NL8_main2
  ++ @288 /* Wait...so what is it that you are suggesting we do, exactly? */ + LK#NL8_main2
  ++ @289 /* Is that all? I had figured that out myself. */ + LK#NL8_endall
END

IF ~~ LK#NL8_banal
  SAY @290 /* As a necromancer, and hence an expert on the topic of bloodsucking fiends, I believe I'd know if such a publication exists, and happen to be fairly sure it doesn't. But anyway, Bhaalspawn, do not be so dense; I merely sought to illustrate my encyclopaedic knowledge of the wench, and the course of action it suggests. Which, I believe, is subtlety. */
  = @285 /* She has made a very great mistake already; releasing you into Spellhold. */
  IF ~~ + LK#NL8_main1
END

IF ~~ LK#NL8_whynotlike
  SAY @291 /* Because she is badly dressed, bestial, and insists on decorating her lair in that garish Mulhorandi fashion; hieroglyphic motifs are best used in small doses, a simple rule of interior design Bodhi remains blissfully ignorant of. She is irritatingly cryptic, cryptically irritating, and, when one thinks about it, more a mosquito than a queen among the undead. */
  ++ @292 /* You obviously *want* to destroy her, but do you have an effective way of doing so? */ + LK#NL8_mistake
  ++ @293 /* She gets my blood up to, if you'll excuse the pun. So I suppose you have a clever plan as to how to kill her slowly, painfully and with optimal humiliation? */ + LK#NL8_mistake
  ++ @294 /* I care little for your personal dislike of her. She's merely an obstacle in my way to Irenicus. */ + LK#NL8_mistake
END

IF ~~ LK#NL8_mistake
  SAY @295 /* Fortunately, she has made a very great mistake already; releasing you into Spellhold. */
  IF ~~ + LK#NL8_main1
END

IF ~~ LK#NL8_bruteforce
  SAY @296 /* Dear, you're so very, very wrong. I believe the situation calls overwhelmingly for subtlety; you are made a greater threat to her by the sheer fact she believes you are not one. */
  ++ @287 /* That's all very well and good, but what should I *do*? */ + LK#NL8_main2
  ++ @288 /* Wait...so what is it that you are suggesting we do, exactly? */ + LK#NL8_main2
  ++ @289 /* Is that all? I had figured that out myself. */ + LK#NL8_endall
END

IF ~~ LK#NL8_endall
  SAY @297 /* If you truly hold my opinions in this matter in such low esteem, you'll hear no more of them, dolt. You'll choke on your own ineptitude, sooner or later. */
  IF ~~ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NL8_main1
  SAY @298 /* She did this under the strength of her belief in her own invulnerability, and this is her greatest weakness. She places too much stock in your divine heritage, and believes without it you are helpless. The...the strange new ways your heritage have revealed themselves forced her to re-evaluate this somewhat, but nonetheless, you are made a greater threat to her by the sheer fact she believes you are not one. */
  ++ @287 /* That's all very well and good, but what should I *do*? */ + LK#NL8_main2
  ++ @288 /* Wait...so what is it that you are suggesting we do, exactly? */ + LK#NL8_main2
  ++ @289 /* Is that all? I had figured that out myself. */ + LK#NL8_endall
END

IF ~~ LK#NL8_omgsexist
  SAY @299 /* Yes, this is true, but nonetheless, we are discussing what is possibly the only thing in which my lovely feminine appendages are irrelevant; how to overcome Bodhi. Fortunately, she has made a very large mistake already; She places too much stock in your divine heritage, and believes without it you are helpless. The...the strange new ways your heritage have revealed themselves forced her to re-evaluate this somewhat, but nonetheless, you are made a greater threat to her by the sheer fact she believes you are not one. */
  ++ @287 /* That's all very well and good, but what should I *do*? */ + LK#NL8_main2
  ++ @288 /* Wait...so what is it that you are suggesting we do, exactly? */ + LK#NL8_main2
  ++ @289 /* Is that all? I had figured that out myself. */ + LK#NL8_endall
END

IF ~~ LK#NL8_main2
  SAY @300 /* The most effective course of action is undoubtedly caution--intrigue. Keep a low profile, let her believe you're busy making friends with the worms and that insufferable riddle spirit in Spellhold. Return to Athkatla, find friends wherever there are friends to be found, and attack. I have little doubt she has returned to her old lair--and she will be severely weakened. With any luck the task should be even easier than it was last time. But under no account are you to allow her to see you are yet strong, even with Bhaal's essence removed. */
  = @301 /* While it is true that your recently acquired new...'abilities' may have given her some indication of this...denial is a very powerful thing. */
  ++ @302 /* You think storming those vampire-ridden crypts was *easy* last time, do you? */ + LK#NL8_easyeh
  ++ @303 /* That's not a bad idea, actually. There are many in Athkatla who owe us favours who I'm sure we could rope into helping. */ + LK#NL8_ropeinto
  ++ @304 /* Well, that was useless. */ + LK#NL8_endall
  ++ @305 /* Bodhi is small fry compared to Irenicus--he is the priority. Have you any bright ideas for overcoming him? */ + LK#NL8_brightideas
END

IF ~~ LK#NL8_easyeh
  SAY @306 /* I would've found it easy in your position, but then, it has been said that the only things I am not good at are being poor, getting into the trouble, and saying no to handsome men. Hehe. */
  ++ @307 /* Aren't you forgetting a few things, there? (grin) */ + LK#NL8_forgetting
  ++ @308 /* And it's certainly true! You're indispensable, Ninde. */ + LK#NL8_indispensable
  ++ @309 /* In that case...hmm, why don't you slip into my bedroll tonight for a little fun? */ + LK#NL8_bedrollz
  ++ @310 /* Don't make me laugh, fool. */ EXIT
END

IF ~~ LK#NL8_ropeinto
  SAY @311 /* It's not a bad idea at all, is it? Then again, it has been said that the only things I am not good at are being poor, getting into the trouble, and saying no to handsome men. Hehe. */
  ++ @307 /* Aren't you forgetting a few things, there? (grin) */ + LK#NL8_forgetting
  ++ @308 /* And it's certainly true! You're indispensable, Ninde. */ + LK#NL8_indispensable
  ++ @309 /* In that case...hmm, why don't you slip into my bedroll tonight for a little fun? */ + LK#NL8_bedrollz
  ++ @310 /* Don't make me laugh, fool. */ EXIT
END

IF ~~ LK#NL8_brightideas
  SAY @312 /* As far as I can tell, Irenicus is all tight trousers and creepy sewn-on face. I would find it simple enough to defeat him, in your situation - but then, it has been said that the only things I am not good at are being poor, getting into the trouble, and saying no to handsome men. Hehe. */
  ++ @307 /* Aren't you forgetting a few things, there? (grin) */ + LK#NL8_forgetting
  ++ @308 /* And it's certainly true! You're indispensable, Ninde. */ + LK#NL8_indispensable
  ++ @309 /* In that case...hmm, why don't you slip into my bedroll tonight for a little fun? */ + LK#NL8_bedrollz
  ++ @310 /* Don't make me laugh, fool. */ EXIT
END

IF ~~ LK#NL8_forgetting
  SAY @313 /* Ah, yes. Seal clubbing; I simply can't abide by it. And I can't play the harpsichord, either. (smiles) */
  IF ~~ EXIT
END

IF ~~ LK#NL8_indispensable
  SAY @314 /* It's nice to see that my status as a generally exemplary elf is appreciated. (smiles) */
  IF ~~ EXIT
END

IF ~~ LK#NL8_bedrollz
  SAY @315 /* No. (smile) */
  IF ~~ EXIT
END


// 9. Racial (tall races)
// ----------------------
IF ~Global("LK#NindeLoveTalks","GLOBAL",17) OR(4) Race(Player1,HUMAN) Race(Player1,HALFORC) Race(Player1,ELF) Race(Player1,HALF_ELF)~ LK#NL9_tall_intro
  SAY @316 /* (As you walk along, you become slowly immune to the sounds around you, be they the obtrusive flit of birdsong, or the crunch of dust beneath your weary feet. But you do, however, notice the quick colt-like steps, behind you. As they momentarily wake you from the drudgery of marching, you feel two arms rubbing up across your shoulders, along your jaw, and sliding up towards your eyes. They are round and warm. Their fingers work their way across your brow and temples, before abruptly falling to your shoulders once again.) */
  = @317 /* Hello, Bhaalspawn. */
  ++ @318 /* Hello Ninde. Come to torment me? (smile) */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL9_tall_torment
  ++ @319 /* Well, if it isn't the exemplary elf. How are you today? */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL9_tall_exemplary
  ++ @320 /* I feel I must forewarn you that I'm not in the mood for your antics right now. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL9_tall_warning
END

IF ~~ LK#NL9_tall_torment
  SAY @321 /* <CHARNAME>! Quite the opposite indeed. I came to tell you how very handsome you looked today. */
  ++ @322 /* Hmm...what is it you're after, Ninde? I always have to take your compliments with a pinch of salt. */ + LK#NL9_tall_pinchof
  ++ @323 /* I make it my business to *always* look fabulous. */ + LK#NL9_tall_fabulous
  + ~Race(Player1,HUMAN)~ + @324 /* While I appreciate the sentiment, I'm certain I look like I feel. Haggard and bruised, like something Firkraag chewed up and spat out again. */ + LK#NL9_human_haggard
  + ~Race(Player1,HALFORC)~ + @324 /* While I appreciate the sentiment, I'm certain I look like I feel. Haggard and bruised, like something Firkraag chewed up and spat out again. */ + LK#NL9_halforc_haggard
  + ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF)~ + @324 /* While I appreciate the sentiment, I'm certain I look like I feel. Haggard and bruised, like something Firkraag chewed up and spat out again. */ + LK#NL9_elf_haggard
  ++ @325 /* Thank you...it's quite enough to make a Bhaalspawn blush! */ + LK#NL9_tall_blush
END

IF ~~ LK#NL9_tall_exemplary
  SAY @326 /* Quite well, pet, though not half as well as you, I'd wager. */
  IF ~~ + LK#NL9_tall_main1
END

IF ~~ LK#NL9_tall_main1
  SAY @327 /* You're positively glowing...mm, and how very well it becomes you. */
  ++ @322 /* Hmm...what is it you're after, Ninde? I always have to take your compliments with a pinch of salt. */ + LK#NL9_tall_pinchof
  ++ @323 /* I make it my business to *always* look fabulous. */ + LK#NL9_tall_fabulous
  + ~Race(Player1,HUMAN)~ + @324 /* While I appreciate the sentiment, I'm certain I look like I feel. Haggard and bruised, like something Firkraag chewed up and spat out again. */ + LK#NL9_human_haggard
  + ~Race(Player1,HALFORC)~ + @324 /* While I appreciate the sentiment, I'm certain I look like I feel. Haggard and bruised, like something Firkraag chewed up and spat out again. */ + LK#NL9_halforc_haggard
  + ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF)~ + @324 /* While I appreciate the sentiment, I'm certain I look like I feel. Haggard and bruised, like something Firkraag chewed up and spat out again. */ + LK#NL9_elf_haggard
  ++ @325 /* Thank you...it's quite enough to make a Bhaalspawn blush! */ + LK#NL9_tall_blush
END

IF ~~ LK#NL9_tall_warning
  SAY @328 /* Antics? The way you talk about me you'd think I was a mischievous child. I simply wished to tell you how good you look today. */
  IF ~~ + LK#NL9_tall_main1
END

IF ~~ LK#NL9_tall_pinchof
  SAY @329 /* I have ulterior motives, I assure you. I merely imagined you'd never been told before how very handsome you are. */
  IF ~Race(Player1,HUMAN)~ + LK#NL9_human_main2
  IF ~Race(Player1,HALFORC)~ + LK#NL9_halforc_main2
  IF ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF)~ + LK#NL9_elf_main2
END

IF ~~ LK#NL9_human_main2
  SAY @330 /* Hmm...I always did favour human lovers above those of my own race--you've a certain hardiness about you that's most attractive. Not to mention *chest hair*. */
  ++ @331 /* You'd be wrong there. You're...you're not the first woman to have thought me handsome. */ + LK#NL9_tall_formerlovers
  ++ @332 /* Aha, so your ulterior motive is to harvest my chest hair. Chest hair of a Bhaalspawn; that sounds like it'd have a few good magical properties. */ + LK#NL9_tall_chesthair
  ++ @333 /* Funnily enough I always preferred elfin women to any other--there's something lovely about a girl with pointy ears and infravision. */ + LK#NL9_tall_hotelf
END

IF ~~ LK#NL9_halforc_main2
  SAY @334 /* Hmm...I always did favour half-orc men--you've a certain hardiness about you that's most attractive. Not to mention *tusks*. */
  ++ @331 /* You'd be wrong there. You're...you're not the first woman to have thought me handsome. */ + LK#NL9_tall_formerlovers
  ++ @335 /* Aha, so your ulterior motive is to harvest my tusks. Tusk of a Bhaalspawn; that sounds like it'd have a few potent magical properties. */ + LK#NL9_tall_orcelf
  ++ @333 /* Funnily enough I always preferred elfin women to any other--there's something lovely about a girl with pointy ears and infravision. */ + LK#NL9_tall_hotelf
END

IF ~~ LK#NL9_elf_main2
  SAY @336 /* I've always liked an elfin male– you've a certain grace about you that's most attractive. Not to mention the *ears*. */
  ++ @331 /* You'd be wrong there. You're...you're not the first woman to have thought me handsome. */ + LK#NL9_tall_formerlovers
  ++ @337 /* Aha, so your ulterior motive is to harvest my ears. Ear of a Bhaalspawn; that sounds like it'd have a few good magical properties. */ + LK#NL9_tall_orcelf
  ++ @333 /* Funnily enough I always preferred elfin women to any other--there's something lovely about a girl with pointy ears and infravision. */ + LK#NL9_tall_hotelf
END

IF ~~ LK#NL9_tall_fabulous
  SAY @338 /* And you certainly succeed, though it's possible for a man to spend a little too much time on personal grooming. */
  IF ~Race(Player1,HUMAN)~ + LK#NL9_human_main2
  IF ~Race(Player1,HALFORC)~ + LK#NL9_halforc_main2
  IF ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF)~ + LK#NL9_elf_main2
END

IF ~~ LK#NL9_human_haggard
  SAY @339 /* You look quite the opposite, Bhaalspawn, I assure you, though undoubtedly your modesty stems from being not told often enough how handsome you are, if at all. Hmm...I always did favour human lovers above those of my own race--you've a certain hardiness about you that's most attractive. Not to mention *chest hair*. */
  = @340 /* As for your bruises and such, well--with a little aloe balm and some arnica they should clear up well enough, though I personally feel they add to your rugged charm. */
  ++ @341 /* I didn't know you had such a knowledge of herbal cures. No offence, but considering your temperament, it's a little suprising. */ + LK#NL9_tall_surprisederb
  ++ @331 /* You'd be wrong there. You're...you're not the first woman to have thought me handsome. */ + LK#NL9_tall_formerlovers
  ++ @342 /* Aha, so your ulterior motive is to harvest my chest hair. Chest hair of a Bhaalspawn; that sounds like it'd have a few potent magical properties. */ + LK#NL9_tall_chesthair
  ++ @343 /* Ninde...are you, well...do you want to sleep with me? You're certainly talking like you do, you little hornbag! */ + LK#NL9_tall_hornbag
  ++ @333 /* Funnily enough I always preferred elfin women to any other--there's something lovely about a girl with pointy ears and infravision. */ + LK#NL9_tall_hotelf
  ++ @344 /* That's quite enough of your flattery Ninde, I can't abide sweet talk. Leave me be. */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NL9_halforc_haggard
  SAY @345 /* You look quite the opposite, Bhaalspawn, I assure you, though undoubtedly your modesty stems from being not told often enough how handsome you are, if at all. Hmm...I always did favour half-orc men--you've a certain hardiness about you that's most attractive. Not to mention *tusks*. */
  = @340 /* As for your bruises and such, well--with a little aloe balm and some arnica they should clear up well enough, though I personally feel they add to your rugged charm. */
  ++ @341 /* I didn't know you had such a knowledge of herbal cures. No offence, but considering your temperament, it's a little suprising. */ + LK#NL9_tall_surprisederb
  ++ @331 /* You'd be wrong there. You're...you're not the first woman to have thought me handsome. */ + LK#NL9_tall_formerlovers
  ++ @335 /* Aha, so your ulterior motive is to harvest my tusks. Tusk of a Bhaalspawn; that sounds like it'd have a few potent magical properties. */ + LK#NL9_tall_orcelf
  ++ @343 /* Ninde...are you, well...do you want to sleep with me? You're certainly talking like you do, you little hornbag! */ + LK#NL9_tall_hornbag
  ++ @333 /* Funnily enough I always preferred elfin women to any other--there's something lovely about a girl with pointy ears and infravision. */ + LK#NL9_tall_hotelf
  ++ @344 /* That's quite enough of your flattery Ninde, I can't abide sweet talk. Leave me be. */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NL9_elf_haggard
  SAY @346 /* You look quite the opposite, Bhaalspawn, I assure you, though undoubtedly your modesty stems from being not told often enough how handsome you are, if at all. Hmm...I've always liked an elfin male– you've a certain grace about you that's most attractive. Not to mention the *ears*. */
  = @340 /* As for your bruises and such, well--with a little aloe balm and some arnica they should clear up well enough, though I personally feel they add to your rugged charm. */
  ++ @341 /* I didn't know you had such a knowledge of herbal cures. No offence, but considering your temperament, it's a little suprising. */ + LK#NL9_tall_surprisederb
  ++ @331 /* You'd be wrong there. You're...you're not the first woman to have thought me handsome. */ + LK#NL9_tall_formerlovers
  ++ @337 /* Aha, so your ulterior motive is to harvest my ears. Ear of a Bhaalspawn; that sounds like it'd have a few good magical properties. */ + LK#NL9_tall_orcelf
  ++ @343 /* Ninde...are you, well...do you want to sleep with me? You're certainly talking like you do, you little hornbag! */ + LK#NL9_tall_hornbag
  ++ @333 /* Funnily enough I always preferred elfin women to any other--there's something lovely about a girl with pointy ears and infravision. */ + LK#NL9_tall_hotelf
  ++ @344 /* That's quite enough of your flattery Ninde, I can't abide sweet talk. Leave me be. */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NL9_tall_blush
  SAY @347 /* I doubt you've been told before just how handsome you are. */
  IF ~Race(Player1,HUMAN)~ + LK#NL9_human_main2
  IF ~Race(Player1,HALFORC)~ + LK#NL9_halforc_main2
  IF ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF)~ + LK#NL9_elf_main2
END

IF ~~ LK#NL9_tall_formerlovers
  SAY @348 /* You have loved before? And here I thought you were too young for such things. Care to tell me about it? */
  ++ @349 /* Her...her name was Dynaheir. She was a Rashemaar mage, as powerful as she was beautiful. */ + LK#NL9_tall_dynaheir
  ++ @350 /* She...was called Branwen, a cleric of Tempus from the north, and as brave and impassioned a woman as one could ever meet. */ + LK#NL9_tall_branwen
  ++ @351 /* Ah, Shar-Teel. Never has there been such a fearsome, fiery wench! */ + LK#NL9_tall_sharteel
  ++ @352 /* I'd--I'd rather not talk about it, Ninde. There are still memories of times too close for comfort. */ + LK#NL9_tall_comfort
  ++ @353 /* There was a woman here or there, but none I felt more then a passing pain at being separated from. */ + LK#NL9_tall_passing
  ++ @354 /* There was never a woman. */ + LK#NL9_tall_nonever
END

IF ~~ LK#NL9_tall_chesthair
  SAY @355 /* Heh, you needn't worry. I infinitely prefer it attached to your torso. Tell me, dear, has a woman ever been fortunate enough to seduce you, or do you think that battle-hardened body is for fighting alone? */
  ++ @349 /* Her...her name was Dynaheir. She was a Rashemaar mage, as powerful as she was beautiful. */ + LK#NL9_tall_dynaheir
  ++ @350 /* She...was called Branwen, a cleric of Tempus from the north, and as brave and impassioned a woman as one could ever meet. */ + LK#NL9_tall_branwen
  ++ @351 /* Ah, Shar-Teel. Never has there been such a fearsome, fiery wench! */ + LK#NL9_tall_sharteel
  ++ @352 /* I'd--I'd rather not talk about it, Ninde. There are still memories of times too close for comfort. */ + LK#NL9_tall_comfort
  ++ @353 /* There was a woman here or there, but none I felt more then a passing pain at being separated from. */ + LK#NL9_tall_passing
  ++ @354 /* There was never a woman. */ + LK#NL9_tall_nonever
END

IF ~~ LK#NL9_tall_orcelf
  SAY @356 /* Heh, you needn't worry. I infinitely prefer them attached to your head. Tell me, dear, has a woman ever been fortunate enough to seduce you, or do you think that battle-hardened body is for fighting alone? */
  ++ @349 /* Her...her name was Dynaheir. She was a Rashemaar mage, as powerful as she was beautiful. */ + LK#NL9_tall_dynaheir
  ++ @350 /* She...was called Branwen, a cleric of Tempus from the north, and as brave and impassioned a woman as one could ever meet. */ + LK#NL9_tall_branwen
  ++ @351 /* Ah, Shar-Teel. Never has there been such a fearsome, fiery wench! */ + LK#NL9_tall_sharteel
  ++ @352 /* I'd--I'd rather not talk about it, Ninde. There are still memories of times too close for comfort. */ + LK#NL9_tall_comfort
  ++ @353 /* There was a woman here or there, but none I felt more then a passing pain at being separated from. */ + LK#NL9_tall_passing
  ++ @354 /* There was never a woman. */ + LK#NL9_tall_nonever
END

IF ~~ LK#NL9_tall_hotelf
  SAY @357 /* And infravision. Useful! So you have had an elfin lover before? Or any lover at all? Or do you think that battle-hardened body is for fighting alone? (smile) */
  ++ @349 /* Her...her name was Dynaheir. She was a Rashemaar mage, as powerful as she was beautiful. */ + LK#NL9_tall_dynaheir
  ++ @350 /* She...was called Branwen, a cleric of Tempus from the north, and as brave and impassioned a woman as one could ever meet. */ + LK#NL9_tall_branwen
  ++ @351 /* Ah, Shar-Teel. Never has there been such a fearsome, fiery wench! */ + LK#NL9_tall_sharteel
  ++ @352 /* I'd--I'd rather not talk about it, Ninde. There are still memories of times too close for comfort. */ + LK#NL9_tall_comfort
  ++ @353 /* There was a woman here or there, but none I felt more then a passing pain at being separated from. */ + LK#NL9_tall_passing
  ++ @354 /* There was never a woman. */ + LK#NL9_tall_nonever
END

IF ~~ LK#NL9_tall_hornbag
  SAY @358 /* Goodness, <CHARNAME>, don't flatter yourself. You're attractive to me in the same way a particularly fluffy cat might be, or an appetising souffle. Though doubtless other women would appreciate your masculine charms. Have you ever taken a lover, Bhaalspawn, or do you think that battle-hardened body is for fighting alone? (smile) */
  ++ @359 /* Her...her name was Dyhaheir. She was a Rashemaar mage, as powerful as she was beautiful. */ + LK#NL9_tall_dynaheir
  ++ @350 /* She...was called Branwen, a cleric of Tempus from the north, and as brave and impassioned a woman as one could ever meet. */ + LK#NL9_tall_branwen
  ++ @351 /* Ah, Shar-Teel. Never has there been such a fearsome, fiery wench! */ + LK#NL9_tall_sharteel
  ++ @352 /* I'd--I'd rather not talk about it, Ninde. There are still memories of times too close for comfort. */ + LK#NL9_tall_comfort
  ++ @353 /* There was a woman here or there, but none I felt more then a passing pain at being separated from. */ + LK#NL9_tall_passing
  ++ @354 /* There was never a woman. */ + LK#NL9_tall_nonever
END

IF ~~ LK#NL9_tall_surprisederb
  SAY @360 /* There is more to me then it might initially appear, as I believe there is to you. In fact, I sense the sweet remnants of a love not long forgotten behind your voice. Care to expand, pudding? */
  ++ @349 /* Her...her name was Dynaheir. She was a Rashemaar mage, as powerful as she was beautiful. */ + LK#NL9_tall_dynaheir
  ++ @350 /* She...was called Branwen, a cleric of Tempus from the north, and as brave and impassioned a woman as one could ever meet. */ + LK#NL9_tall_branwen
  ++ @351 /* Ah, Shar-Teel. Never has there been such a fearsome, fiery wench! */ + LK#NL9_tall_sharteel
  ++ @352 /* I'd--I'd rather not talk about it, Ninde. There are still memories of times too close for comfort. */ + LK#NL9_tall_comfort
  ++ @353 /* There was a woman here or there, but none I felt more then a passing pain at being separated from. */ + LK#NL9_tall_passing
  ++ @354 /* There was never a woman. */ + LK#NL9_tall_nonever
END

IF ~~ LK#NL9_tall_dynaheir
  SAY @361 /* A mage, eh? It is good to see you have an eye for an intelligent woman, sweetpea. You could have every scantily clad sylph this side of Marsember falling at your feet...so I'd advise you practice a little discernment when it comes to who you attach yourself too. So far, it seems you have done so. */
  ++ @362 /* What kind of woman do you think I should look for? */ + LK#NL9_tall_shouldilook
  ++ @363 /* Scantily clad sylphs? I wish! */ + LK#NL9_tall_scantsylf
  ++ @364 /* Perhaps you should work on practising what you preach Ninde, since you are yourself a walking catalogue of failed and abusive relationships. */ + LK#NL9_tall_catalogue
END

IF ~~ LK#NL9_tall_branwen
  SAY @365 /* Impassioned? Impassioned is good. I could never stand these horrible drab little females that seem to appeal to the majority of men. You are handsome and powerful, <CHARNAME>, traits that few women can honestly resist. I'd advise you practice a little discernment when it comes to who you attach yourself too. So far, it seems you have done so. */
  ++ @362 /* What kind of woman do you think I should look for? */ + LK#NL9_tall_shouldilook
  ++ @364 /* Perhaps you should work on practising what you preach Ninde, since you are yourself a walking catalogue of failed and abusive relationships. */ + LK#NL9_tall_catalogue
END

IF ~~ LK#NL9_tall_sharteel
  SAY @366 /* Fiery is good, certainly a vast improvement on the drab little scantily clad sylph favoured by most men. You are handsome and powerful, <CHARNAME>, traits that few women can honestly resist. I'd advise you practice a little discernment when it comes to who you attach yourself too. So far, it seems you have done so--your natural ruthlessness pervades your love life. */
  ++ @362 /* What kind of woman do you think I should look for? */ + LK#NL9_tall_shouldilook
  ++ @363 /* Scantily clad sylphs? I wish! */ + LK#NL9_tall_scantsylf
  ++ @364 /* Perhaps you should work on practising what you preach Ninde, since you are yourself a walking catalogue of failed and abusive relationships. */ + LK#NL9_tall_catalogue
END

IF ~~ LK#NL9_tall_comfort
  SAY @367 /* I understand what it is to lose a lover, Bhaalspawn, whether in blood or from the bed. Though if you would rather not discuss it I shan't press you. What was her name? */
  ++ @368 /* Her name was Dynaheir, and she was a mage. */ + LK#NL9_tall_dynaheir
  ++ @369 /* She was called Branwen, an impassioned cleric. */ + LK#NL9_tall_branwen
  ++ @370 /* Shar-Teel was her name. She was a fiery warrior, and brilliant company. */ + LK#NL9_tall_sharteel
  ++ @371 /* I really would rather not talk about it. */ + LK#NL9_tall_rather
END

IF ~~ LK#NL9_tall_passing
  SAY @372 /* Dear me, <CHARNAME>, it seems as though you've been rather too liberal with yourself. I know every scantily clad sylph this side of Marsember must be positively gagging for you, but that doesn't mean you ought to oblige them all. */
  ++ @373 /* I can't help it if I find the prospect of a little sweet digression with a tavern wench or adventuress too good to pass up. (grin) */ + LK#NL9_tall_scantsylf
  ++ @374 /* Perhaps you're right--I rather wish I'd waited for someone with a little more allure to come along. */ + LK#NL9_tall_pursue
  ++ @375 /* I didn't peg you to be much an advocator of chastity, Ninde! */ + LK#NL9_tall_chastity
END

IF ~~ LK#NL9_tall_nonever
  SAY @376 /* Dear me! Is that simply because the opportunity never arose, or because you did not desire it, honeyfeet? */
  ++ @377 /* I've simply never met a woman I found alluring enough to pursue. */ + LK#NL9_tall_pursue
  ++ @378 /* If I was to love a woman it would put her in considerable danger. */ + LK#NL9_tall_considerable
  ++ @379 /* There's no room for love. Not now, at least. */ + LK#NL9_tall_endromance
  ++ @380 /* I'm not a lover, Ninde, I'm a fighter, and that will never change. */ + LK#NL9_tall_endromance
END

IF ~~ LK#NL9_tall_shouldilook
  SAY @381 /* That, my sweet, is entirely down to you. Considering our like of work, a woman it would be a pleasure to die beside, and who would not be made too desolate by such a prospect. I'm tired, Bhaalspawn. Give me a piggyback, won't you? I shall be scandalised if you say no. */
  ++ @382 /* Hop on, Ninde, I'll see what I can do. */ + LK#NL9_tall_goodtome
  ++ @383 /* (smile) Certainly, it would be a pleasure to be entwined in your thighs, if only in a practical capacity! */ + LK#NL9_tall_goodtome
  ++ @384 /* Then prepare to be scandalised, Ninde. I'm your leader, not your pack-horse. */ + LK#NL9_tall_packhorse
  ++ @385 /* Perhaps if you didn't spend so much time pointlessly shooting your mouth off you wouldn't get so tired. */ + LK#NL9_tall_shooting
END

IF ~~ LK#NL9_tall_scantsylf
  SAY @386 /* Really, Bhaalspawn, you are such a disappointment sometimes! As much as I appreciate the heavy looks of the odd brooding chunk of manhood, as easy on the eye as I might find him, I would never lower myself to bedding him...for that...hmm. For that there must be something else. */
  = @387 /* But enough of talking! I'm tired. Give me a piggyback, won't you? I shall be scandalised if you say no. */
  ++ @382 /* Hop on, Ninde, I'll see what I can do. */ + LK#NL9_tall_goodtome
  ++ @383 /* (smile) Certainly, it would be a pleasure to be entwined in your thighs, if only in a practical capacity! */ + LK#NL9_tall_goodtome
  ++ @384 /* Then prepare to be scandalised, Ninde. I'm your leader, not your pack-horse. */ + LK#NL9_tall_packhorse
  ++ @385 /* Perhaps if you didn't spend so much time pointlessly shooting your mouth off you wouldn't get so tired. */ + LK#NL9_tall_shooting
END

IF ~~ LK#NL9_tall_catalogue
  SAY @388 /* It is true that I have not come away from my own brushings with love unscathed, but I have learnt something from them, and feel obliged to pass my ineffable words of wisdom on to the young and the hopeless. */
  = @389 /* But really, Bhaalspawn, you do have the unfortunate habit of dredging up unpleasant memories whenever we talk. It is most tiring. Give me a piggyback, won't you? I shall be scandalised if you say no. */
  ++ @382 /* Hop on, Ninde, I'll see what I can do. */ + LK#NL9_tall_goodtome
  ++ @383 /* (smile) Certainly, it would be a pleasure to be entwined in your thighs, if only in a practical capacity! */ + LK#NL9_tall_goodtome
  ++ @384 /* Then prepare to be scandalised, Ninde. I'm your leader, not your pack-horse. */ + LK#NL9_tall_packhorse
  ++ @385 /* Perhaps if you didn't spend so much time pointlessly shooting your mouth off you wouldn't get so tired. */ + LK#NL9_tall_shooting
END

IF ~~ LK#NL9_tall_rather
  SAY @390 /* Your silence is understandable, if not admirable. */
  IF ~~ EXIT
END

IF ~~ LK#NL9_tall_pursue
  SAY @391 /* That is admirable, Bhaalspawn, and I advise you to maintain your exacting standards. You are, if you don't mind me saying so, quite the catch, and it would be a shame if every Ethelwen, Elenora and Eleina had got her claws in you already. */
  = @392 /* But I'm tired, pudding. Give me a piggyback, won't you? I shall be scandalised if you say no. */
  ++ @382 /* Hop on, Ninde, I'll see what I can do. */ + LK#NL9_tall_goodtome
  ++ @383 /* (smile) Certainly, it would be a pleasure to be entwined in your thighs, if only in a practical capacity! */ + LK#NL9_tall_goodtome
  ++ @384 /* Then prepare to be scandalised, Ninde. I'm your leader, not your pack-horse. */ + LK#NL9_tall_packhorse
  ++ @385 /* Perhaps if you didn't spend so much time pointlessly shooting your mouth off you wouldn't get so tired. */ + LK#NL9_tall_shooting
END

IF ~~ LK#NL9_tall_chastity
  SAY @393 /* Which is good, because I am most certainly not. As much as I appreciate the heavy looks of the odd brooding chunk of manhood, as easy on the eye as I might find him, I would never lower myself to bedding him...for that...hmm. For that there must be something else. */
  = @387 /* But enough of talking! I'm tired. Give me a piggyback, won't you? I shall be scandalised if you say no. */
  ++ @382 /* Hop on, Ninde, I'll see what I can do. */ + LK#NL9_tall_goodtome
  ++ @383 /* (smile) Certainly, it would be a pleasure to be entwined in your thighs, if only in a practical capacity! */ + LK#NL9_tall_goodtome
  ++ @384 /* Then prepare to be scandalised, Ninde. I'm your leader, not your pack-horse. */ + LK#NL9_tall_packhorse
  ++ @385 /* Perhaps if you didn't spend so much time pointlessly shooting your mouth off you wouldn't get so tired. */ + LK#NL9_tall_shooting
END

IF ~~ LK#NL9_tall_considerable
  SAY @394 /* Then you had best find a woman it would be a pleasure to die beside, and who would not be made to desolate by the idea of doing so. */
  = @395 /* But enough talking. I'm tired. Give me a piggyback, won't you? I shall be scandalised if you say no. */
  ++ @382 /* Hop on, Ninde, I'll see what I can do. */ + LK#NL9_tall_goodtome
  ++ @383 /* (smile) Certainly, it would be a pleasure to be entwined in your thighs, if only in a practical capacity! */ + LK#NL9_tall_goodtome
  ++ @384 /* Then prepare to be scandalised, Ninde. I'm your leader, not your pack-horse. */ + LK#NL9_tall_packhorse
  ++ @385 /* Perhaps if you didn't spend so much time pointlessly shooting your mouth off you wouldn't get so tired. */ + LK#NL9_tall_shooting
END

IF ~~ LK#NL9_tall_endromance
  SAY @396 /* And...and it is a shame to hear it. */
  = @397 /* (Ninde walks by your side in silence for a short while, before moving beyond you in graceful, loping strides.) */
  IF ~~ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NL9_tall_goodtome
  SAY @398 /* You are good to me, Bhaalspawn. */
  = @399 /* (You continue for a while with the warm weight of Ninde nestled beside your pack, her cheek pressed smooth against yours. She is silent, which is strange for the elf, the only sound coming from her the gentle rasp of her breath against your ear, like the sussurance of dry leaves stirring in the wind.) */
  IF ~~ EXIT
END

IF ~~ LK#NL9_tall_packhorse
  SAY @400 /* You may not be a packhorse, Bhaalspawn, but you certainly can be an ass from time to time. (smile) */
  = @401 /* (She continues by your side a short way, in complete silence--which is quite the rarity for the elf, the only sound coming from her the gentle sussurance of her breath, like the sound of drying leaves stirred by the wind.) */
  IF ~~ EXIT
END

IF ~~ LK#NL9_tall_shooting
  SAY @402 /* Or perhaps it is maintaining civility to a half-wit like you that is tiring me, hmm? */
  IF ~~ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END


// 9. Racial (short races)
// -----------------------
IF ~Global("LK#NindeLoveTalks","GLOBAL",17) RealGlobalTimerExpired("LK#NindeLoveTalksTimer","GLOBAL") OR(3) Race(Player1,HALFLING) Race(Player1,DWARF) Race(Player1,GNOME)~ LK#NL9_short_intro
  SAY @316 /* (As you walk along, you become slowly immune to the sounds around you, be they the obtrusive flit of birdsong, or the crunch of dust beneath your weary feet. But you do, however, notice the quick colt-like steps, behind you. As they momentarily wake you from the drudgery of marching, you feel two arms rubbing up across your shoulders, along your jaw, and sliding up towards your eyes. They are round and warm. Their fingers work their way across your brow and temples, before abruptly falling to your shoulders once again.) */
  = @317 /* Hello, Bhaalspawn. */
  ++ @318 /* Hello Ninde. Come to torment me? (smile) */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL9_short_torment
  ++ @319 /* Well, if it isn't the exemplary elf. How are you today? */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL9_short_exemplary
  ++ @320 /* I feel I must forewarn you that I'm not in the mood for your antics right now. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL9_short_warning
END

IF ~~ LK#NL9_short_torment
  SAY @321 /* <CHARNAME>! Quite the opposite indeed. I came to tell you how very handsome you looked today. */
  ++ @322 /* Hmm...what is it you're after, Ninde? I always have to take your compliments with a pinch of salt. */ + LK#NL9_short_pinchof
  ++ @323 /* I make it my business to *always* look fabulous. */ + LK#NL9_short_fabulous
  + ~Race(Player1,HALFLING)~ + @324 /* While I appreciate the sentiment, I'm certain I look like I feel. Haggard and bruised, like something Firkraag chewed up and spat out again. */ + LK#NL9_halfling_haggard
  + ~Race(Player1,DWARF)~ + @324 /* While I appreciate the sentiment, I'm certain I look like I feel. Haggard and bruised, like something Firkraag chewed up and spat out again. */ + LK#NL9_dwarf_haggard
  + ~Race(Player1,GNOME)~ + @324 /* While I appreciate the sentiment, I'm certain I look like I feel. Haggard and bruised, like something Firkraag chewed up and spat out again. */ + LK#NL9_gnome_haggard
  ++ @325 /* Thank you...it's quite enough to make a Bhaalspawn blush! */ + LK#NL9_short_blush
END

IF ~~ LK#NL9_short_exemplary
  SAY @326 /* Quite well, pet, though not half as well as you, I'd wager. */
  IF ~~ + LK#NL9_short_main1
END

IF ~~ LK#NL9_short_main1
  SAY @327 /* You're positively glowing...mm, and how very well it becomes you. */
  ++ @322 /* Hmm...what is it you're after, Ninde? I always have to take your compliments with a pinch of salt. */ + LK#NL9_short_pinchof
  ++ @323 /* I make it my business to *always* look fabulous. */ + LK#NL9_short_fabulous
  + ~Race(Player1,HALFLING)~ + @324 /* While I appreciate the sentiment, I'm certain I look like I feel. Haggard and bruised, like something Firkraag chewed up and spat out again. */ + LK#NL9_halfling_haggard
  + ~Race(Player1,DWARF)~ + @324 /* While I appreciate the sentiment, I'm certain I look like I feel. Haggard and bruised, like something Firkraag chewed up and spat out again. */ + LK#NL9_dwarf_haggard
  + ~Race(Player1,GNOME)~ + @324 /* While I appreciate the sentiment, I'm certain I look like I feel. Haggard and bruised, like something Firkraag chewed up and spat out again. */ + LK#NL9_gnome_haggard
  ++ @325 /* Thank you...it's quite enough to make a Bhaalspawn blush! */ + LK#NL9_short_blush
END

IF ~~ LK#NL9_short_warning
  SAY @403 /* Antics? The way you talk about me you'd think I was a mischievous child. I simply wished to tell you how well you look today. */
  IF ~~ + LK#NL9_short_main1
END

IF ~~ LK#NL9_short_pinchof
  SAY @329 /* I have ulterior motives, I assure you. I merely imagined you'd never been told before how very handsome you are. */
  IF ~Race(Player1,HALFLING)~ + LK#NL9_halfling_main2
  IF ~Race(Player1,DWARF)~ + LK#NL9_dwarf_main2
  IF ~Race(Player1,GNOME)~ + LK#NL9_gnome_main2
END

IF ~~ LK#NL9_halfling_main2
  SAY @404 /* I've always liked a halfling male... you've got a certain charm that's most overlooked. Not to mention the *foot hair*. */
  ++ @331 /* You'd be wrong there. You're...you're not the first woman to have thought me handsome. */ + LK#NL9_short_formerlovers
  ++ @405 /* Aha, so your ulterior motive is to harvest my foot hair. Foot hair of a Bhaalspawn; that sounds like it'd have a few good magical properties. */ + LK#NL9_short_halfling
  ++ @333 /* Funnily enough I always preferred elfin women to any other--there's something lovely about a girl with pointy ears and infravision. */ + LK#NL9_short_hotelf
END

IF ~~ LK#NL9_dwarf_main2
  SAY @406 /* I've always liked a dwarven male– you've got a certain hardiness about you that's most attractive. Not to mention the *beards*. I adore facial hair one could just curl up in, and yours is must luxuriant. How do you manage it? */
  ++ @331 /* You'd be wrong there. You're...you're not the first woman to have thought me handsome. */ + LK#NL9_short_formerlovers
  ++ @407 /* Aha, so your ulterior motive is to harvest my beard. Beard of a Bhaalspawn; that sounds like it'd have a few good magical properties. */ + LK#NL9_short_dwarfgnome
  ++ @333 /* Funnily enough I always preferred elfin women to any other--there's something lovely about a girl with pointy ears and infravision. */ + LK#NL9_short_hotelf
END

IF ~~ LK#NL9_gnome_main2
  SAY @408 /* I've always liked a gnomish male– you've got a certain eccentricity about you that's most endearing. Not to mention the *noses*. Bulbous and beautiful. */
  ++ @331 /* You'd be wrong there. You're...you're not the first woman to have thought me handsome. */ + LK#NL9_short_formerlovers
  ++ @409 /* Aha, so your ulterior motive is to harvest my nose. Nose of a Bhaalspawn; that sounds like it'd have a few good magical properties. */ + LK#NL9_short_dwarfgnome
  ++ @333 /* Funnily enough I always preferred elfin women to any other--there's something lovely about a girl with pointy ears and infravision. */ + LK#NL9_short_hotelf
END

IF ~~ LK#NL9_short_fabulous
  SAY @338 /* And you certainly succeed, though it's possible for a man to spend a little too much time on personal grooming. */
  IF ~Race(Player1,HALFLING)~ + LK#NL9_halfling_main2
  IF ~Race(Player1,DWARF)~ + LK#NL9_dwarf_main2
  IF ~Race(Player1,GNOME)~ + LK#NL9_gnome_main2
END

IF ~~ LK#NL9_halfling_haggard
  SAY @410 /* You look quite the opposite, Bhaalspawn, I assure you, though undoubtedly your modesty stems from being not told often enough how handsome you are, if at all. Hmm...I've always liked a hin male– you've got a certain charm that's most overlooked. Not to mention the *foot hair*. */
  = @340 /* As for your bruises and such, well--with a little aloe balm and some arnica they should clear up well enough, though I personally feel they add to your rugged charm. */
  ++ @341 /* I didn't know you had such a knowledge of herbal cures. No offence, but considering your temperament, it's a little suprising. */ + LK#NL9_short_surprisederb
  ++ @331 /* You'd be wrong there. You're...you're not the first woman to have thought me handsome. */ + LK#NL9_short_formerlovers
  ++ @405 /* Aha, so your ulterior motive is to harvest my foot hair. Foot hair of a Bhaalspawn; that sounds like it'd have a few good magical properties. */ + LK#NL9_short_halfling
  ++ @343 /* Ninde...are you, well...do you want to sleep with me? You're certainly talking like you do, you little hornbag! */ + LK#NL9_short_hornbag
  ++ @333 /* Funnily enough I always preferred elfin women to any other--there's something lovely about a girl with pointy ears and infravision. */ + LK#NL9_short_hotelf
  ++ @344 /* That's quite enough of your flattery Ninde, I can't abide sweet talk. Leave me be. */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NL9_dwarf_haggard
  SAY @411 /* You look quite the opposite, Bhaalspawn, I assure you, though undoubtedly your modesty stems from being not told often enough how handsome you are, if at all. Hmm...I've always liked a dwarven male– you've got a certain hardiness about you that's most attractive. Not to mention the *beards*. I adore facial hair one could just curl up in, and yours is must luxuriant. How do you manage it? */
  = @340 /* As for your bruises and such, well--with a little aloe balm and some arnica they should clear up well enough, though I personally feel they add to your rugged charm. */
  ++ @341 /* I didn't know you had such a knowledge of herbal cures. No offence, but considering your temperament, it's a little suprising. */ + LK#NL9_short_surprisederb
  ++ @331 /* You'd be wrong there. You're...you're not the first woman to have thought me handsome. */ + LK#NL9_short_formerlovers
  ++ @407 /* Aha, so your ulterior motive is to harvest my beard. Beard of a Bhaalspawn; that sounds like it'd have a few good magical properties. */ + LK#NL9_short_dwarfgnome
  ++ @343 /* Ninde...are you, well...do you want to sleep with me? You're certainly talking like you do, you little hornbag! */ + LK#NL9_short_hornbag
  ++ @333 /* Funnily enough I always preferred elfin women to any other--there's something lovely about a girl with pointy ears and infravision. */ + LK#NL9_short_hotelf
  ++ @344 /* That's quite enough of your flattery Ninde, I can't abide sweet talk. Leave me be. */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NL9_gnome_haggard
  SAY @412 /* You look quite the opposite, Bhaalspawn, I assure you, though undoubtedly your modesty stems from being not told often enough how handsome you are, if at all. Hmm...I've always liked a gnomish male– you've got a certain eccentricity about you that's most endearing. Not to mention the *noses*. Bulbous and beautiful. */
  = @340 /* As for your bruises and such, well--with a little aloe balm and some arnica they should clear up well enough, though I personally feel they add to your rugged charm. */
  ++ @341 /* I didn't know you had such a knowledge of herbal cures. No offence, but considering your temperament, it's a little suprising. */ + LK#NL9_short_surprisederb
  ++ @331 /* You'd be wrong there. You're...you're not the first woman to have thought me handsome. */ + LK#NL9_short_formerlovers
  ++ @409 /* Aha, so your ulterior motive is to harvest my nose. Nose of a Bhaalspawn; that sounds like it'd have a few good magical properties. */ + LK#NL9_short_dwarfgnome
  ++ @343 /* Ninde...are you, well...do you want to sleep with me? You're certainly talking like you do, you little hornbag! */ + LK#NL9_short_hornbag
  ++ @333 /* Funnily enough I always preferred elfin women to any other--there's something lovely about a girl with pointy ears and infravision. */ + LK#NL9_short_hotelf
  ++ @344 /* That's quite enough of your flattery Ninde, I can't abide sweet talk. Leave me be. */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NL9_short_blush
  SAY @347 /* I doubt you've been told before just how handsome you are. */
  IF ~Race(Player1,HALFLING)~ + LK#NL9_halfling_main2
  IF ~Race(Player1,DWARF)~ + LK#NL9_dwarf_main2
  IF ~Race(Player1,GNOME)~ + LK#NL9_gnome_main2
END

IF ~~ LK#NL9_short_formerlovers
  SAY @348 /* You have loved before? And here I thought you were too young for such things. Care to tell me about it? */
  ++ @352 /* I'd--I'd rather not talk about it, Ninde. There are still memories of times too close for comfort. */ + LK#NL9_short_comfort
  ++ @353 /* There was a woman here or there, but none I felt more then a passing pain at being separated from. */ + LK#NL9_short_passing
  ++ @354 /* There was never a woman. */ + LK#NL9_short_nonever
END

IF ~~ LK#NL9_short_halfling
  SAY @413 /* Heh, you needn't worry. I infinitely prefer it attached to your feet. Tell me, dear, has a woman ever been fortunate enough to seduce you, or do you think that battle-hardened body is for fighting alone? */
  ++ @352 /* I'd--I'd rather not talk about it, Ninde. There are still memories of times too close for comfort. */ + LK#NL9_short_comfort
  ++ @353 /* There was a woman here or there, but none I felt more then a passing pain at being separated from. */ + LK#NL9_short_passing
  ++ @354 /* There was never a woman. */ + LK#NL9_short_nonever
END

IF ~~ LK#NL9_short_dwarfgnome
  SAY @414 /* Heh, you needn't worry. I infinitely prefer it attached to your head. Tell me, dear, has a woman ever been fortunate enough to seduce you, or do you think that battle-hardened body is for fighting alone? */
  ++ @352 /* I'd--I'd rather not talk about it, Ninde. There are still memories of times too close for comfort. */ + LK#NL9_short_comfort
  ++ @353 /* There was a woman here or there, but none I felt more then a passing pain at being separated from. */ + LK#NL9_short_passing
  ++ @354 /* There was never a woman. */ + LK#NL9_short_nonever
END

IF ~~ LK#NL9_short_hotelf
  SAY @357 /* And infravision. Useful! So you have had an elfin lover before? Or any lover at all? Or do you think that battle-hardened body is for fighting alone? (smile) */
  ++ @352 /* I'd--I'd rather not talk about it, Ninde. There are still memories of times too close for comfort. */ + LK#NL9_short_comfort
  ++ @353 /* There was a woman here or there, but none I felt more then a passing pain at being separated from. */ + LK#NL9_short_passing
  ++ @354 /* There was never a woman. */ + LK#NL9_short_nonever
END

IF ~~ LK#NL9_short_hornbag
  SAY @415 /* Goodness, <CHARNAME>, don't flatter yourself. You're attractive to me in the same way a particularly fluffy cat might be, or an appetising soufflé. Though doubtless other women would appreciate your masculine charms. Have you ever taken a lover, Bhaalspawn, or do you think that battle-hardened body is for fighting alone? (smile) */
  ++ @352 /* I'd--I'd rather not talk about it, Ninde. There are still memories of times too close for comfort. */ + LK#NL9_short_comfort
  ++ @353 /* There was a woman here or there, but none I felt more then a passing pain at being separated from. */ + LK#NL9_short_passing
  ++ @354 /* There was never a woman. */ + LK#NL9_short_nonever
END

IF ~~ LK#NL9_short_surprisederb
  SAY @360 /* There is more to me then it might initially appear, as I believe there is to you. In fact, I sense the sweet remnants of a love not long forgotten behind your voice. Care to expand, pudding? */
  ++ @352 /* I'd--I'd rather not talk about it, Ninde. There are still memories of times too close for comfort. */ + LK#NL9_short_comfort
  ++ @353 /* There was a woman here or there, but none I felt more then a passing pain at being separated from. */ + LK#NL9_short_passing
  ++ @354 /* There was never a woman. */ + LK#NL9_short_nonever
END

IF ~~ LK#NL9_short_comfort
  SAY @367 /* I understand what it is to lose a lover, Bhaalspawn, whether in blood or from the bed. Though if you would rather not discuss it I shan't press you. What was her name? */
  ++ @416 /* There have just been...women. None of whom I was too attached to. */ + LK#NL9_short_passing
  ++ @417 /* I really would rather not talk about it. */ + LK#NL9_short_rather
END

IF ~~ LK#NL9_short_passing
  SAY @372 /* Dear me, <CHARNAME>, it seems as though you've been rather too liberal with yourself. I know every scantily clad sylph this side of Marsember must be positively gagging for you, but that doesn't mean you ought to oblige them all. */
  ++ @418 /* I can't help it if I find the prospect of a little sweet digression with a tavern wench or adventuress too good to pass up. (Grin) */ + LK#NL9_short_scantsylf
  ++ @374 /* Perhaps you're right--I rather wish I'd waited for someone with a little more allure to come along. */ + LK#NL9_short_pursue
  ++ @375 /* I didn't peg you to be much an advocator of chastity, Ninde! */ + LK#NL9_short_chastity
END

IF ~~ LK#NL9_short_nonever
  SAY @376 /* Dear me! Is that simply because the opportunity never arose, or because you did not desire it, honeyfeet? */
  ++ @377 /* I've simply never met a woman I found alluring enough to pursue. */ + LK#NL9_short_pursue
  ++ @378 /* If I was to love a woman it would put her in considerable danger. */ + LK#NL9_short_considerable
  ++ @379 /* There's no room for love. Not now, at least. */ + LK#NL9_short_endromance
  ++ @380 /* I'm not a lover, Ninde, I'm a fighter, and that will never change. */ + LK#NL9_short_endromance
END

IF ~~ LK#NL9_short_shouldilook
  SAY @419 /* That, my sweet, is entirely down to you. Considering our like of work, a woman it would be a pleasure to die beside, and who would not be made too desolate by such a prospect. I'm tired, Bhaalspawn. Enough talking for now. */
  = @401 /* (She continues by your side a short way, in complete silence--which is quite the rarity for the elf, the only sound coming from her the gentle sussurance of her breath, like the sound of drying leaves stirred by the wind.) */
  IF ~~ EXIT
END

IF ~~ LK#NL9_short_scantsylf
  SAY @386 /* Really, Bhaalspawn, you are such a disappointment sometimes! As much as I appreciate the heavy looks of the odd brooding chunk of manhood, as easy on the eye as I might find him, I would never lower myself to bedding him...for that...hmm. For that there must be something else. */
  = @401 /* (She continues by your side a short way, in complete silence--which is quite the rarity for the elf, the only sound coming from her the gentle sussurance of her breath, like the sound of drying leaves stirred by the wind.) */
  IF ~~ EXIT
END

IF ~~ LK#NL9_short_catalogue
  SAY @388 /* It is true that I have not come away from my own brushings with love unscathed, but I have learnt something from them, and feel obliged to pass my ineffable words of wisdom on to the young and the hopeless. */
  = @420 /* But really, Bhaalspawn, you do have the unfortunate habit of dredging up unpleasant memories whenever we talk. (She continues by your side a short way, in complete silence--which is quite the rarity for the elf, the only sound coming from her the gentle sussurance of her breath, like the sound of drying leaves stirred by the wind.) */
  IF ~~ EXIT
END

IF ~~ LK#NL9_short_rather
  SAY @390 /* Your silence is understandable, if not admirable. */
  IF ~~ EXIT
END

IF ~~ LK#NL9_short_pursue
  SAY @391 /* That is admirable, Bhaalspawn, and I advise you to maintain your exacting standards. You are, if you don't mind me saying so, quite the catch, and it would be a shame if every Ethelwen, Elenora and Eleina had got her claws in you already. */
  = @401 /* (She continues by your side a short way, in complete silence--which is quite the rarity for the elf, the only sound coming from her the gentle sussurance of her breath, like the sound of drying leaves stirred by the wind.) */
  IF ~~ EXIT
END

IF ~~ LK#NL9_short_chastity
  SAY @393 /* Which is good, because I am most certainly not. As much as I appreciate the heavy looks of the odd brooding chunk of manhood, as easy on the eye as I might find him, I would never lower myself to bedding him...for that...hmm. For that there must be something else. */
  = @401 /* (She continues by your side a short way, in complete silence--which is quite the rarity for the elf, the only sound coming from her the gentle sussurance of her breath, like the sound of drying leaves stirred by the wind.) */
  IF ~~ EXIT
END

IF ~~ LK#NL9_short_considerable
  SAY @394 /* Then you had best find a woman it would be a pleasure to die beside, and who would not be made to desolate by the idea of doing so. */
  = @401 /* (She continues by your side a short way, in complete silence--which is quite the rarity for the elf, the only sound coming from her the gentle sussurance of her breath, like the sound of drying leaves stirred by the wind.) */
  IF ~~ EXIT
END

IF ~~ LK#NL9_short_endromance
  SAY @396 /* And...and it is a shame to hear it. */
  = @397 /* (Ninde walks by your side in silence for a short while, before moving beyond you in graceful, loping strides.) */
  IF ~~ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END


// 10.
// ---
IF ~Global("LK#NindeLoveTalks","GLOBAL",19) RealGlobalTimerExpired("LK#NindeLoveTalksTimer","GLOBAL")~ LK#NL10_intro
  SAY @421 /* Whenever I see blood I can't help but think of Lassal, and as you can imagine, with the amount of it that's flying about these days, I end up thinking of him often...and not always unkindly. */
  ++ @422 /* I got the impression you despised him. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL10_despised
  ++ @423 /* He tricked you into giving away your soul without making you aware of the consequences of doing so. I wouldn't be able to forgive him that, if I were you. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL10_givingsoul
  ++ @424 /* What does it matter? He's dead now, and by your hand. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL10_byurhand
  ++ @425 /* He was merely Bodhi's fumbling henchman. Don't worry yourself over him. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL10_henchman
  ++ @426 /* Oh Gods, you weren't in love with him, were you? That would be one perverse revelation too many. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL10_pervrev
END

IF ~~ LK#NL10_despised
  SAY @427 /* I suppose I did, by the end, when the fool had muzzled himself for the sake of Bodhi. But it was not always so. He was not always a gelded fool, gathering dust in the recesses of that dank tomb. Our relationship was certainly...complex. Would you care to hear about it? */
  ++ @428 /* Why not. */ + LK#NL10_main1
  ++ @429 /* You know how I love your stories, Ninde. Of course. */ + LK#NL10_main1
  ++ @430 /* We haven't the time right now, Ninde. */ EXIT
  ++ @431 /* I'd rather give Irenicus a lovely big kiss. */ DO ~SetGlobal("LK#NindeRomance","GLOBAL",3)~ EXIT
END

IF ~~ LK#NL10_givingsoul
  SAY @432 /* I did, at first, but hatred is a very difficult thing to maintain, <CHARNAME>, especially when you are allied with someone for as long as I was with Lassal. More then a decade...Would you care to hear more about the years I spent with him? */
  ++ @428 /* Why not. */ + LK#NL10_main1
  ++ @429 /* You know how I love your stories, Ninde. Of course. */ + LK#NL10_main1
  ++ @430 /* We haven't the time right now, Ninde. */ EXIT
  ++ @431 /* I'd rather give Irenicus a lovely big kiss. */ DO ~SetGlobal("LK#NindeRomance","GLOBAL",3)~ EXIT
END

IF ~~ LK#NL10_byurhand
  SAY @433 /* And <CHARNAME>, I'm certainly not having any second thoughts about that. It is merely difficult to maintain ones hatred after so long. More then a decade, infact...would you care to hear about it? */
  ++ @428 /* Why not. */ + LK#NL10_main1
  ++ @429 /* You know how I love your stories, Ninde. Of course. */ + LK#NL10_main1
  ++ @430 /* We haven't the time right now, Ninde. */ EXIT
  ++ @431 /* I'd rather give Irenicus a lovely big kiss. */ DO ~SetGlobal("LK#NindeRomance","GLOBAL",3)~ EXIT
END

IF ~~ LK#NL10_henchman
  SAY @434 /* The fool gelded himself when Bodhi appeared, but he was not always so helpless. He was powerful once, not when I first met him--but that was a decade ago. Over a decade. Would you care to hear how I spent that decade? */
  ++ @428 /* Why not. */ + LK#NL10_main1
  ++ @429 /* You know how I love your stories, Ninde. Of course. */ + LK#NL10_main1
  ++ @430 /* We haven't the time right now, Ninde. */ EXIT
  ++ @431 /* I'd rather give Irenicus a lovely big kiss. */ DO ~SetGlobal("LK#NindeRomance","GLOBAL",3)~ EXIT
END

IF ~~ LK#NL10_pervrev
  SAY @435 /* (sigh) As I've told you before, Bhaalspawn, I'm not *that* kind of necromancer. After a decade one grows somewhat attached to even the most repellent creature. A decade...care to hear the story of it? */
  ++ @428 /* Why not. */ + LK#NL10_main1
  ++ @429 /* You know how I love your stories, Ninde. Of course. */ + LK#NL10_main1
  ++ @430 /* We haven't the time right now, Ninde. */ EXIT
  ++ @431 /* I'd rather give Irenicus a lovely big kiss. */ DO ~SetGlobal("LK#NindeRomance","GLOBAL",3)~ EXIT
END

IF ~~ LK#NL10_main1
  SAY @436 /* Very well. Hmm... */
  = @437 /* I don't know how it was that he did it, wrested my soul from me, but their magics worked in the Time of Troubles, when no others did. At first I was bound to him by the idea that he had the knowledge to reverse his actions, and that if I served him well he would do so. I was sadly disillusioned. */
  = @438 /* I was not to see any of my friends or acquaintances from Waterdeep again. We travelled. Through Calimshan, Tethyr, Cormyr, Chessenta and to the deepest eastern reaches of Faerun--Mulhorand. During the nights we would ride in open-topped carriages through streets in Calimport that reeked of jasmine and sea salt to watch the half-efreet casting on street corners. We listened to brass elfin harps ringing clear in the Wealdath, and in Mulhorand saw the white processions marching from limestone temples and the Lords in chariots drawn by snarling crocodiles. */
  = @439 /* It was Var the Golden I loved best, for the fields of grain after which it is named, ever-collapsing in the wind that blew in from the fierce north. I was drawn into the fire and smoke of it all. In Waterdeep our house had been full of the twisting furniture and liquid silk of these lands...but I fell in love with their sands, their hot currents, their people. */
  ++ @440 /* It sounds as though your time with Lassal was far from torturous. */ + LK#NL10_main2
  ++ @441 /* Such experiences...I one day hope to travel as you have. */ + LK#NL10_travel
  ++ @442 /* So Lassal took you to the east. But what next? Why did you end up in Amn? */ + LK#NL10_main2
END

IF ~~ LK#NL10_travel
  SAY @443 /* I forget you have seen so little of the world, though many of its wonders have passed through your hands. If anything, you must at least ride a camel. A very strange experience. I shall continue. */
  IF ~~ + LK#NL10_main2
END

IF ~~ LK#NL10_main2
  SAY @444 /* I was Lassal's daylight emissary. While he napped in his sarcophagi in his marbled halls, his fine eyes turned inward, I would undermine his enemies and find him new allies. I was not only able to walk abroad as he could not, but I had the advantage of surprise--powdered, made prim who would take me for the servant of an undead Lord? I was rewarded for my service. The ankh was from a Selunite priestess he drained in Mulhorand...in my honour. (smile) */
  = @445 /* It took...it took a long time before I noticed the hollowness. Before I noticed I did not even balk at having the women carried away--from whores to nobles--that he would drink. In my time with the Night Hand...what I wouldn't have given to be remorseless then. Then. */
  = @446 /* When all the wine in Estagund turned sour in my mouth, Bodhi came. I know not how he knew her, but he was enamoured of her, and I became less his consort, more his serving maid, killing who he wished killed with all the numbness of the skeletons he raised to fill his goblet with blood. I had no choice but to serve...what had now become my sentence. */
  = @447 /* And then you came. Ho hum. */
  ++ @448 /* An interesting tale. */ + LK#NL10_taleointer
  ++ @449 /* And you know no more about were Bodhi came from? About her past? */ + LK#NL10_anythingbo
  ++ @450 /* Why did you not simply leave them? */ + LK#NL10_leavem
  ++ @451 /* It seems to me you've always been someone's servant. First Sykre, then Lassal. */ + LK#NL10_servant
END

IF ~~ LK#NL10_taleointer
  SAY @452 /* I suppose it is. <CHARNAME>, make no mistake; I have seen much...and yet I have seen so little. */
  IF ~~ + LK#NL10_main3
END

IF ~~ LK#NL10_anythingbo
  SAY @453 /* Unfortunately for you, dear, I had very little interest in Bodhi, and remarkable contempt for her. She was not as bestial once, as she is now. She used to wear red satin and her hair long. She never liked me, and I never liked her, and this holds true today. But...I tire of this. We will speak again soon. */
  IF ~~ EXIT
END

IF ~~ LK#NL10_leavem
  SAY @454 /* Because what else was I to do? I would've wasted away somewhere, and I suppose it took my mind off it. I suppose I still clung to the hope he might take pity and restore me...which was foolish. (sigh) */
  = @455 /* <CHARNAME>, make no mistake; I have seen much...and yet I have seen so little. */
  IF ~~ + LK#NL10_main3
END

IF ~~ LK#NL10_servant
  SAY @456 /* You are right, Bhaalspawn, you are. And do not think I do not know it. Perhaps that is what I wanted...perhaps that is where I fell. */
  = @455 /* <CHARNAME>, make no mistake; I have seen much...and yet I have seen so little. */
  IF ~~ + LK#NL10_main3
END

IF ~~ LK#NL10_main3
  SAY @457 /* I have lived to an age that any peasant might consider ripe, stroked tiger skins and the crusted sapphires of the east with these fingers...and yet I wanted more from my life. I don't know what, but more. Maybe I wished for glory. Maybe to find what remains of my bloodline. Maybe to choose when my own death will come. */
  ++ @458 /* I doubt there are any who do not wish they had done more with their lives. 'Tis the condition of all mortals. */ + LK#NL10_mortals
  ++ @459 /* There is still time for these things, Ninde. You are wrong to think your situation is hopeless. */ + LK#NL10_wrongto
  ++ @460 /* You travel with me, Ninde, and we do great things. Your name will be remembered alongside my own...bards will write songs about you! Surely that's some consolation? */ + LK#NL10_console
END

IF ~~ LK#NL10_mortals
  SAY @461 /* (smile) Forgive me my arrogance, <CHARNAME>, but I am no mortal, and I am not meant to live as one. There is this gnawing, Bhaalspawn, and you cannot understand it. You are only a boy after all. */
  IF ~~ EXIT
END

IF ~~ LK#NL10_wrongto
  SAY @462 /* (smile) You forget, <CHARNAME>, I was not born mortal, I was made mortal. I am supposed to be timeless. There is this relentless gnawing, Bhaalspawn, and you cannot understand it. Not yet. You are just a boy. */
  IF ~~ EXIT
END

IF ~~ LK#NL10_console
  SAY @463 /* Perhaps; or perhaps I am once again insignificant in the shadow of a greater man. It is kind of you to console me, but you know that it is <CHARNAME>, the Bhaalspawn who will be timeless where I was meant to be. (Smile) You forget, <CHARNAME>, I was not born mortal, I was made mortal. There is this relentless gnawing, Bhaalspawn, and you cannot understand it. Not yet. You are just a boy. */
  IF ~~ EXIT
END


// 11. What do you like about me?
// ------------------------------
IF ~Global("LK#NindeLoveTalks","GLOBAL",21) RealGlobalTimerExpired("LK#NindeLoveTalksTimer","GLOBAL")~ LK#NL11
  SAY @464 /* Often I look around myself at the copious ills of human society, and wonder where it all went wrong for the fledgling race. Then I find myself wondering of everyone I meet...were they borne of love or of something else? */
  = @465 /* It's a marvellous thought, isn't it? Each an every one of us is the result of a good old fashioned bedding. Marriage, rape, an accident, a whore, a hot summer, a drunken fling, a saucy wink, incest, an impassioned affair, a long dreamed of blessing or simply the gods dipping their divine quills into the interminable ink of the realms. Isn't it wonderful? */
  ++ @466 /* No, Ninde, a great many of the things you just mentioned are not wonderful. Far from it, in fact! */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL11_farfromit
  ++ @467 /* Life is a salty and splendid thing indeed! */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL11_splendid
  ++ @468 /* I suppose I've never really thought about it. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL11_carryon
  ++ @469 /* Ninde, I really am tired of you mouthing off. It's not merely irritating but also downright dangerous. If you get an arrow of fire through your head because of your incessant nattering, I'm just going to laugh. If you get an arrow of detonation through your head, I'm going to be angry. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL11_angryarr
END

IF ~~ LK#NL11_farfromit
  SAY @470 /* My dear, nature is a language all its own, as incomprehensible as we often find it...and by Shar, you certainly have a very antiquated approach to the world! The best way of dealing with things is simply to sit back and laugh. */
  IF ~~ + LK#NL11_main1
END

IF ~~ LK#NL11_splendid
  SAY @471 /* Splendid in it's own gargantuan ridiculousness. The best way of dealing with things is simply to sit back and laugh, don't you agree? */
  IF ~~ + LK#NL11_main1
END

IF ~~ LK#NL11_carryon
  SAY @472 /* My dear, nature is a language all it's own. The best way of dealing with things is simply to sit back and laugh. */
  IF ~~ + LK#NL11_main1
END

IF ~~ LK#NL11_main1
  SAY @473 /* Laugh at the way none of us really care if the others live or die, most men are perfectly content to while their days away with a slim, pretty thing, and blissfully ignore the entropy at the core of all human endeavour. */
  ++ @474 /* I'm never quite sure if you're a scientist, a philosopher, a poet, or just a cynic. */ + LK#NL11_neversure
  ++ @475 /* Hm...you seem like an avid student of human nature, and yet you so often fail to see the good inherent in it. You talk all about the entropy, the vice and the fear, but ignore the virtue, nobility, passion and unconditional love we all carry within us. */ + LK#NL11_avidstudy
  ++ @476 /* Eh, entropy shmentropy, pet. I want ale and bawdy songs and buxom wenches and to hells with the great scheme of things. It makes my head ache. */ + LK#NL11_shmentropy
  ++ @477 /* You've got it in one, Ninde. I don't know why I'm always trying so hard to avert colossal crises and save lives and things--it's hardly worth doing. Mankind just seems to get itself back into a fix the next tenday. */ + LK#NL11_nxtenday
  ++ @478 /* So you think we should just simply resign ourselves to the state of the realms, never seeking to improve them? */ + LK#NL11_notimprove
END

IF ~~ LK#NL11_angryarr
  SAY @479 /* An arrow of detonation through the head? What a way to die. I want to look pretty when I die. What if I talk quietly? As quietly as a paladin creeping home from a brothel? I promise, darling. Maid's honour. Heh. */
  ++ @480 /* Well, if you put it that way. Carry on. */ + LK#NL11_carryon
  ++ @481 /* Not quite enough! Just do me a favour, elf, and keep your mouth shut. */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NL11_neversure
  SAY @482 /* Perhaps I am a little of each. Which is it you like best, Bhaalspawn? */
  ++ @483 /* I think you're a poet at heart. */ + LK#NL11_poet
  ++ @484 /* It's the scientist in you I find most intriguing. */ + LK#NL11_scientist
  ++ @485 /* The more philosophical side of you is undoubtedly the best. */ + LK#NL11_philosopher
  ++ @486 /* The cynic in you has its appeal, strangely enough. */ + LK#NL11_cynic
  ++ @487 /* None of them. I like the rare glimpses of tenderness I see now and then... */ + LK#NL11_tender
  ++ @488 /* I like both sides! Preferably unclothed and covered in massage oil. */ + LK#NL11_massageoil
  ++ @489 /* Dear me, that's like asking me to decide between having my teeth pulled out, being boiled in oil, having my legs broken or having frightful verse read to me by an aspiring half-orc bard. I really, REALLY don't like you. */ + LK#NL11_aspbard
END

IF ~~ LK#NL11_avidstudy
  SAY @490 /* Nobility is self-preservation dressed up as something higher, and love likewise crooked donkey made up like a white charger. I am many things, but not an idealist. This way, I am never disappointed by the world; simply bemused and delighted by it all! */
  ++ @491 /* Well, it seems to work well enough for you. Perhaps I should adopt your attitude. */ + LK#NL11_nindeism
  ++ @492 /* I'm still not convinced. I've seen far greater forces at work in the realms then instinct, self-preservation and lust. Would you have me believe that that is all illusory? */ + LK#NL11_shmentropy
  ++ @493 /* At the end of the day, the nature of the universe isn't something I turn my mind to often. As long as I'm warm and fed and all the rest of it I couldn't care less for entropy. */ + LK#NL11_shmentropy
END

IF ~~ LK#NL11_shmentropy
  SAY @494 /* Thankyou for illustrating my point succinctly, <CHARNAME>...but if you don't appreciate my philosophy, how do you prefer me, honeybunch...? */
  ++ @495 /* I like the poet in you.. */ + LK#NL11_poet
  ++ @496 /* I like your cynicism. Whoever said sarcasm is the lowest form of wit clearly never met Lady Amblecrown. */ + LK#NL11_cynic
  ++ @497 /* I like the rare glimpses tenderness I see now and then... */ + LK#NL11_tender
  ++ @498 /* Naked and covered in massage oil. */ + LK#NL11_massageoil
  ++ @489 /* Dear me, that's like asking me to decide between having my teeth pulled out, being boiled in oil, having my legs broken or having frightful verse read to me by an aspiring half-orc bard. I really, REALLY don't like you. */ + LK#NL11_aspbard
END

IF ~~ LK#NL11_nxtenday
  SAY @499 /* Human beings are not as good at anything as they are at getting themselves into trouble, and perhaps the truly infuriating thing is that if *you* don't help them wriggle out of it again, some other armoured interfere will surely do so just as effectively. So when you think about it, you're entirely redundant! How very impotent you must feel. */
  ++ @500 /* Impotent, frustrated, angry, lonely...and an extensive list of similar adjectives. And let me tell you, 'cuddly' doesn't feature. */ + LK#NL11_frustration
  ++ @501 /* Not really. I know I do good and righteous things. My deeds may be eclipsed by those of individuals more powerful then myself, but that doesn't mean I should stop doing them. You really are very cynical sometimes, Ninde. */ + LK#NL11_nocynicplz
  ++ @502 /* It's true. My struggle is a noble yet ultimately fruitless one, but I shall never abandon it. */ + LK#NL11_fruitless
  ++ @503 /* Yes...yes! You're bloody right. What's the point of it all? You've never done a single charitable thing for anyone and yet you seem to get along perfectly well. */ + LK#NL11_philosopher
END

IF ~~ LK#NL11_notimprove
  SAY @504 /* Human beings are not as good at anything as they are at getting themselves into trouble, and perhaps the truly infuriating thing is that if *you* don't help them wriggle out of it again, some other armoured interfere will surely do so just as effectively. So when you think about it, you're entirely redundant! How very impotent you must feel. 'Improving the realms', indeed. */
  ++ @500 /* Impotent, frustrated, angry, lonely...and an extensive list of similar adjectives. And let me tell you, 'cuddly' doesn't feature. */ + LK#NL11_frustration
  ++ @501 /* Not really. I know I do good and righteous things. My deeds may be eclipsed by those of individuals more powerful then myself, but that doesn't mean I should stop doing them. You really are very cynical sometimes, Ninde. */ + LK#NL11_nocynicplz
  ++ @502 /* It's true. My struggle is a noble yet ultimately fruitless one, but I shall never abandon it. */ + LK#NL11_fruitless
  ++ @503 /* Yes...yes! You're bloody right. What's the point of it all? You've never done a single charitable thing for anyone and yet you seem to get along perfectly well. */ + LK#NL11_philosopher
END

IF ~~ LK#NL11_poet
  SAY @505 /* In that case...here's a verse for you, pet. I forget the bard...I just remember reading it in the library the night before an examination at the Seminary. On one of those thick, strange-smelling nights that follows a too-hot day. */
  = @506 /* Had I the heavens' embroidered cloths, enwrought with golden and silver light,
The blue and the dim and the dark cloths of night and light and the half-light,
I would spread the cloths under your feet: But I, being poor, have only my dreams;
I have spread my dreams under your feet; Tread softly because you tread on my dreams. */
  IF ~~ EXIT
END

IF ~~ LK#NL11_scientist
  SAY @507 /* In that case, did you know there are long-necked beasts with teeth the size of my forearm in the Sea of Fallen Stars so large that you could live quite comfortably in one of the ventricles of its heart? Just to put things in perspective, you dear little Bhaalspawn, you! */
  IF ~~ EXIT
END

IF ~~ LK#NL11_philosopher
  SAY @508 /* I've been waiting 50 years for someone to suggest they enjoyed my misanthropic speculations, but philosophy says nothing to me about my life, generally speaking. Your sages and mages have nothing to say about the warm pleasures of a drunken stupor, or why the light playing a certain way in the treetops can recall a vivid recollection of one's childhood so effectively. */
  = @509 /* Perhaps you should not let prophets and dreams say so much to you about your life, either. You'd enjoy things far more, I'm sure, chicken. You're so serious sometimes. */
  IF ~~ EXIT
END

IF ~~ LK#NL11_cynic
  SAY @510 /* In that case, <CHARNAME>, we are stuck in a world in which a people with the same Gods, the same dirty secrets, the same bestial urges, would rather be brought together for battle than for love. And undergarments are uncomfortable and inhibiting. */
  IF ~~ EXIT
END

IF ~~ LK#NL11_tender
  SAY @511 /* Why <CHARNAME>, you touching old sentimentalist! */
  IF ~~ EXIT
END

IF ~~ LK#NL11_massageoil
  SAY @512 /* (smile) Truly, <CHARNAME>, you are a man of no account! Well...play your cards right, dear, and who knows where the day may take us. Though I doubt you're quite that smooth. */
  IF ~~ EXIT
END

IF ~~ LK#NL11_aspbard
  SAY @513 /* Heavy words lightly flung, <CHARNAME>. If you find my occasional pushiness so very unpalatable perhaps I could recommend a more submissive female? I know a very good drab by the name of Ellen. */
  IF ~~ EXIT
END

IF ~~ LK#NL11_nindeism
  SAY @514 /* Darling, I'm of the belief everyone could do with a little more Ninde. */
  IF ~~ EXIT
END

IF ~~ LK#NL11_frustration
  SAY @515 /* My dear, things are ever so hectic. If all this is ever over, I'll have to introduce you to the wonders of a Damaran herbal steam bath. I don't think it is likely to ever be over though, which may be just as well, because you in Waterdeep's most luxurious bathhouse would be almost as incongruous as Irenicus dancing the foxtrot in pink satin. */
  IF ~~ EXIT
END

IF ~~ LK#NL11_nocynicplz
  SAY @516 /* Well if you don't appreciate my witty cynicism, how do you prefer me, honeybunch...? */
  ++ @495 /* I like the poet in you.. */ + LK#NL11_poet
  ++ @496 /* I like your cynicism. Whoever said sarcasm is the lowest form of wit clearly never met Lady Amblecrown. */ + LK#NL11_cynic
  ++ @497 /* I like the rare glimpses tenderness I see now and then... */ + LK#NL11_tender
  ++ @498 /* Naked and covered in massage oil. */ + LK#NL11_massageoil
  ++ @489 /* Dear me, that's like asking me to decide between having my teeth pulled out, being boiled in oil, having my legs broken or having frightful verse read to me by an aspiring half-orc bard. I really, REALLY don't like you. */ + LK#NL11_aspbard
END

IF ~~ LK#NL11_fruitless
  SAY @517 /* How awfully bleak. Perhaps you should not let prophets and dreams, sages and mages say so much to you about your life and what you ought to do with it. You'd enjoy things far more, I'm sure, chicken. You can be so serious sometimes. */
  IF ~~ EXIT
END


// 12. After death
// ---------------
IF ~Global("LK#NindeLoveTalks","GLOBAL",23) RealGlobalTimerExpired("LK#NindeLoveTalksTimer","GLOBAL")~ LK#NL12
  SAY @518 /* I suppose now is as good a time to ask as any. <CHARNAME>, what do you wish to be done with your body after you die? */
  ++ @519 /* I know I happen to get myself into, er, difficult situations on a-little-bit-more-than-daily basis, but don't start drawing up the plans for the monument yet. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",3)~ + LK#NL12_monument
  ++ @520 /* If you're trying to be a comforting presence in my time of greatest need, you are failing magnificently. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",3)~ + LK#NL12_magnificent
  ++ @521 /* Err...well I've never really thought about it, actually. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",3)~ + LK#NL12_neverthort
  ++ @522 /* I've never considered the matter, and I'm not about to start, either. Far too depressing if you ask me! */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",3)~ + LK#NL12_monument
END

IF ~~ LK#NL12_monument
  SAY @523 /* I am simply curious--and rather of the belief that how a man wishes to look after his death is a firm indicator of how he wishes he had been in life. And that...that's something I'd like to know that about you. So? */
  ++ @524 /* Something fairly understated, I suppose. With my friends, and family, if I have any. Perhaps a nice tombstone, that sort of thing. As any man might be buried. */ + LK#NL12_justnormal
  ++ @525 /* A little class would be appreciated. I wouldn't say no to a marble statue of me looking all dignified in the Duchal palace at Baldur's Gate, or some sort of ostentatious monument. I'd like to be remembered, but I'm not overly concerned with what happens after I am dead. */ + LK#NL12_afterdead
  ++ @526 /* Well, I would like a prominent and glorious mausoleum--in Candlekeep perhaps--to act as fitting monument to my great and tempestuous existence. I will be buried in sumptuous robes of state and enough gold jewelery to break a back. I'll be carried through the city by a crowd of my weeping devotees, and my body will be followed by legions of my mourning admirers. */ + LK#NL12_sumptuous
  ++ @527 /* What happens to my body does not concern me. My mortal remains could be eaten by rabid dogs for all I care. */ + LK#NL12_justnormal
END

IF ~~ LK#NL12_magnificent
  SAY @528 /* A comforting presence? Well, I could transfigure myself into a chaise lounge, but I fear that might somewhat hamper my usefulness in a combat scenario. Depressing as you find the question, do answer, darling. */
  ++ @524 /* Something fairly understated, I suppose. With my friends, and family, if I have any. Perhaps a nice tombstone, that sort of thing. As any man might be buried. */ + LK#NL12_justnormal
  ++ @529 /* A little class would be appreciated. I wouldn't say no to a marble statue of me looking all dignified in the Duchal palace at Baldur's Gate, or some sort of ostentatious monument. I'd like to be remembered, but I'm not overly concerned with what happens after I'm dead. */ + LK#NL12_afterdead
  ++ @530 /* Well, I'd like a prominent and glorious mausoleum--in Candlekeep perhaps--to act as fitting monument to my great and tempestuous existence. I will be buried in sumptuous robes of state and enough gold jewelery to break a back. I'll be carried through the city by a crowd of my weeping devotees, and my body will be followed by legions of my mourning admirers. */ + LK#NL12_sumptuous
  ++ @527 /* What happens to my body does not concern me. My mortal remains could be eaten by rabid dogs for all I care. */ + LK#NL12_justnormal
  ++ @531 /* No. I'm tired of you, Ninde, and I'm tired of your morbid chatter. Get lost. Preferably in a beholder lair. */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ + LK#NL12_beholders
END

IF ~~ LK#NL12_neverthort
  SAY @532 /* Yes, well, there's a lot you haven't thought about. Consider this a prime opportunity for the expansion of your intellectual horizons. So? */
  ++ @524 /* Something fairly understated, I suppose. With my friends, and family, if I have any. Perhaps a nice tombstone, that sort of thing. As any man might be buried. */ + LK#NL12_justnormal
  ++ @529 /* A little class would be appreciated. I wouldn't say no to a marble statue of me looking all dignified in the Duchal palace at Baldur's Gate, or some sort of ostentatious monument. I'd like to be remembered, but I'm not overly concerned with what happens after I'm dead. */ + LK#NL12_afterdead
  ++ @533 /* Well, I'd like a prominent and glorious mausoleum--in Candlekeep Gate perhaps--to act as fitting monument to my great and tempestuous existence. I will be buried in sumptuous robes of state and enough gold jewelery to break a back. I'll be carried through the city by a crowd of my weeping devotees, and my body will be followed by legions of my mourning admirers. */ + LK#NL12_sumptuous
  ++ @527 /* What happens to my body does not concern me. My mortal remains could be eaten by rabid dogs for all I care. */ + LK#NL12_justnormal
  ++ @531 /* No. I'm tired of you, Ninde, and I'm tired of your morbid chatter. Get lost. Preferably in a beholder lair. */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ + LK#NL12_beholders
END

IF ~~ LK#NL12_justnormal
  SAY @534 /* What a crippling lack of imagination you demonstrate! What kind of man wishes for such an anonymous death, such indifference to follow in the wake of his name? You aren't nearly confident enough, sweetness. */
  ++ @535 /* There's a thin line between confidence and plain self-importance, wouldn't you agree? */ + LK#NL12_selfimport
  ++ @536 /* Perhaps you're right. I am a Bhaalspawn, great and powerful. Surely my burial should mirror that? */ + LK#NL12_reflect
  ++ @537 /* Not at all. I'm simply more concerned with my life then my death. After all, it's not as though I'm going to be around to enjoy an opulent burial, is it? */ + LK#NL12_opulent
  ++ @538 /* I'd prefer to think I was simply modest. Why do I deserve any more than the common man? */ + LK#NL12_commonplace
END

IF ~~ LK#NL12_afterdead
  SAY @539 /* Opulent, yet not outrageous. My Lord, you are a man who knows he does great things but does not wish undue admiration for them. Clever. */
  IF ~~ + LK#NL12_main1
END

IF ~~ LK#NL12_sumptuous
  SAY @540 /* Opulence befits a man like you, my Lord. You do great things, and you know you do them. But I think there are a profusion of great things yet to come; you are balanced on the very diamond-tip of the age. It is you who will strike into the shadow, glow above all. */
  IF ~~ + LK#NL12_main1
END

IF ~~ LK#NL12_beholders
  SAY @541 /* Your dismissals would sting more if they were wittier, <CHARNAME>. */
  IF ~~ EXIT
END

IF ~~ LK#NL12_selfimport
  SAY @542 /* But confidence befits a man like you, my Lord. You do great things, and you know you do them. */
  IF ~~ + LK#NL12_main1
END

IF ~~ LK#NL12_reflect
  SAY @543 /* It does, my Lord. You do great things, and you know you do them. */
  IF ~~ + LK#NL12_main1
END

IF ~~ LK#NL12_opulent
  SAY @544 /* Mm, this modesty doesn't become you my Lord. You do great things, and you know you do them. */
  IF ~~ + LK#NL12_main1
END

IF ~~ LK#NL12_main1
  SAY @545 /* But I think you are yet to do a profusion of great things; you are balanced on the very diamond-tip of the age. It is you who will strike into the shadow, glow above all. */
  ++ @546 /* Ninde, you're just setting me up for disappointment! */ + LK#NL12_disappointment
  ++ @547 /* Yes. I am glad there is another who realises my power. */ + LK#NL12_realise
  ++ @548 /* Is...is that what you want for me? */ + LK#NL12_want4me
  ++ @549 /* But I don't want any of that! I would trade it all to have Gorion back, to have stayed in Candlekeep, to have found a nice rosy-cheeked farm girl to settle down with. */ + LK#NL12_humble
  ++ @550 /* What you describe is attractive, but I am not yet sure of the role I will play in the future of the realms. I might die tomorrow, for all we know. */ + LK#NL12_disappointment
  ++ @551 /* You have a habit of making everything sound more profound then it really is. I'm simply doing the best I can to survive. */ + LK#NL12_survival
END

IF ~~ LK#NL12_commonplace
  SAY @552 /* Mm, but modesty does not become you my Lord. You do great things, and you know you do them. But I think there are a profusion of great things yet to come; you are balanced on the very diamond-tip of the age. It is you who will strike into the shadow, glow above all. You deserve better than the common man because you are greater than the common man. When your time comes, the common man--the very realms themselves - will burn and quake before you. */
  ++ @546 /* Ninde, you're just setting me up for disappointment! */ + LK#NL12_disappointment
  ++ @553 /* Yes. I'm glad there is another who realises my power. */ + LK#NL12_realise
  ++ @548 /* Is...is that what you want for me? */ + LK#NL12_want4me
  ++ @549 /* But I don't want any of that! I would trade it all to have Gorion back, to have stayed in Candlekeep, to have found a nice rosy-cheeked farm girl to settle down with. */ + LK#NL12_humble
  ++ @550 /* What you describe is attractive, but I am not yet sure of the role I will play in the future of the realms. I might die tomorrow, for all we know. */ + LK#NL12_disappointment
  ++ @551 /* You have a habit of making everything sound more profound then it really is. I'm simply doing the best I can to survive. */ + LK#NL12_survival
END

IF ~~ LK#NL12_disappointment
  SAY @554 /* It rests in your own hands, my Lord...Sykre once told me--and they are words as true today as they were all those years ago--that it is rarely the well behaved who make history. He was right. When the very realms shiver at the touch of your feet you will thank me for this advice. Anything...anything you wish can be yours. Your power is limited only by your imagination. */
  IF ~~ + LK#NL12_main2
END

IF ~~ LK#NL12_realise
  SAY @555 /* And it pleases me that you are aware of your own capabilities, my Lord...Faerun is a ripe, ruddy fruit, ready to be torn from the bough, glistening for a fierce bite. Anything...anything you wish for can be yours. Your power is limited only by your imagination. */
  IF ~~ + LK#NL12_main2
END

IF ~~ LK#NL12_want4me
  SAY @556 /* I simply want you to fulfill your true potential, my Lord...Faerun is a ripe, ruddy fruit, ready to be torn from the bough, glistening for a fierce bite. Anything...anything you wish for can be yours. Your power is limited only by your imagination. */
  IF ~~ + LK#NL12_main2
END

IF ~~ LK#NL12_humble
  SAY @557 /* But who are you to deny fate when she extends a hand? I simply want you to fulfill your true potential, my Lord...Faerun is a ripe, ruddy fruit, ready to be torn from the bough, glistening for a fierce bite. Anything...anything you wish for can be yours. Your power is limited only by your imagination. */
  = @558 /* And of course...a little inspiration. And that's where I come in, hmm? */
  ++ @559 /* You...you're a bad influence on me, Ninde. */ + LK#NL12_einfluss
  ++ @560 /* What nonsense, Ninde. Going on like I'm some unstoppable force of nature, when I'm actually nothing like it. I'm just a man. A powerful one, maybe. But nonetheless, still simply a man. */ + LK#NL12_justaman
  ++ @561 /* The way you speak frightens me, Ninde. You would have me seize the power of my bloodline without thought...but that can lead only to darkness. */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ + LK#NL12_darkness
  ++ @562 /* My thoughts have not, and will not, change. */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ + LK#NL12_darkness
END

IF ~~ LK#NL12_survival
  SAY @563 /* But my Lord...you are so much more. Faerun is a ripe, ruddy fruit, ready to be torn from the bough, glistening for a fierce bite. Anything...anything you wish for can be yours. Your power is limited only by your imagination. */
  IF ~~ + LK#NL12_main2
END

IF ~~ LK#NL12_main2
  SAY @558 /* And of course...a little inspiration. And that's where I come in, hmm? */
  ++ @564 /* Ninde, you are, and you ever will be, my muse for evil and naughtiness. */ + LK#NL12_naughty
  ++ @565 /* Darling, I'm the son of the ravening Lord of Murder. When it comes to evil, I don't need any help. */ + LK#NL12_noneedno
  ++ @559 /* You...you're a bad influence on me, Ninde. */ + LK#NL12_einfluss
  ++ @566 /* What nonsense you talk, Ninde. Going on like I'm some unstoppable force of nature, when I'm actually nothing like it. I'm just a man. A powerful one, maybe. But nonetheless, still simply a man. */ + LK#NL12_justaman
  ++ @561 /* The way you speak frightens me, Ninde. You would have me seize the power of my bloodline without thought...but that can lead only to darkness. */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ + LK#NL12_darkness
END

IF ~~ LK#NL12_naughty
  SAY @567 /* (smiles) You should be pleased that Ninde, a seasoned doer of naughtiness would deign to take a rank amateur like yourself under her wing. */
  ++ @568 /* Oh, it's not your *wing* I'm looking to be under, Ninde. Heh. */ + LK#NL12_notwing
  ++ @569 /* Honoured, truly. */ + LK#NL12_honoured
  ++ @570 /* Excuse me, but do you know who you're talking to, here? <CHARNAME>, the scourge of the righteous, bane of the benevolent, and scarer of small children! */ + LK#NL12_titles
  ++ @571 /* Really, how patronising! The most evil thing you've ever done is wear orange and purple together. If anything, it is you who should be learning from me. */ + LK#NL12_notwing
  ++ @572 /* Oh ho! You were calling me 'Lord' a moment ago, but now I'm 'a rank amateur'. You're a most capricious woman, Ninde. */ + LK#NL12_capriciousness
END

IF ~~ LK#NL12_noneedno
  SAY @573 /* Please, <CHARNAME>, you are but a rank amateur. The most evil thing you've ever done is wear that outfit. */
  ++ @574 /* And the most evil thing you've ever done is question my impeccable dress sense! */ + LK#NL12_notwing
  ++ @570 /* Excuse me, but do you know who you're talking to, here? <CHARNAME>, the scourge of the righteous, bane of the benevolent, and scarer of small children! */ + LK#NL12_titles
  ++ @575 /* Perhaps you're right. I could do with a few pointers. */ + LK#NL12_pointers
  ++ @572 /* Oh ho! You were calling me 'Lord' a moment ago, but now I'm 'a rank amateur'. You're a most capricious woman, Ninde. */ + LK#NL12_capriciousness
END

IF ~~ LK#NL12_einfluss
  SAY @576 /* I try ever so hard to be. You should be pleased that Ninde, a seasoned doer of naughtiness would deign to take a rank amateur like yourself under her wing. */
  ++ @577 /* Oh, it's not your *wing* I'm looking to be under, Ninde. */ + LK#NL12_notwing
  ++ @569 /* Honoured, truly. */ + LK#NL12_honoured
  ++ @571 /* Really, how patronising! The most evil thing you've ever done is wear orange and purple together. If anything, it is you who should be learning from me. */ + LK#NL12_notwing
  ++ @572 /* Oh ho! You were calling me 'Lord' a moment ago, but now I'm 'a rank amateur'. You're a most capricious woman, Ninde. */ + LK#NL12_capriciousness
END

IF ~~ LK#NL12_justaman
  SAY @578 /* If you believe you are 'just a man', you do not understand yourself at all. */
  IF ~~ DO ~IncrementGlobal("LK#NindeLikesPC","GLOBAL",-1)~ EXIT
END

IF ~~ LK#NL12_darkness
  SAY @579 /* Then your folly is greater than I had thought. It is not my job to lead you to yourself. */
  IF ~~ EXIT
END

IF ~~ LK#NL12_notwing
  SAY @580 /* (Rolls eyes) Very amusing. What would this journey be without your erudite wit, I wonder? */
  IF ~~ EXIT
END

IF ~~ LK#NL12_honoured
  SAY @581 /* As well you should be, dear. Now let us continue to blight this fine day with marching. By Velsharoon, you are a harsh taskmaster. */
  IF ~~ EXIT
END

IF ~~ LK#NL12_capriciousness
  SAY @582 /* Well...a woman never got anywhere by being obliging... */
  IF ~~ EXIT
END

IF ~~ LK#NL12_titles
  SAY @583 /* With breath like that it isn't just babies you're scaring, pet. Now let's continue to blight this fine day with marching. By Velsharoon, you are a harsh taskmaster. */
  IF ~~ EXIT
END

IF ~~ LK#NL12_pointers
  SAY @584 /* Well, let us get the basics right before we move on to more advanced evil-doing. Perhaps you should consider some jaunty facial hair? A well-combed moustache is the hallmark of a high-quality villain. But for now, let us continue to blight this fine day with marching. By Velsharoon, you are a harsh taskmaster. */
  IF ~~ EXIT
END

// 14. History and childhood!
// --------------------------
IF ~Global("LK#NindeLoveTalks","GLOBAL",27) RealGlobalTimerExpired("LK#NindeLoveTalksTimer","GLOBAL")~ LK#NL14
  SAY @585 /* You, like I, were adopted. Tell me a little about your foster father, this Gorion... */
  = @586 /* I think I'd like to have met the man who made a <CHARNAME>. */
  ++ @587 /* He was a good, noble man. He died protecting me from my brother, something that will always cause me anguish. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL14_anguish
  ++ @588 /* Gorion meant well, but was a little foolish now and then, like most unthinking do-gooders. I'm thankful for all he did for me, but glad to be out of his shadow. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL14_dogoodars
  ++ @589 /* He was a fool, whose antiquated notions of nobility got him nothing more than a sword through his chest. I'm well shot of him. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL14_shotofhem
  ++ @590 /* Gorion did not make me in any sense. From the very first days of my childhood I struck forth in my own image. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL14_dogoodars
  ++ @591 /* I do not like to talk about it, Ninde. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL14_notalksya
END

IF ~~ LK#NL14_anguish
  SAY @592 /* Yes, well as admirable as you might find his behaviour, I hope to Shar you don't begin to emulate it. Without resorting to crude hyperbole, throwing yourself on the very un-proverbial-and-big-sharp-sword is, at best, incredibly stupid. */
  ++ @593 /* I agree completely. I would never sacrifice my life for that of another...I am simply thankful that Gorion didn't feel the same way. */ + LK#NL14_gorionfel
  ++ @594 /* I think perhaps if you care for someone so deeply, it wouldn't be a question of choice. You would have to. */ + LK#NL14_pacify
  ++ @595 /* Do you find it so difficult to conceive of putting someone other than yourself ahead? */ + LK#NL14_sumahead
  ++ @596 /* I should've known better than to speak about Gorion with you. You insist on rubbishing even him. */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ + LK#NL14_rubbishing
END

IF ~~ LK#NL14_dogoodars
  SAY @597 /* It is good that you are so keen to follow your own path--I respect this--but there is no weakness in acknowledging those who have protected you. */
  IF ~~ + LK#NL14_main1
END

IF ~~ LK#NL14_main1
  SAY @598 /* I find...I find my thoughts often turn to my own foster-father...and to my brother. */
  ++ @599 /* I would be interested in hearing more of them. You've told me much of the darker side of your past, but so little of your formative years. */ + LK#NL14_formative
  ++ @600 /* And they, like Gorion, are long since dead. */ + LK#NL14_longsince
  ++ @601 /* I dread to think what kind of family could have produced a harpy as sour as you. */ + LK#NL14_soure
END

IF ~~ LK#NL14_shotofhem
  SAY @602 /* Why, <CHARNAME>! I'd expect gentler words even from you. There is no weakness in acknowledging those who have protected you. */
  IF ~~ + LK#NL14_main1
END

IF ~~ LK#NL14_notalksya
  SAY @603 /* Oh, my Lord--but why so secretive? I can be a sympathetic ear when I wish to be. */
  ++ @604 /* Very well. He was a good man, an honourable man--and he died defending my life. I spent the best part of my time adventuring seeking to avenge him. */ + LK#NL14_anguish
  ++ @605 /* He was a good man, but given to pointless sentimentality. I respect him, but I am pleased to be able to shape my own course independent of him. */ + LK#NL14_dogoodars
  ++ @606 /* Nought but a would-be scholar fraught with ill-placed benevolence. */ +LK#NL14_shotofhem
  ++ @607 /* Do not press me, Ninde. It is a subject I do not wish to discuss with you or anyone. */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ + LK#NL14_anywon
END

IF ~~ LK#NL14_gorionfel
  SAY @608 /* As am I. Amn would be a significantly less fascinating place if you were absent from it. */
  = @609 /* Speaking of benevolent foster families, I often find myself thinking of my own. My father...and my brother. */
  ++ @599 /* I would be interested in hearing more of them. You've told me much of the darker side of your past, but so little of your formative years. */ + LK#NL14_formative
  ++ @600 /* And they, like Gorion, are long since dead. */ + LK#NL14_longsince
  ++ @601 /* I dread to think what kind of family could have produced a harpy as sour as you. */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ + LK#NL14_soure
END

IF ~~ LK#NL14_pacify
  SAY @610 /* I have known no such sacrificial love, though others may have felt it for me. */
  IF ~~ + LK#NL14_main1alt
END

IF ~~ LK#NL14_sumahead
  SAY @611 /* I understand it well enough in theory, but have never felt a passion so strong it was self-sacrificial...though others may have felt it for me. */
  IF ~~ + LK#NL14_main1alt
END

IF ~~ LK#NL14_main1alt
  SAY @612 /* My own family--my foster father, my brother--showed such kindness to me. I often find myself thinking of them. */
  ++ @599 /* I would be interested in hearing more of them. You've told me much of the darker side of your past, but so little of your formative years. */ + LK#NL14_formative
  ++ @600 /* And they, like Gorion, are long since dead. */ + LK#NL14_longsince
  ++ @601 /* I dread to think what kind of family could have produced a harpy as sour as you. */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ + LK#NL14_soure
END

IF ~~ LK#NL14_rubbishing
  SAY @613 /* You demonstrate such gross misunderstanding, <CHARNAME>. */
  IF ~~ EXIT
END

IF ~~ LK#NL14_formative
  SAY @614 /* Very well. But where to begin? Hmm... */
  IF ~~ + LK#NL14_main2
END

IF ~~ LK#NL14_main2
  SAY @615 /* I was found by a merchant's caravan bound for Waterdeep, wandering through the forest, made brainless either by some Drow magic or the slaughter I had just witnessed, little more than a child. Respen Amblecrown rode at the party's head, and it was he who insisted I be brought to Waterdeep. Now, I am an expert at divining ulterior motives...but there were never any behind his actions except to bring a smile to a sullen face. Or in this case...to save my life. */
  = @616 /* His father--our father--Inaed Amblecrown, was a little more wily in nature, a little colder in heart, but soon grew as attached to me as his son had done. He despised his son, with his slow ways and soft voice. But he was a shrewd, intelligent man, with an eye for the magical. Seeing my aptitude, he took me in. He taught me. Soon I was more his daughter than Respen was his son. But I do not think Respen felt any bitterness. He was happy to be left to his riding, his swordplay, his quiet kindness...we--we were closer than many siblings of the same blood. */
  = @617 /* We would share quiet smiles across the dinner table about our father's eccentricities. Find the best banisters to slide down, torment the housekeepers. We were very different, but I suppose, much like you and Imoen.... very close. Unconditionally so. When father died, the estate and the trading coster fell to a young man still unripe, still immature and without any head for business. Our wealth had once seemed as true and unending as the sky, but now began to swiftly diminish. */
  = @618 /* For the first time I was terrified of what lay beyond the city gates--and felt unprepared for it. I was the sweet fascination of Waterdeep's high society--but that could not last. What was expected of me? An advantageous marriage, a kind temperament. I did not want any of this. I threw myself into my studies. I began to research shadow magic and necromancy. I slept with every man who wanted me. I replaced Oghma with Shar. I was confused, distraught, and making myself thoroughly unpalatable to the world of social niceties and big money I had once tried so hard to be a part of. */
  = @619 /* Respen had enough on his plate without an errant sister, but there was little he could do. I was set in my ways. After joining the Night Hand I made more enemies every day, and did not care. With Sykre and the others I felt infallible, the invulnerability of youth multiplied by the giddying power I found within myself.... I remember the last night I saw Respen alive. */
  = @620 /* We stood beside each other in the court yard of our manor, the night cold, the soft currents of kinship still running between us despite all I had done to sully his name. He asked me if I wished him to keep my chamber in the house. I said I did not care. He smiled at me. He said he had to ride to Silverymoon on urgent business that night. I told him his horse looked a pathetic beast. He smiled at me again and ruffled my hair. I squeezed his hand. A strange storm was brewing to the east and the stallion shied from the gates, marble eyes rolling. It was the storm that was to bring the Gods with it, your father among them. */
  = @621 /* That night he was murdered by Shadow Thieves, seeking me. But not just murdered. Bloodied to an unrecognisable pulp as a certain gesture. In a sick way, I admired their thoroughness. I felt hollowness in the back of my throat. Death was real, not a child's game, an act of defiance against life. My brother, my rock, was murdered. I had felt what it was like to be both the murderess and the murdered. For I was murdered--the last remaining spot of me left untouched by the black. */
  = @622 /* I am not one to hold grudges, but those who did that to him, destroyed a spotless soul and body that existed to prop up others, eyes without the barest tinct of corruption...I will destroy them totally and utterly, in body, in mind, in soul. Laugh as I drag from them a final heavy scream, then bring them back and start it all again. I would never tire of it, you know. */
  ++ @623 /* I am sorry you lost your brother. It sounds as though you cared for him a great deal. */ + LK#NL14_greatdeal
  ++ @624 /* I know the ardency with which you want vengeance. I felt it myself, when Gorion was killed. */ + LK#NL14_gorkilled
  ++ @625 /* It is not good to have such a vengeful attitude, Ninde. */ + LK#NL14_novenge
  ++ @626 /* That...that explains a lot to me about you. */ + LK#NL14_greatdeal
  ++ @627 /* Hells, how longwinded and boring that was! */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ + LK#NL14_anywon
END

IF ~~ LK#NL14_longsince
  SAY @628 /* Longer, actually. I will tell you a little about them. */
  IF ~~ + LK#NL14_main2
END

IF ~~ LK#NL14_soure
  SAY @629 /* What a repellent little whelp you are, <CHARNAME>. I sometimes wonder why I bother with you. */
  IF ~~ EXIT
END

IF ~~ LK#NL14_anywon
  SAY @630 /* You wish to be alone on top of your mountain. Very well, I shall bother you no longer. */
  IF ~~ EXIT
END

IF ~~ LK#NL14_greatdeal
  SAY @631 /* Yes...I--I have realised that whatever advanced ideas we have about what will bring us happiness, nothing ever brings us as much happiness as our childish joys, which are often un-planned, un-sought. It is a pity I learn this only now and not- no. */
  IF ~~ + LK#NL14_end
END

IF ~~ LK#NL14_gorkilled
  SAY @632 /* Yes...my story mirrors yours in many ways. Do you also find that whatever advanced ideas we have about what will bring us happiness, nothing ever brings us as much happiness as our childish joys, which are often un-planned, un-sought. It is a pity I learn this only now and not- no. */
  IF ~~ + LK#NL14_end
END

IF ~~ LK#NL14_novenge
  SAY @633 /* Perhaps you are right. Vengeance is a very adult desire, and I find that whatever advanced ideas we have about what will bring us satisfaction, nothing ever brings us as much happiness as our childish joys, which are often un-planned, un-sought. It is a pity I learn this only now and not- no. */
  IF ~~ + LK#NL14_end
END

IF ~~ LK#NL14_end
  SAY @634 /* My Lord, you are a good listener. Thank you. */
  IF ~~ EXIT
END


// 15. The clincher
// ----------------
IF ~Global("LK#NindeLoveTalks","GLOBAL",29) RealGlobalTimerExpired("LK#NindeLoveTalksTimer","GLOBAL")~ LK#NL15
  SAY @635 /* You are especially silent tonight, Bhaalspawn. */
  ++ @636 /* Ninde... */  DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1) SetGlobal("LK#NindeRomanceActive","GLOBAL",2)~ + LK#NL15_ninde
  ++ @637 /* And I suppose you've come to get me talking again? I would be...glad of the company. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1) SetGlobal("LK#NindeRomanceActive","GLOBAL",2)~ + LK#NL15_ninde
  ++ @638 /* Ninde, while usually your companionship pleases me immensely...tonight I--I don't know. I must think. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1) SetGlobal("LK#NindeRomanceActive","GLOBAL",2)~ + LK#NL15_ninde
  ++ @639 /* I am silent because I can find nothing to talk about. */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL15_contrary
  ++ @640 /* I was trying to clear my head a little, but I suppose a vitriolic doxy so completely lacking in human emotion as yourself won't really understand. Or care. You know, Ninde, contrary to what you might think, I never did like you much. */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL15_contrary
END

IF ~~ LK#NL15_ninde
  SAY @641 /* Shh. */
  = @642 /* His stomach--the corpse eating God. And his hard brain--sacred assassin. One a flame-horned mountain-stone, in the sun's disc, he heaps them all up, for the judgement. */
  = @643 /* I cannot help but think of that verse when I look at you. */
  ++ @644 /* Beautiful. */ + LK#NL15_beautiful
  ++ @645 /* I doubt Deneir himself could boast such fine verse. */ + LK#NL15_poetgod
  ++ @646 /* And why is that? */ + LK#NL15_whythat
  ++ @647 /* That's quite enough of that. I'm beginning to feel a little woozy, who knows what kind of hokum you're using on me. */ + LK#NL15_hokum
  ++ @648 /* Gods, Ninde, I'm really in no mood for your tired poeticisms. */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ + LK#NL15_poeticism
END

IF ~~ LK#NL15_poeticism
  SAY @649 /* Fine. Then I shall leave you to your loneliness. */
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ LK#NL15_contrary
  SAY @650 /* You make life very difficult for yourself, my Lord. Too difficult. You've climbed your mountain and now you seek to melt it. As you would have it, Bhaalspawn. */
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ LK#NL15_beautiful
  SAY @651 /* It is a cold night... */
  IF ~~ + LK#NL15_main1
END

IF ~~ LK#NL15_poetgod
  SAY @652 /* I wouldn't go that far. I am no demigod, though I keep the company of such. */
  IF ~~ + LK#NL15_main1
END

IF ~~ LK#NL15_main1
  SAY @653 /* You are very handsome, <CHARNAME>. Worry...it becomes you. I feel it beneath your skin as clear as your collarbones. But what ails thee, my handsome Bhaalspawn? */
  ++ @654 /* The battles that lie ahead. There are many...and I know I may not lead us all through them alive. */ + LK#NL15_impending
  ++ @655 /* I know it won't be long now until a final altercation with Irenicus. He--he is undeniably powerful. */ + LK#NL15_impending
  ++ @656 /* I am worried that...that I am falling in love. */ + LK#NL15_fallinluv
  ++ @657 /* I am not certain I will be able to protect all those I care about through what is to come. */ + LK#NL15_impending
  + ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ + @658 /* I worry about Imoen. I know little of what that beast did to her, what ghosts her mind was barraged with. She--she may never be as she once was. The thought scares me. She was all I had left of brighter days. */ + LK#NL15_imoen
  ++ @659 /* The slayer encroaches further upon me every day. How long will it be until the lines blur? It is the one battle I am sure I will lose. */ + LK#NL15_soulangst
  ++ @660 /* It's that rash on...well, you know where. I'm starting to think I caught something off that lass in Brynnlaw! */ + LK#NL15_stdz
END

IF ~~ LK#NL15_whythat
  SAY @661 /* Because you are a very handsome Bhaalspawn...and frightening, as well. Worry...it becomes you. I feel it beneath your skin as clear as your collarbones. But what ails thee, my Lord? */
  ++ @654 /* The battles that lie ahead. There are many...and I know I may not lead us all through them alive. */ + LK#NL15_impending
  ++ @655 /* I know it won't be long now until a final altercation with Irenicus. He--he is undeniably powerful. */ + LK#NL15_impending
  ++ @656 /* I am worried that...that I am falling in love. */ + LK#NL15_fallinluv
  ++ @657 /* I am not certain I will be able to protect all those I care about through what is to come. */ + LK#NL15_impending
  + ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ + @658 /* I worry about Imoen. I know little of what that beast did to her, what ghosts her mind was barraged with. She--she may never be as she once was. The thought scares me. She was all I had left of brighter days. */ + LK#NL15_imoen
  ++ @659 /* The slayer encroaches further upon me every day. How long will it be until the lines blur? It is the one battle I am sure I will lose. */ + LK#NL15_soulangst
  ++ @660 /* It's that rash on...well, you know where. I'm starting to think I caught something off that lass in Brynnlaw! */ + LK#NL15_stdz
END

IF ~~ LK#NL15_hokum
  SAY @662 /* Goodness, you've been in Amn far too long. I play no tricks. What good would it do? But you are worried. I feel it under your skin as clear as your collar bones. But what ails thee, my Lord? */
  ++ @654 /* The battles that lie ahead. There are many...and I know I may not lead us all through them alive. */ + LK#NL15_impending
  ++ @655 /* I know it won't be long now until a final altercation with Irenicus. He--he is undeniably powerful. */ + LK#NL15_impending
  ++ @656 /* I am worried that...that I am falling in love. */ + LK#NL15_fallinluv
  ++ @657 /* I am not certain I will be able to protect all those I care about through what is to come. */ + LK#NL15_impending
  + ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ + @658 /* I worry about Imoen. I know little of what that beast did to her, what ghosts her mind was barraged with. She--she may never be as she once was. The thought scares me. She was all I had left of brighter days. */ + LK#NL15_imoen
  ++ @659 /* The slayer encroaches further upon me every day. How long will it be until the lines blur? It is the one battle I am sure I will lose. */ + LK#NL15_soulangst
  ++ @660 /* It's that rash on...well, you know where. I'm starting to think I caught something off that lass in Brynnlaw! */ + LK#NL15_stdz
END

IF ~~ LK#NL15_impending
  SAY @663 /* There are many battles ahead, this is true. Some of us may die--so it goes. I know you, Bhaalspawn. You will fight on. You will strike for the heart...as you struck for mine. */
  ++ @664 /* I love you, Ninde. */ + LK#NL15_iluvu
  ++ @665 /* I care for you a great deal, Ninde--a great deal. But I cannot...all it would do is endanger you further. */ + LK#NL15_endanger
  ++ @666 /* So you mean to say, all this time, while you've been scathing, vitriolic, beastly, cruel and conniving to me...you've actually loved me? Dear, the phrase is 'treat them mean, keep them keen', not 'verbally batter them to within an inch of sanity, keep them keen.' But...but whatever you did, it worked. I am yours, Ninde. Irretrievably. */ + LK#NL15_endanger
  ++ @667 /* Ahh, my wily charms claim yet another gasping victim! */ + LK#NL15_victim
  ++ @668 /* What...what do you mean? */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ + LK#NL15_whatdoumean
  ++ @669 /* Your heart? Pity I missed. Then again, it's a pretty small target, is it not? */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ + LK#NL15_smaltarg
END

IF ~~ LK#NL15_fallinluv
  SAY @670 /* Those without souls cannot love, <CHARNAME>. At least, that is according to the lore that I have read. Then again... */
  = @671 /* I again find I am thrilled to feel a pair of eyes upon me, that something fine and dark stirs within my heart. Perhaps the old sages were wrong again. */
  ++ @664 /* I love you, Ninde. */ + LK#NL15_iluvu
  ++ @665 /* I care for you a great deal, Ninde--a great deal. But I cannot...all it would do is endanger you further. */ + LK#NL15_endanger
  ++ @666 /* So you mean to say, all this time, while you've been scathing, vitriolic, beastly, cruel and conniving to me...you've actually loved me? Dear, the phrase is 'treat them mean, keep them keen', not 'verbally batter them to within an inch of sanity, keep them keen.' But...but whatever you did, it worked. I am yours, Ninde. Irretrievably. */ + LK#NL15_endanger
  ++ @667 /* Ahh, my wily charms claim yet another gasping victim! */ + LK#NL15_victim
  ++ @668 /* What...what do you mean? */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ + LK#NL15_whatdoumean
  ++ @672 /* Don't make me laugh, Ninde. You? Capable of love? */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ + LK#NL15_smaltarg
END

IF ~~ LK#NL15_imoen
  SAY @673 /* It is odd that your attachment to her remains...so intact. When Lassal took my soul, I lost all love. All love. I am glad you have yet to experience it...it is like...boredom. An ultimate, incurable boredom, never to love again, feel the thrill of someone fine and mysterious to you stirring in your heart. I had not in thirty years. */
  IF ~~ + LK#NL15_main2
END

IF ~~ LK#NL15_soulangst
  SAY @674 /* I see it gnaw at you every day, and yet you prove so...resilient. When Lassal took my soul, I lost all love and all life. All love. I am glad you have yet to experience it...it is like...boredom. An ultimate, incurable boredom, know you are never to love again, feel the thrill of someone fine and mysterious to you stirring in your heart. I had not in thirty years. */
  IF ~~ + LK#NL15_main2
END

IF ~~ LK#NL15_main2
  SAY @675 /* And then I met you. My dark lord, my Bhaalspawn. You...you struck for my heart. */
  ++ @664 /* I love you, Ninde. */ + LK#NL15_iluvu
  ++ @665 /* I care for you a great deal, Ninde--a great deal. But I cannot...all it would do is endanger you further. */ + LK#NL15_endanger
  ++ @666 /* So you mean to say, all this time, while you've been scathing, vitriolic, beastly, cruel and conniving to me...you've actually loved me? Dear, the phrase is 'treat them mean, keep them keen', not 'verbally batter them to within an inch of sanity, keep them keen.' But...but whatever you did, it worked. I am yours, Ninde. Irretrievably. */ + LK#NL15_endanger
  ++ @667 /* Ahh, my wily charms claim yet another gasping victim! */ + LK#NL15_victim
  ++ @668 /* What...what do you mean? */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ + LK#NL15_whatdoumean
  ++ @676 /* Your heart? Don't make me laugh. You don't have a heart. */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ + LK#NL15_smaltarg
END

IF ~~ LK#NL15_stdz
  SAY @677 /* My Lord, my dark, my Bhaalspawn. With all the battles to come he jokes even now. You are foolish and fierce, and you...you have struck for my heart. */
  ++ @664 /* I love you, Ninde. */ + LK#NL15_iluvu
  ++ @665 /* I care for you a great deal, Ninde--a great deal. But I cannot...all it would do is endanger you further. */ + LK#NL15_endanger
  ++ @666 /* So you mean to say, all this time, while you've been scathing, vitriolic, beastly, cruel and conniving to me...you've actually loved me? Dear, the phrase is 'treat them mean, keep them keen', not 'verbally batter them to within an inch of sanity, keep them keen.' But...but whatever you did, it worked. I am yours, Ninde. Irretrievably. */ + LK#NL15_endanger
  ++ @667 /* Ahh, my wily charms claim yet another gasping victim! */ + LK#NL15_victim
  ++ @668 /* What...what do you mean? */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ + LK#NL15_whatdoumean
  ++ @669 /* Your heart? Pity I missed. Then again, it's a pretty small target, is it not? */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ + LK#NL15_smaltarg
END

IF ~~ LK#NL15_iluvu
  SAY @678 /* I--that is to say...I fear you are mistaken, Bhaalspawn. Godchild. I did not mean--you are a child...a boy. You have...so many battles. I will fight them with you. But not love--I have no love. There is none left for you or for any other. I... */
  ++ @679 /* Ninde, do not leave me tonight. */ + LK#NL15_notleave
  ++ @680 /* It changes nothing. Whether you love me or despise me, I will still be yours. Hopeless and devoted. */ + LK#NL15_devoted
  ++ @681 /* Perhaps you do not love me yet, but I am convinced that you will. Just look at this roguishly handsome face! */ + LK#NL15_roguishly
  ++ @682 /* You are mine, Ninde. You are now, and you always will be...and you know it. */ + LK#NL15_unoeet
  ++ @683 /* As you would have it, Ninde. Goodnight. */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ + LK#NL15_gudnight
END

IF ~~ LK#NL15_endanger
  SAY @684 /* You enchant me, my Lord...but I do not love you, so do not think it. I have no love. There is none left for you or for any other. I... */
  ++ @679 /* Ninde, do not leave me tonight. */ + LK#NL15_notleave
  ++ @681 /* Perhaps you do not love me yet, but I am convinced that you will. Just look at this roguishly handsome face! */ + LK#NL15_roguishly
  ++ @685 /* And I do not love you, either. */ + LK#NL15_either
  ++ @682 /* You are mine, Ninde. You are now, and you always will be...and you know it. */ + LK#NL15_unoeet
  ++ @683 /* As you would have it, Ninde. Goodnight. */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ + LK#NL15_gudnight
END

IF ~~ LK#NL15_victim
  SAY @686 /* And confidence that befits a demigod, too. You enchant me, my Lord...but I do not love you, so do not think it. I have no love. There is none left for you or for any other. I... */
  ++ @679 /* Ninde, do not leave me tonight. */ + LK#NL15_notleave
  ++ @681 /* Perhaps you do not love me yet, but I am convinced that you will. Just look at this roguishly handsome face! */ + LK#NL15_roguishly
  ++ @685 /* And I do not love you, either. */ + LK#NL15_either
  ++ @682 /* You are mine, Ninde. You are now, and you always will be...and you know it. */ + LK#NL15_unoeet
  ++ @683 /* As you would have it, Ninde. Goodnight. */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ + LK#NL15_gudnight
END

IF ~~ LK#NL15_whatdoumean
  SAY @687 /* I mean that--no. No, it does not matter, <CHARNAME>. It is...it is a cold night. Sleep well. */
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ LK#NL15_smaltarg
  SAY @688 /* My soul was taken but my heart was not, though it may've grown harder. You are mistaken if you think your words sting, Bhaalspawn. They merely prove to me that you...you show no resilience in the face of the black. You have submitted sooner than I thought you would, and you disgust me for it. I was mistaken in thinking you strong. */
  = @689 /* Goodnight, soulless one, empty cloak. */
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ LK#NL15_notleave
  SAY @690 /* As you wish, my Lord. But you needn't look so pleased with yourself, either, since you won't be getting into my petticoats. It is not the night for such things. */
  IF ~~ + LK#NL15_end
END

IF ~~ LK#NL15_devoted
  SAY @691 /* Gods, this is like being followed home by a mangy puppy. I mean that in the best possible sense, of course. A mangy puppy with a certain rustic appeal. Anyway. */
  IF ~~ + LK#NL15_end
END

IF ~~ LK#NL15_end
  SAY @692 /* Here...I will sit by you a while. We...we needn't speak. Just rest, my Lord. */
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ LK#NL15_roguishly
  SAY @693 /* Heh. Well, I've successfully resisted so far, my Lord. You may have to up your game a bit if you really want me falling at your feet, eager to fulfil your every whim. Just look at this flawless specimen of womanhood! Who wouldn't? */
  IF ~~ + LK#NL15_end2
END

IF ~~ LK#NL15_unoeet
  SAY @694 /* Really, my Lord, you may have to up your game a bit if you really want me falling at your feet, eager to fulfil your every whim. Just look at this flawless specimen of womanhood! Who wouldn't? */
  IF ~~ + LK#NL15_end2
END

IF ~~ LK#NL15_end2
  SAY @695 /* But not tonight, at any rate. Here...I will sit by you a while. We...we needn't speak. Just rest, my Lord. */
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ LK#NL15_either
  SAY @696 /* Then here...I will sit by you a while. We...we needn't speak. Just rest, my Lord. Rest and pretend these are better times, more apt for love. */
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ LK#NL15_gudnight
  SAY @697 /* Then sleep, Bhaalspawn, and pretend these are better times, more apt for love. */
  IF ~~ DO ~RestParty()~ EXIT
END


// 16. Post-encounter
// ------------------
IF ~Global("LK#NindeLoveTalks","GLOBAL",31)~ LK#NL16
  SAY @698 /* Don't look at me like that, <CHARNAME>. */
  ++ @699 /* You told me that Shadow Thieves murdered your brother. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL16_shathieves
  ++ @700 /* Like what? Like you're the kind of woman who would murder her father and brother? */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL16_murderss
  ++ @701 /* I'm not in the least bit upset with you, dear, I just don't know why you didn't tell me sooner. It simply proves to me what an enterprising girl you were. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL16_enterpri
  ++ @702 /* You disgust me, Ninde. You slaughtered your family, then covered your tracks. I spared you, but cannot allow you to travel with us any longer. */ DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800) IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL16_longer
END

IF ~~ LK#NL16_shathieves
  SAY @703 /* They--they did not. But neither did I, <CHARNAME>! I did not murder him at any rate... */
  IF ~~ + LK#NL16_main
END

IF ~~ LK#NL16_murderss
  SAY @704 /* I did not kill Respen, <CHARNAME>! I--I did not murder him, at any rate. */
  IF ~~ + LK#NL16_main
END

IF ~~ LK#NL16_enterpri
  SAY @705 /* Do not speak like that, <CHARNAME>! You know nothing of this, nothing! Enterprising? Has your life made you so utterly insensible to the implications of death, of killing? */
  = @704 /* I did not kill Respen, <CHARNAME>! I--I did not murder him, at any rate. */
  IF ~~ + LK#NL16_main
END

IF ~~ LK#NL16_main
  SAY @706 /* ...I--he challenged me, about my behaviour with Sykre and the Night Hand and things escalated--it was the Time of Troubles...my magics were erratic and I...I killed him. */
  ++ @707 /* And what of Inaed, your father? I suppose that was an accident, too. */ + LK#NL16_accitoo
  ++ @708 /* An unfortunate mistake on your part. You must feel such remorse. */ + LK#NL16_misteak
  ++ @709 /* I think you're lying to me again. You are a talented spellcaster, and yet you expect me to believe you simply lost control of yourself like that? */ + LK#NL16_likethat
  ++ @710 /* An accident? A likely story. You murderous witch, you killed those who only ever sought to care for you! */ + LK#NL16_caryou
  ++ @711 /* Eh, well it's not as if I care either way. */ + LK#NL16_eithway
END

IF ~~ LK#NL16_longer
  SAY @712 /* Then you have protected me thus far and I can ask for no more. Thank you, Bhaalspawn. I will fondly remember our time together, and am sorry it had to end with such...such bitterness. Farewell. */
  IF ~~ DO ~LeaveParty() SetGlobal("LK#NindeJoined","LOCALS",0) EscapeArea()~ EXIT
END

IF ~~ LK#NL16_accitoo
  SAY @713 /* For this...for this I have no excuse. I killed with a darker mind, that night. */
  ++ @714 /* Care to elaborate? */ + LK#NL16_elaborate
  ++ @715 /* I think your last shreds of compassion probably died with your brother. */ + LK#NL16_shreds
  ++ @716 /* The powerful are often struck by murderous feeling. */ + LK#NL16_feelin
  ++ @717 /* So you did murder him, as the paladin claimed! */ + LK#NL16_claimed
END

IF ~~ LK#NL16_misteak
  SAY @718 /* The sort of mistake one only makes once. But I have killed with a darker mind than I had that night. */
  ++ @719 /* I am not surprised. */ + LK#NL16_nodoubt
  ++ @714 /* Care to elaborate? */ + LK#NL16_elaborate
  ++ @720 /* What of your father? Did you murder him, as the paladin claimed? */ + LK#NL16_claimed
  ++ @715 /* I think your last shreds of compassion probably died with your brother. */ + LK#NL16_shreds
  ++ @716 /* The powerful are often struck by murderous feeling. */ + LK#NL16_feelin
  ++ @721 /* I, too, have killed inadvertently. It is not pleasant. */ + LK#NL16_inadvert
END

IF ~~ LK#NL16_likethat
  SAY @722 /* The coming of the Gods disrupted the weave--whatever my intentions, I could not have cast correctly. That night...that night, I did not have murder in mind. */
  ++ @723 /* An accident, then. But what about Inaed? */ + LK#NL16_watinaed
  ++ @720 /* What of your father? Did you murder him, as the paladin claimed? */ + LK#NL16_claimed
  ++ @721 /* I, too, have killed inadvertently. It is not pleasant. */ + LK#NL16_inadvert
  ++ @724 /* I am still not certain I believe you. */ + LK#NL16_notcert
END

IF ~~ LK#NL16_caryou
  SAY @725 /* Keep your wig on, <CHARNAME>. The coming of the Gods disrupted the weave--whatever my intentions, I could not have cast correctly. That night...that night, I did not have murder in mind. */
  ++ @723 /* An accident, then. But what about Inaed? */ + LK#NL16_watinaed
  ++ @720 /* What of your father? Did you murder him, as the paladin claimed? */ + LK#NL16_claimed
  ++ @721 /* I, too, have killed inadvertently. It is not pleasant. */ + LK#NL16_claimed
  ++ @726 /* Still, I do not believe you! How can you expect me to, after the revelations of today? */ + LK#NL16_notcert
  ++ @727 /* You lie, evil-doer! It was foolish of me to trust you! */ + LK#NL16_trusya
END

IF ~~ LK#NL16_eithway
  SAY @728 /* Your anger would be preferable to your apathy, <CHARNAME>...nonetheless, thank you for not surrendering me to Archonson. */
  = @729 /* Let us...let us continue. */
  IF ~~ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NL16_elaborate
  SAY @730 /* I poisoned Inaed, the doddering old fool. Although...my motives were confused even then. Perhaps I wished to put into practice all I had been studying, see for myself how easy it was to tip the scale. Or perhaps it was something as mundane as simply wanting his money. */
  ++ @731 /* What happened was unfortunate, Ninde, but do not dwell upon it. Not a day goes by when someone or something does not die by my hand, and yet I cannot become preoccupied by it. */ + LK#NL16_emoshun
  ++ @732 /* I often find myself wishing you were...kinder, somehow. */ + LK#NL16_kinder
  ++ @733 /* It's nice you're so pragmatic about these things. */ + LK#NL16_prgmatic
  ++ @734 /* Do you regret killing the Amblecrowns? It certainly seems like you do, but one can never be sure with you. */ + LK#NL16_regret
END

IF ~~ LK#NL16_nodoubt
  SAY @735 /* I had hoped you would be. What kind of abhorrent creature am I if you think killing my own brother was simply...simply an unpleasant diversion for me? I have only killed with such arrogance once. Yes...my father, Inaed. I poisoned him. */
  = @736 /* But even then my motives were confused. Perhaps I wished to put into practice all I had been studying, see for myself how easy it was to tip the scale. Or perhaps it was something as mundane as simply wanting his money. */
  ++ @731 /* What happened was unfortunate, Ninde, but do not dwell upon it. Not a day goes by when someone or something does not die by my hand, and yet I cannot become preoccupied by it. */ + LK#NL16_emoshun
  ++ @732 /* I often find myself wishing you were...kinder, somehow. */ + LK#NL16_kinder
  ++ @733 /* It's nice you're so pragmatic about these things. */ + LK#NL16_prgmatic
  ++ @734 /* Do you regret killing the Amblecrowns? It certainly seems like you do, but one can never be sure with you. */ + LK#NL16_regret
  ++ @737 /* You are an abhorrent creature indeed, and one I no longer want in this group! */ + LK#NL16_longer
END

IF ~~ LK#NL16_shreds
  SAY @738 /* Probably a little before that, when I killed my father. I poisoned him. */
  = @736 /* But even then my motives were confused. Perhaps I wished to put into practice all I had been studying, see for myself how easy it was to tip the scale. Or perhaps it was something as mundane as simply wanting his money. */
  ++ @731 /* What happened was unfortunate, Ninde, but do not dwell upon it. Not a day goes by when someone or something does not die by my hand, and yet I cannot become preoccupied by it. */ + LK#NL16_emoshun
  ++ @732 /* I often find myself wishing you were...kinder, somehow. */ + LK#NL16_kinder
  ++ @733 /* It's nice you're so pragmatic about these things. */ + LK#NL16_prgmatic
  ++ @734 /* Do you regret killing the Amblecrowns? It certainly seems like you do, but one can never be sure with you. */ + LK#NL16_regret
  ++ @737 /* You are an abhorrent creature indeed, and one I no longer want in this group! */ + LK#NL16_longer
END

IF ~~ LK#NL16_feelin
  SAY @739 /* You forget, <CHARNAME>, I am not built of evil as you are. My motives were ever confused...my father, for example. I poisoned him. Perhaps I wished to put into practice all I had been studying, see for myself how easy it was to tip the scale. Or perhaps it was something as mundane as simply wanting his money? Who can say. */
  ++ @731 /* What happened was unfortunate, Ninde, but do not dwell upon it. Not a day goes by when someone or something does not die by my hand, and yet I cannot become preoccupied by it. */ + LK#NL16_emoshun
  ++ @732 /* I often find myself wishing you were...kinder, somehow. */ + LK#NL16_kinder
  ++ @733 /* It's nice you're so pragmatic about these things. */ + LK#NL16_prgmatic
  ++ @734 /* Do you regret killing the Amblecrowns? It certainly seems like you do, but one can never be sure with you. */ + LK#NL16_regret
  ++ @737 /* You are an abhorrent creature indeed, and one I no longer want in this group! */ + LK#NL16_longer
END

IF ~~ LK#NL16_claimed
  SAY @740 /* Yes. And my father, too. Apologies for not telling you sooner, but why tell the truth when a lie is so much more appealing for all involved? Besides, my intentions and my actions are rather divorced from each other. When I killed my brother, I did not mean to. */
  = @741 /* When I killed my father, I poisoned him. Perhaps I wished to put into practice all I had been studying, see for myself how easy it was to tip the scale. Or perhaps it was something as mundane as simply wanting his money? Who can say. */
  ++ @731 /* What happened was unfortunate, Ninde, but do not dwell upon it. Not a day goes by when someone or something does not die by my hand, and yet I cannot become preoccupied by it. */ + LK#NL16_emoshun
  ++ @732 /* I often find myself wishing you were...kinder, somehow. */ + LK#NL16_kinder
  ++ @733 /* It's nice you're so pragmatic about these things. */ + LK#NL16_prgmatic
  ++ @734 /* Do you regret killing the Amblecrowns? It certainly seems like you do, but one can never be sure with you. */ + LK#NL16_regret
  ++ @737 /* You are an abhorrent creature indeed, and one I no longer want in this group! */ + LK#NL16_longer
END

IF ~~ LK#NL16_inadvert
  SAY @742 /* Now, completely intentional killing--that's a whole different kettle of fish. My father for example. I poisoned him. */
  = @743 /* Perhaps I wished to put into practice all I had been studying, see for myself how easy it was to tip the scale. Or perhaps it was something as mundane as simply wanting his money? Who can say. */
  ++ @731 /* What happened was unfortunate, Ninde, but do not dwell upon it. Not a day goes by when someone or something does not die by my hand, and yet I cannot become preoccupied by it. */ + LK#NL16_emoshun
  ++ @732 /* I often find myself wishing you were...kinder, somehow. */ + LK#NL16_kinder
  ++ @733 /* It's nice you're so pragmatic about these things. */ + LK#NL16_prgmatic
  ++ @737 /* You are an abhorrent creature indeed, and one I no longer want in this group! */ + LK#NL16_longer
END

IF ~~ LK#NL16_watinaed
  SAY @744 /* I poisoned him. */
  = @743 /* Perhaps I wished to put into practice all I had been studying, see for myself how easy it was to tip the scale. Or perhaps it was something as mundane as simply wanting his money? Who can say. */
  ++ @731 /* What happened was unfortunate, Ninde, but do not dwell upon it. Not a day goes by when someone or something does not die by my hand, and yet I cannot become preoccupied by it. */ + LK#NL16_emoshun
  ++ @732 /* I often find myself wishing you were...kinder, somehow. */ + LK#NL16_kinder
  ++ @733 /* It's nice you're so pragmatic about these things. */ + LK#NL16_prgmatic
  ++ @734 /* Do you regret killing the Amblecrowns? It certainly seems like you do, but one can never be sure with you. */ + LK#NL16_regret
  ++ @737 /* You are an abhorrent creature indeed, and one I no longer want in this group! */ + LK#NL16_longer
END

IF ~~ LK#NL16_notcert
  SAY @745 /* Then I shan't bother giving you more to puzzle over. */
  IF ~~ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NL16_trusya
  SAY @746 /* No need to get your undergarments in a twist. Am I to suppose you no longer want me in your party, then, honeypie? */
  ++ @747 /* No. I am very angry with you, but would prefer you remain with us. */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
  ++ @748 /* Yes. I suggest you get moving now. */ DO ~LeaveParty() SetGlobal("LK#NindeJoined","LOCALS",0) EscapeArea()~ EXIT
  ++ @749 /* Since the paladin is not around to finish his job, someone ought to for him! To arms! */ DO ~LeaveParty() SetGlobal("LK#NindeJoined","LOCALS",0) Enemy()~ EXIT
END

IF ~~ LK#NL16_emoshun
  SAY @750 /* Yes, you kill many. But are you so insensible to what that means? You think it is merely beds that will go unmade, a woman unloved, that a- Gods. Death is an ugly thing, <CHARNAME>. Killing has a certain glamour. Death...you know nothing of it. */
  ++ @751 /* I know what it means to kill. I know what it is to have friends killed. I know what it is to exist without a soul--dying is the only thing I haven't done. */ + LK#NL16_dying
  ++ @752 /* I am not unaware of the implications of what I have to do...I just know I have to do it. I have no choice. If I could put an end to all of this, to the death that surrounds me, I would have. */ + LK#NL16_surround
  ++ @753 /* Perhaps. But I'm still learning. */ + LK#NL16_learning
  ++ @754 /* And I'm glad. I think perhaps if I had intimate knowledge of death it would make it too difficult to face. And I must face it, every day. */ + LK#NL16_erryday
  ++ @755 /* I don't think I want to know either. */ + LK#NL16_erryday
END

IF ~~ LK#NL16_kinder
  SAY @756 /* There's nothing unkind about apathy. You can wish whatever you care to. I sometimes wish I'd never learnt to lie so well. I sometimes wish I'd become Lady Archonson instead of Sykre's apprentice. I sometimes wish I had slimmer thighs, but the feeling passes. */
  = @757 /* I wish we had not had to kill him. He's still so handsome. */
  ++ @758 /* He's very handsome, and seems like a noble sort of chap. But I can't imagine you together. It would be like the sun falling in love with night. */ + LK#NL16_loviatar
  ++ @759 /* I wouldn't say so. Then again, it's very hard to look handsome with your face mashed to a pulp, after all. Hur hur. */ + LK#NL16_hurhur
  ++ @760 /* It was a senseless battle, but he was unrelenting. I wasn't about to hand you over to him. */ + LK#NL16_handsu
  ++ @761 /* I am sorry for your loss, if you still cared for him. */ + LK#NL16_cared
  ++ @762 /* So what's the story behind the pair of you, anyway? */ + LK#NL16_storiez
  ++ @763 /* Yes, dear, but there are plenty more fish in the sea. Pick yourself up and move along. We've got work to do, you know. */ + LK#NL16_word2do
END

IF ~~ LK#NL16_prgmatic
  SAY @764 /* Oh, so I used to think. But then I realised I was insensible to what death...what death means. You think it is merely beds that will go unmade, a woman unloved, that a- Gods. Death is an ugly thing, <CHARNAME>. Killing has a certain glamour. Death...you know nothing of it. */
  ++ @751 /* I know what it means to kill. I know what it is to have friends killed. I know what it is to exist without a soul--dying is the only thing I haven't done. */ + LK#NL16_dying
  ++ @765 /* I am not unaware of the implications I have to do...I just know I have to do it. I have no choice. If I could put an end to all of this, to the death that surrounds me, I would have. */ + LK#NL16_surround
  ++ @753 /* Perhaps. But I'm still learning. */ + LK#NL16_learning
  ++ @754 /* And I'm glad. I think perhaps if I had intimate knowledge of death it would make it too difficult to face. And I must face it, every day. */ + LK#NL16_erryday
  ++ @755 /* I don't think I want to know either. */ + LK#NL16_erryday
END

IF ~~ LK#NL16_regret
  SAY @766 /* Any fool can regret yesterday, it does not necessarily mean a thing. I think...perhaps I do, though. I know I said otherwise to Jallen--I mean, Archonson--but...they need to know there are bad people in the world. People of a kind of bad they cannot understand. */
  = @767 /* Somehow I don't think the message got very far. I wish we had not had to kill him. He's still so handsome. */
  ++ @758 /* He's very handsome, and seems like a noble sort of chap. But I can't imagine you together. It would be like the sun falling in love with night. */ + LK#NL16_loviatar
  ++ @759 /* I wouldn't say so. Then again, it's very hard to look handsome with your face mashed to a pulp, after all. Hur hur. */ + LK#NL16_hurhur
  ++ @760 /* It was a senseless battle, but he was unrelenting. I wasn't about to hand you over to him. */ + LK#NL16_handsu
  ++ @761 /* I am sorry for your loss, if you still cared for him. */ + LK#NL16_cared
  ++ @762 /* So what's the story behind the pair of you, anyway? */ + LK#NL16_storiez
  ++ @763 /* Yes, dear, but there are plenty more fish in the sea. Pick yourself up and move along. We've got work to do, you know. */ + LK#NL16_word2do
END

IF ~~ LK#NL16_dying
  SAY @768 /* Yes, well I wouldn't hold your breath if I were you. */
  IF ~~ + LK#NL16_main2
END

IF ~~ LK#NL16_surround
  SAY @769 /* And well I believe it, <CHARNAME>. I have had enough. Perhaps when you see the boy whose name you used to scribble on your school parchments lying in a bloodied heap at your feet, it's time to call it a day. */
  = @757 /* I wish we had not had to kill him. He's still so handsome. */
  ++ @758 /* He's very handsome, and seems like a noble sort of chap. But I can't imagine you together. It would be like the sun falling in love with night. */ + LK#NL16_loviatar
  ++ @759 /* I wouldn't say so. Then again, it's very hard to look handsome with your face mashed to a pulp, after all. Hur hur. */ + LK#NL16_hurhur
  ++ @760 /* It was a senseless battle, but he was unrelenting. I wasn't about to hand you over to him. */ + LK#NL16_handsu
  ++ @761 /* I am sorry for your loss, if you still cared for him. */ + LK#NL16_cared
  ++ @762 /* So what's the story behind the pair of you, anyway? */ + LK#NL16_storiez
  ++ @763 /* Yes, dear, but there are plenty more fish in the sea. Pick yourself up and move along. We've got work to do, you know. */ + LK#NL16_word2do
END

IF ~~ LK#NL16_learning
  SAY @770 /* There are three things that can never be learnt; the nature of love, the true will of the Gods, and the consuming experience of an utter death. */
  IF ~~ + LK#NL16_main2
END

IF ~~ LK#NL16_erryday
  SAY @771 /* Then it is good that death is one of the three things a intimate knowledge of can never be acquired; the nature of love, the true will of the Gods, and the consuming experience of an utter death. */
  IF ~~ + LK#NL16_main2
END

IF ~~ LK#NL16_main2
  SAY @772 /* When I venerated Oghma and not Shar I would ask him every night how it is we can be so afraid of that place from which so many return. It can be used to control a nation, subdue a wife, break a child. Oh, and seduce your young elven apprentice. No-one ever made death look as good as Sykre did. */
  IF ~~ + LK#NL16_main3
END

IF ~~ LK#NL16_loviatar
  SAY @773 /* It is strange you should say that. It felt more like the she-wolf falling in love with the huntsman. */
  = @774 /* And now I am to him as the night is to the sun. The heavy veil of doom, the chance to be forgotten. */
  IF ~~ + LK#NL16_main3
END

IF ~~ LK#NL16_hurhur
  SAY @775 /* Quite. Though he still manages to make you look like a porcine northern dunderhead. Funnily enough, everything makes you look like a porcine northern dunderhead. Perhaps it is simply that you are a porcine northern dunderhead. */
  IF ~~ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NL16_handsu
  SAY @776 /* And I thank you for it. I'd promise to repay you...but promises were never quite my thing. Take this, instead. */
  IF ~~ + LK#NL16_end
END

IF ~~ LK#NL16_cared
  SAY @777 /* Care about him? <CHARNAME>, I'd practically forgotten he existed. In my youth I wore spectacles. He was one of the rough young males who took great delight in stealing them. And tugging on my braids. And pinching my ears. */
  = @778 /* So, naturally, I fell madly in love with him. He ended up hiding in the gaurdrobe from my maidservants in the morning to avoid scandal, commanding my arm at every seasonal dance. It's funny isn't it? Childhood sweetheart one moment, decaying offal the next. */
  IF ~~ + LK#NL16_main3
END

IF ~~ LK#NL16_storiez
  SAY @779 /* In my youth I wore spectacles. He was one of the rough young males who took great delight in stealing them. And tugging on my braids. And pinching my ears. */
  = @780 /* So, naturally, I fell madly in love with him. He ended up hiding in the wardrobe from my maidservants in the morning to avoid scandal, commanding my arm at every seasonal dance. It's funny isn't it? Childhood sweetheart one moment, decaying offal the next. */
  IF ~~ + LK#NL16_main3
END

IF ~~ LK#NL16_main3
  SAY @781 /* Yes, we are suckling at death's mouldering teat, my dear. Our position is a sorry one. */
  ++ @782 /* I shall take you away from all this someday, Ninde. That, I promise. */ + LK#NL16_handsu
  ++ @783 /* Death's mouldering teat? Frankly, there are nicer teats around. */ + LK#NL16_tetatete
  ++ @784 /* We won't be for much longer. First Bodhi, then Irenicus...and then rest. No more mouldering teats for <CHARNAME>. */ + LK#NL16_namoremo
  ++ @785 /* I can see what transpired here today has effected you most profoundly. I've never seen you this way before. */ + LK#NL16_transpried
  ++ @786 /* Sooner or later I'm going to grow tired of these macabre musings. */ + LK#NL16_macabre
END

IF ~~ LK#NL16_word2do
  SAY @787 /* You are quite right, <CHARNAME>. I can see why this is a most inconvenient time to distract you with my profound existential crises. */
  IF ~~ EXIT
END

IF ~~ LK#NL16_tetatete
  SAY @788 /* Hmm...There certainly are, dear. But try not to become too preoccupied with them! They've been the downfall of many a greater man, honeybunch. In fact, I dare say they are a danger to civilisation at large. */
  IF ~~ EXIT
END

IF ~~ LK#NL16_namoremo
  SAY @789 /* A rest well deserved...I hope I can join you in it, <CHARNAME>. Until then...I have something for you. Perhaps...some momentary respite. And a thank you. */
  IF ~~ + LK#NL16_end
END

IF ~~ LK#NL16_transpried
  SAY @790 /* I am...I am simply tired, <CHARNAME>. Let us move on. */
  IF ~~ EXIT
END

IF ~~ LK#NL16_macabre
  SAY @791 /* I am sorry if I try your patience, but I hope that day is later rather then sooner. I am very thankful for what you have done for me today, <CHARNAME>. Now...let us move on. */
  IF ~~ EXIT
END

IF ~~ LK#NL16_end
  SAY @792 /* (Ninde regards you for a moment or two, her expression unreadable, before planting a kiss on your cheek. Sweet and light, it's almost the kind of kiss you'd give to friend--almost. It's more the glitter of her feline eyes as she turns away from you that suggests there was something behind the gesture beyond simple camaraderie.) */
  IF ~~ EXIT
END


// 17.
// ---
IF ~Global("LK#NindeLoveTalks","GLOBAL",33)~ LK#NL17
  SAY @793 /* So it draws to a close. The treehoppers will be saved, Irenicus given a thorough licking--though not literally, he would taste of pickles and old leather--and you will have your soul back. All will be right in the world. */
  ++ @794 /* I don't think so. I have the funny feeling there will be plenty more battles to fight after we have done away with Irenicus. Harder, bloodier ones. */ DO ~IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL17_harbloo
  ++ @795 /* Perhaps all my immediate troubles would come to an end, but I have broader concerns, such as the happiness of my companions, the balance of the very realms. */ DO ~IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL17_balants
  ++ @796 /* One can only hope so. I have been struggling for too long. */ DO ~IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL17_strugz2
  ++ @797 /* Do I sense a touch of sarcasm, there? */ DO ~IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL17_tousarc
  ++ @798 /* You never know. He could kill us all. Wouldn't that be wonderful. */ DO ~IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL17_vandaf
END

IF ~~ LK#NL17_harbloo
  SAY @799 /* The eve of our final battle and already your thoughts turn to the next? You are a hardened one. Perhaps it would do you some good to relax a little. Uncoil. */
  ++ @800 /* I have not kept myself alive these years through relaxation. */ + LK#NL17_relxno
  ++ @801 /* Hmm...you telling me to relax is a little counter-productive, since as soon as you express some interest in my state of being, I start wondering what you're really after. Then I worry. */ + LK#NL17_theniwor
  ++ @802 /* Ordinarily, I would agree with you, but there are too many dangers, at present. */ + LK#NL17_atpresn
  ++ @803 /* You are right. I am very much on edge. It would do me good to unwind. */ + LK#NL17_unwindo
  ++ @804 /* Hardened in more ways then one. I must say...that robe hugs you in all the right places. Heh. */ + LK#NL17_riteplass
END

IF ~~ LK#NL17_balants
  SAY @805 /* The balance of the realms? My handsome Bhaalspawn...will you never tire of being the golden boy of Faerun? Reach out and take what you want? Because I know there is something you want. My Lord, it is time for you to be just a little bit...deliciously...selfish. */
  ++ @806 /* (Kiss Ninde.) */ + LK#NL17_kisohmy
  ++ @807 /* You know what I want? Very clever of you. *I* don't even know what I want. */ + LK#NL17_ievno
  ++ @808 /* If only it were that easy. I try to prioritise my own desires, but circumstances often force me to sideline them. */ + LK#NL17_sidelin
  ++ @809 /* Perhaps you are right. I spend to long worrying about others. Tonight could be my last, for all I know, so why am I spending it thinking of others? */ + LK#NL17_ovover
  ++ @810 /* Again you attempt to draw me to your own, thoughtless ways! */ + LK#NL17_end
END

IF ~~ LK#NL17_strugz2
  SAY @811 /* You have struggled, and yet you are stronger for it, my Lord. How I love a strong man... */
  = @812 /* (Ninde sits for a moment, regarding you askance in the firelight, before beginning to gently unlace her bodice. She stops, and the dark silk of her robe falls about her shoulders with a hiss, revealing bare shoulders, the soft upper curve of her full breasts. She pauses, gently drawing the garment apart, and fixing you with a very strange look.) */
  ++ @813 /* (Kiss Ninde) */ + LK#NL17_kisohmy
  ++ @814 /* (Stroke Ninde's cheek) */ + LK#NL17_cheestro
  ++ @815 /* I say, and about time too! I've been waiting months to get that godsdamned robe off you, now it looks like putting up with all your moaning is finally going to pay off! Come here, Nindey. */ + LK#NL17_payonin
  ++ @816 /* Ninde, if you are after something, just come out with it, there's no need to start taking your clothes off. */ + LK#NL17_cloveof
  ++ @817 /* Er, as flattered as I am that you'd offer yourself to me like this, I don't really think it's a very appropriate setting. */ + LK#NL17_notimnopl
END

IF ~~ LK#NL17_tousarc
  SAY @818 /* Why, nothing could be further from the truth, my Lord. I may be a monumentally flawed being, but I am not entirely spiteful. The past few months have given me...cause to appreciate you. As difficult as that may be to believe, it is true. I appreciate you and happen to want favourable things to befall you, my handsome Bhaalspawn. */
  ++ @819 /* It is reciprocal, Ninde. */ + LK#NL17_recipro
  ++ @820 /* Well, I like to think I have been a worthy leader and a good friend. */ + LK#NL17_gudfrnd
  ++ @821 /* I always get a little suspicious when you start going on about how brilliant I am... */ + LK#NL17_theniwor
  ++ @822 /* I appreciate lots of things. Holy water, bags of holding, and jolly halfling innkeepers. You, however, are not one of the things I appreciate. */ + LK#NL17_noapps
END

IF ~~ LK#NL17_vandaf
  SAY @823 /* I have far too much confidence in your abilities to believe such a thing, <CHARNAME>. But...but suppose this was to be your last night. How would you spend it? */
  ++ @824 /* I've never considered it. I suppose I really ought to. */ + LK#NL17_ievno
  ++ @825 /* I can think of no way I would rather spend it than here--with you. */ + LK#NL17_iwivu
  ++ @826 /* Back in Candlekeep. After these many months I long to revisit it. */ + LK#NL17_revisit
  ++ @827 /* With my friends and those that love me best. */ + LK#NL17_lovemeb
  ++ @828 /* I would wish to be alone, to contemplate, reflect on all that I have done. */ + LK#NL17_allvdone
  ++ @829 /* Ninde, must you persist in directing my thoughts to subjects so morbid and unpleasant? */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NL17_relxno
  SAY @830 /* Perhaps you are simply unaware of how intensely pleasurable relaxation can be. A man like you...always travelling, always working so very hard...isn't that right, my Lord? */
  IF ~~ + LK#NL17_main1
END

IF ~~ LK#NL17_main1
  SAY @831 /* (As Ninde speaks, she slowly positions herself behind you, and, kneeling, begins to rub your shoulders. Her face just inches from your neck, you feel her warm breath on your ear, your shoulder, and are acutely aware of the low, feminine sighs she emits, seemingly in appreciation as her fingers ease across your skin.) */
  = @832 /* (Out of the corner of your eye, you notice her robe gradually loosening about her shoulders, falling open a little, revealing the first teasing curves of her ample breasts, her delicate golden throat.) */
  ++ @833 /* Mmm...Ninde... */ + LK#NL17_moanguy
  ++ @834 /* (Take Ninde in your arms.) */ + LK#NL17_takarms
  ++ @835 /* Ninde, I fear this is neither the time, nor the place. */ + LK#NL17_end
END

IF ~~ LK#NL17_theniwor
  SAY @836 /* Why so paranoid, my Lord? So many enemies, so little time for pleasure... */
  = @831 /* (As Ninde speaks, she slowly positions herself behind you, and, kneeling, begins to rub your shoulders. Her face just inches from your neck, you feel her warm breath on your ear, your shoulder, and are acutely aware of the low, feminine sighs she emits, seemingly in appreciation as her fingers ease across your skin.) */
  = @832 /* (Out of the corner of your eye, you notice her robe gradually loosening about her shoulders, falling open a little, revealing the first teasing curves of her ample breasts, her delicate golden throat.) */
  ++ @833 /* Mmm...Ninde... */ + LK#NL17_moanguy
  ++ @834 /* (Take Ninde in your arms.) */ + LK#NL17_takarms
  ++ @837 /* Yes, that's very nice, Ninde. But the thing is, I'm still wondering what exactly you're after. */ + LK#NL17_cloveof
  ++ @835 /* Ninde, I fear this is neither the time, nor the place. */ + LK#NL17_end
END

IF ~~ LK#NL17_atpresn
  SAY @838 /* Then put those enemies in a box, lock it, and throw it down a mineshaft. For tonight at least. Lay aside your bird-poise, your worries...and who knows what I may lay aside. Perhaps I shall start with...this... */
  IF ~~ + LK#NL17_main2
END

IF ~~ LK#NL17_main2
  SAY @839 /* (As Ninde speaks, her flame-brimming eyes never leave yours, even as she kneels before you in an oddly supplicant pose, like a harem girl before a sultan. She begins to unlace her bodice, slowly, before tantalisingly drawing apart the dark folds of satin, watching your face from beneath black lashes as the garment falls about her waist, her tantalising breasts exposed, her slender waist naked to the night.) */
  ++ @840 /* Ninde, I- */ + LK#NL17_ninnyi
  ++ @841 /* (Pull Ninde to you.) */ + LK#NL17_pull2u
  ++ @842 /* Very nice, dear. You can put them away, now. */ + LK#NL17_putwayn
  ++ @843 /* Oh dear. Contrary to what you obviously believe, nothing could be more disgusting to me than the sight of your grotesque form paraded so. */ + LK#NL17_noapps
END

IF ~~ LK#NL17_unwindo
  SAY @844 /* I like it when you take my advice, my Lord. It makes me feel useful...but I can be useful in other ways, too... */
  IF ~~ + LK#NL17_main1
END

IF ~~ LK#NL17_riteplass
  SAY @845 /* Why, you are an awful letch, my Lord. I ought to try and present you with a sight that robs you of your capacity for such mouthfuls of offence. */
  IF ~~ + LK#NL17_main2
END

IF ~~ LK#NL17_kisohmy
  SAY @846 /* (Your action seems to surprise Ninde at first, and she recoils a little beside you. After a moment, however, she has placed an arm about your neck, and her lips brush softly against yours. Not hesitating, she deepens the kiss. She tastes of cinnamon and sour apples, and just a moment later you find she is on your lap, her robe pushed back across her smooth thighs, her legs wrapped around your waist, her whole body pressed and tight against yours.) */
  ++ @847 /* I love you, Ninde. */ + LK#NL17_ninnyluv
  ++ @848 /* (Undo Ninde's robe.) */ + LK#NL17_undorob
  ++ @849 /* (Run your hands down Ninde's thighs.) */ + LK#NL17_undorob
  ++ @850 /* (Push Ninde away from you.) */ + LK#NL17_putwayn
END

IF ~~ LK#NL17_ievno
  SAY @851 /* Then maybe I should give you some ideas, my Lord. */
  IF ~~ + LK#NL17_main2
END

IF ~~ LK#NL17_sidelin
  SAY @852 /* Circumstances be damned, for tonight, at least. */
  IF ~~ + LK#NL17_main1
END

IF ~~ LK#NL17_ovover
  SAY @853 /* My point precisely, my Lord... */
  IF ~~ + LK#NL17_main1
END

IF ~~ LK#NL17_end
  SAY @854 /* Then...then I see that you have no strength. What man is it that will not take what he sees, what he knows he can have? Shar, what he deserves! No man at all, I say. */
  IF ~~ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NL17_cheestro
  SAY @855 /* (As you stroke her cheek, Ninde's closes her eyes, and presses her face against your hand. As your touch moves closer to her mouth, however, they flicker open again, and meet yours with a knowing gleam. She turns her head, and your fingers fall against her bow lips. Holding your hand in her own, she kisses the tips of your fingers, before opening her mouth, and gently biting the tip of your thumb.) */
  ++ @833 /* Mmm...Ninde... */ + LK#NL17_moanguy
  ++ @834 /* (Take Ninde in your arms.) */ + LK#NL17_takarms
  ++ @835 /* Ninde, I fear this is neither the time, nor the place. */ + LK#NL17_end
END

IF ~~ LK#NL17_payonin
  SAY @856 /* (Ninde giggles throatily, and moves across to you. Without a moments hesitation, she places herself in your lap, her smooth thighs around your waist, her robe fallen to just below her navel, revealing her tantalising breasts. With another giggle, she lifts her arms above her head in a mock stretch and yawn, arching her body tight and firm against yours, seeming to invite your touch.) */
  ++ @833 /* Mmm...Ninde... */ + LK#NL17_moanguy
  ++ @834 /* (Take Ninde in your arms.) */ + LK#NL17_takarms
  ++ @857 /* (Kiss Ninde's neck.) */ + LK#NL17_keeneck
  ++ @858 /* (Caress Ninde's breasts.) */ + LK#NL17_undorob
  ++ @835 /* Ninde, I fear this is neither the time, nor the place. */ + LK#NL17_end
END

IF ~~ LK#NL17_cloveof
  SAY @859 /* (Ninde shakes her loose hair in exasperation, before reaching out and taking your hands in hers. As she does so, her robe falls completely free of her body, leaving her tantalising breasts and slender waist naked to the night.) */
  = @860 /* I would've thought it was fairly obvious what I want, at this juncture. You. */
  = @861 /* (With an expression so earnest you think it slightly contrived, but at the same time seemingly wholly sincere, she takes your hands, and places them firmly against her soft breasts.) */
  ++ @833 /* Mmm...Ninde... */ + LK#NL17_moanguy
  ++ @834 /* (Take Ninde in your arms.) */ + LK#NL17_takarms
  ++ @857 /* (Kiss Ninde's neck.) */ + LK#NL17_keeneck
  ++ @858 /* (Caress Ninde's breasts.) */ + LK#NL17_undorob
  ++ @835 /* Ninde, I fear this is neither the time, nor the place. */ + LK#NL17_end
END

IF ~~ LK#NL17_notimnopl
  SAY @859 /* (Ninde shakes her loose hair in exasperation, before reaching out and taking your hands in hers. As she does so, her robe falls completely free of her body, leaving her tantalising breasts and slender waist naked to the night.) */
  = @862 /* (With an expression so earnest you think it slightly contrived, but at the same time wholly sincere, she takes your hands, and places them firmly against her soft breasts.) */
  ++ @833 /* Mmm...Ninde... */ + LK#NL17_moanguy
  ++ @834 /* (Take Ninde in your arms.) */ + LK#NL17_takarms
  ++ @857 /* (Kiss Ninde's neck.) */ + LK#NL17_keeneck
  ++ @858 /* (Caress Ninde's breasts.) */ + LK#NL17_undorob
  ++ @863 /* I mean it Ninde, we mustn't. Not now. */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NL17_recipro
  SAY @864 /* And there are very many things I appreciate about you. Not least, those shoulders... */
  IF ~~ + LK#NL17_main1
END

IF ~~ LK#NL17_gudfrnd
  SAY @865 /* Oh, I don't want you to *befriend* me, my Lord... */
  IF ~~ + LK#NL17_gudfrnd2
END

IF ~~ LK#NL17_gudfrnd2
  SAY @839 /* (As Ninde speaks, her flame-brimming eyes never leave yours, even as she kneels before you in an oddly supplicant pose, like a harem girl before a sultan. She begins to unlace her bodice, slowly, before tantalisingly drawing apart the dark folds of satin, watching your face from beneath black lashes as the garment falls about her waist, her tantalising breasts exposed, her slender waist naked to the night.) */
  ++ @840 /* Ninde, I- */ + LK#NL17_ninnyi
  ++ @841 /* (Pull Ninde to you.) */ + LK#NL17_pull2u
  ++ @866 /* Well, although you may feel differently--that is all I want from you. Friendship. I am sorry, Ninde...I just can't. */ + LK#NL17_end
  ++ @843 /* Oh dear. Contrary to what you obviously believe, nothing could be more disgusting to me than the sight of your grotesque form paraded so. */ + LK#NL17_noapps
END

IF ~~ LK#NL17_noapps
  SAY @867 /* Pity, but how could I expect the tastes of a low-bred northern barn rat to be anything other than unrefined? I hope the thought of Irenicus being so near at hand keeps you as warm as I could. */
  IF ~~ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NL17_iwivu
  SAY @868 /* (Ninde's flame-brimming eyes never leave yours, even as she kneels before you in an oddly supplicant pose, like a harem girl before a sultan. She begins to unlace her bodice, slowly, before tantalisingly drawing apart the dark folds of satin, watching your face from beneath black lashes as the garment falls about her waist, her tantalising breasts exposed, her slender waist naked to the night.) */
  ++ @840 /* Ninde, I- */ + LK#NL17_ninnyi
  ++ @841 /* (Pull Ninde to you.) */ + LK#NL17_pull2u
  ++ @869 /* I am sorry Ninde, but I meant...as a friend, not as a lover. */ + LK#NL17_putwayn
  ++ @843 /* Oh dear. Contrary to what you obviously believe, nothing could be more disgusting to me than the sight of your grotesque form paraded so. */ + LK#NL17_noapps
END

IF ~~ LK#NL17_revisit
  SAY @870 /* Candlekeep be damned, for tonight, at least. */
  IF ~~ + LK#NL17_main1
END

IF ~~ LK#NL17_lovemeb
  SAY @871 /* What about with one who would love you bodily. Pray, <CHARNAME>...trade your Sune for Sharess. */
  IF ~~ + LK#NL17_gudfrnd2
END

IF ~~ LK#NL17_allvdone
  SAY @872 /* I am not sure if I should take that as a hint, and leave you...or not. */
  = @839 /* (As Ninde speaks, her flame-brimming eyes never leave yours, even as she kneels before you in an oddly supplicant pose, like a harem girl before a sultan. She begins to unlace her bodice, slowly, before tantalisingly drawing apart the dark folds of satin, watching your face from beneath black lashes as the garment falls about her waist, her tantalising breasts exposed, her slender waist naked to the night.) */
  ++ @840 /* Ninde, I- */ + LK#NL17_ninnyi
  ++ @841 /* (Pull Ninde to you.) */ + LK#NL17_pull2u
  ++ @873 /* I'm sorry Ninde, but I really do wish to be alone, tonight. */ + LK#NL17_end
  ++ @843 /* Oh dear. Contrary to what you obviously believe, nothing could be more disgusting to me than the sight of your grotesque form paraded so. */ + LK#NL17_noapps
END

IF ~~ LK#NL17_moanguy
  SAY @874 /* (Ninde leans forward, so close to you that her cherry lips brush your ear.) */
  = @875 /* Take me, tonight. I am begging, Bhaalspawn. I need to--I need to know if- */
  = @876 /* Bed me, my Lord...let me please you. As only...I...can. */
  ++ @877 /* I would be delighted to, Ninde... */ DO ~SetGlobal("LK#NindeNookie","GLOBAL",1) RestParty()~ EXIT
  ++ @878 /* Hey, don't need to ask me twice! */ DO ~SetGlobal("LK#NindeNookie","GLOBAL",1) RestParty()~ EXIT
  ++ @879 /* 'Twould be an honour. I only hope I can please you as much as I am certain you will please me. */ DO ~SetGlobal("LK#NindeNookie","GLOBAL",1) RestParty()~ EXIT
  ++ @880 /* Ninde, you are a very attractive woman, but I wouldn't want to complicate our relationship--especially not at present. I'm sorry. */ + LK#NL17_end
  ++ @881 /* Erm, no thanks. I'd rather take a cuttlefish back to my bedroll. */ + LK#NL17_noapps
END

IF ~~ LK#NL17_takarms
  SAY @882 /* (You draw Ninde onto your lap, her slender figure still, her eyes very dark and black and unabashedly fixed on your face. Her lips parted, she breathes heavily, shiveringly, before teasingly drawing apart the folds of silk that frame her tempting cleavage. Tilting her head to one side, she pouts sweetly, then leans up to whisper in your ear.) */
  = @875 /* Take me, tonight. I am begging, Bhaalspawn. I need to--I need to know if- */
  = @876 /* Bed me, my Lord...let me please you. As only...I...can. */
  ++ @877 /* I would be delighted to, Ninde... */ DO ~SetGlobal("LK#NindeNookie","GLOBAL",1) RestParty()~ EXIT
  ++ @878 /* Hey, don't need to ask me twice! */ DO ~SetGlobal("LK#NindeNookie","GLOBAL",1) RestParty()~ EXIT
  ++ @879 /* 'Twould be an honour. I only hope I can please you as much as I am certain you will please me. */ DO ~SetGlobal("LK#NindeNookie","GLOBAL",1) RestParty()~ EXIT
//  ++ ~Ninde...I love you deeply, and I would be a lucky man. But I do not feel the time is right for us to do this.~ + LK#NL17_notuim2dis
  ++ @881 /* Erm, no thanks. I'd rather take a cuttlefish back to my bedroll. */ + LK#NL17_noapps
END

IF ~~ LK#NL17_ninnyi
  SAY @883 /* (Ninde regards you with her head on one side, shrewdly as opposed to tenderly, fiercely aware of her nakedness, yet not shamed, but with a touch of determination in her features.) */
  = @875 /* Take me, tonight. I am begging, Bhaalspawn. I need to--I need to know if- */
  = @876 /* Bed me, my Lord...let me please you. As only...I...can. */
  ++ @877 /* I would be delighted to, Ninde... */ DO ~SetGlobal("LK#NindeNookie","GLOBAL",1) RestParty()~ EXIT
  ++ @878 /* Hey, don't need to ask me twice! */ DO ~SetGlobal("LK#NindeNookie","GLOBAL",1) RestParty()~ EXIT
  ++ @879 /* 'Twould be an honour. I only hope I can please you as much as I am certain you will please me. */ DO ~SetGlobal("LK#NindeNookie","GLOBAL",1) RestParty()~ EXIT
  ++ @880 /* Ninde, you are a very attractive woman, but I wouldn't want to complicate our relationship--especially not at present. I'm sorry. */ + LK#NL17_end
  ++ @881 /* Erm, no thanks. I'd rather take a cuttlefish back to my bedroll. */ + LK#NL17_noapps
END

IF ~~ LK#NL17_pull2u
  SAY @884 /* (You pull Ninde hard to your chest, and she winds her arms about your neck, her nails gently grazing your shoulders and back as she quivers in your arms. Your hear the elf moan as your lips meet, but abruptly, she draws away. She looks at you with something like suspicion, before her features collapse back into lusty sweetness.) */
  = @874 /* (Ninde leans forward, so close to you that her cherry lips brush your ear.) */
  = @875 /* Take me, tonight. I am begging, Bhaalspawn. I need to--I need to know if- */
  = @876 /* Bed me, my Lord...let me please you. As only...I...can. */
  ++ @877 /* I would be delighted to, Ninde... */ DO ~SetGlobal("LK#NindeNookie","GLOBAL",1) RestParty()~ EXIT
  ++ @878 /* Hey, don't need to ask me twice! */ DO ~SetGlobal("LK#NindeNookie","GLOBAL",1) RestParty()~ EXIT
  ++ @879 /* 'Twould be an honour. I only hope I can please you as much as I am certain you will please me. */ DO ~SetGlobal("LK#NindeNookie","GLOBAL",1) RestParty()~ EXIT
  ++ @880 /* Ninde, you are a very attractive woman, but I wouldn't want to complicate our relationship--especially not at present. I'm sorry. */ + LK#NL17_end
  ++ @881 /* Erm, no thanks. I'd rather take a cuttlefish back to my bedroll. */ + LK#NL17_noapps
END

IF ~~ LK#NL17_putwayn
  SAY @885 /* (Ninde looks about her momentarily in confusion, before her features quirk in an ugly expression of indignance.)  */
  = @886 /* (Without another word, Ninde gathers her robe to her bare body, and sweeps away, trailing the musky scent of cinnamon and incense smoke.) */
  IF ~~ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NL17_ninnyluv
  SAY @887 /* (Seeming at first to have not registered your declaration, Ninde once again brands your lips with hers, before drawing away, and looking you directly in the eyes. The sun elf does not respond at first, then suddenly giggles and clings to you all the tighter. Lifting her mouth to your ear, she whispers.) */
  = @875 /* Take me, tonight. I am begging, Bhaalspawn. I need to--I need to know if- */
  = @876 /* Bed me, my Lord...let me please you. As only...I...can. */
  ++ @877 /* I would be delighted to, Ninde... */ DO ~SetGlobal("LK#NindeNookie","GLOBAL",1) RestParty()~ EXIT
  ++ @878 /* Hey, don't need to ask me twice! */ DO ~SetGlobal("LK#NindeNookie","GLOBAL",1) RestParty()~ EXIT
  ++ @879 /* 'Twould be an honour. I only hope I can please you as much as I am certain you will please me. */ DO ~SetGlobal("LK#NindeNookie","GLOBAL",1) RestParty()~ EXIT
  ++ @880 /* Ninde, you are a very attractive woman, but I wouldn't want to complicate our relationship--especially not at present. I'm sorry. */ + LK#NL17_end
  ++ @881 /* Erm, no thanks. I'd rather take a cuttlefish back to my bedroll. */ + LK#NL17_noapps
END

IF ~~ LK#NL17_undorob
  SAY @888 /* (As you trace your fingertips across Ninde's rosegold skin, your hand is met by hers, and she pulls away from you slightly. Her expression is darkly enticing, and as she observes you beneath charcoal lashes, you notice her lithe body is quaking slightly in your arms. She leans forward once more, putting her mouth to your ear.) */
  = @875 /* Take me, tonight. I am begging, Bhaalspawn. I need to--I need to know if- */
  = @876 /* Bed me, my Lord...let me please you. As only...I...can. */
  ++ @877 /* I would be delighted to, Ninde... */ DO ~SetGlobal("LK#NindeNookie","GLOBAL",1) RestParty()~ EXIT
  ++ @878 /* Hey, don't need to ask me twice! */ DO ~SetGlobal("LK#NindeNookie","GLOBAL",1) RestParty()~ EXIT
  ++ @879 /* 'Twould be an honour. I only hope I can please you as much as I am certain you will please me. */ DO ~SetGlobal("LK#NindeNookie","GLOBAL",1) RestParty()~ EXIT
  ++ @880 /* Ninde, you are a very attractive woman, but I wouldn't want to complicate our relationship--especially not at present. I'm sorry. */ + LK#NL17_end
  ++ @881 /* Erm, no thanks. I'd rather take a cuttlefish back to my bedroll. */ + LK#NL17_noapps
END

IF ~~ LK#NL17_keeneck
  SAY @889 /* (As your lips brush against the fragrant skin of her neck, Ninde murmurs something and clutches at you with something between vulnerability and profound lust. Her lithe body tenses in your arms, and she draws away from you a little, her lips touching your ear. She whispers.) */
  = @875 /* Take me, tonight. I am begging, Bhaalspawn. I need to--I need to know if- */
  = @876 /* Bed me, my Lord...let me please you. As only...I...can. */
  ++ @877 /* I would be delighted to, Ninde... */ DO ~SetGlobal("LK#NindeNookie","GLOBAL",1) RestParty()~ EXIT
  ++ @878 /* Hey, don't need to ask me twice! */ DO ~SetGlobal("LK#NindeNookie","GLOBAL",1) RestParty()~ EXIT
  ++ @879 /* 'Twould be an honour. I only hope I can please you as much as I am certain you will please me. */ DO ~SetGlobal("LK#NindeNookie","GLOBAL",1) RestParty()~ EXIT
  ++ @880 /* Ninde, you are a very attractive woman, but I wouldn't want to complicate our relationship--especially not at present. I'm sorry. */ + LK#NL17_end
  ++ @881 /* Erm, no thanks. I'd rather take a cuttlefish back to my bedroll. */ + LK#NL17_noapps
END


// Morning After (LT 18)
// ---------------------
IF ~Global("LK#NindeLoveTalks","GLOBAL",35)~ LK#NL18
  SAY @890 /* (You wake with a start, sensing some sudden movement beside you, and reach for your weapon as second nature. As your fingers brush the morning-cooled metal, a softer hand meets your own. Remembering Ninde, you relax, and roll over to face her. She is still, her eyes limpid pools, and she appears to be gazing vacantly at something just beyond your shoulder. After a few moments, she collects herself, and speaks.) */
  = @891 /* Good morning, Bhaalspawn. */
  ++ @892 /* Good morning, Ninde. I trust you slept well? */ DO ~IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL18_GMLOVE
  ++ @893 /* What do you mean by waking me like that? You gave me quite a fright. */ DO ~IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL18_QUIFRI
  ++ @894 /* Is something wrong? You don't look quite yourself. */ DO ~IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL18_QUITEURS
  ++ @895 /* Yeah, whatever, Lady. Less gaping, more making me breakfast. */ DO ~IncrementGlobal("LK#NindeLoveTalks","GLOBAL",1)~ + LK#NL18_MOREBREKM
END

IF ~~ LK#NL18_GMLOVE
  SAY @896 /* I slept well at first...but then I had a dream. A nightmare. */
  IF ~~ + LK#NL18_main1
END

IF ~~ LK#NL18_QUIFRI
  SAY @897 /* Oh, I didn't realise...I am quite affrighted myself. */
  ++ @898 /* Why? */ + LK#NL18_QUITEURS
  ++ @899 /* You certainly look more than a little on edge. */ + LK#NL18_QUITEURS
  ++ @900 /* I know I'm not the handsomest of men, but I hoped my face would excite different emotions. */ + LK#NL18_QUITEURS
END

IF ~~ LK#NL18_QUITEURS
  SAY @901 /* I had a dream last night. Well, a nightmare. */
  IF ~~ + LK#NL18_main1
END

IF ~~ LK#NL18_main1
  SAY @902 /* I dreamt I lay in a pool, naked but for a white night shift I wore as a girl. The pool was black, and in the most lightless cavern. I tried to move, but found myself unable to. The only sound in the cave was this torturously regular dripping, and as I listened to it...this...this dread begin to gather in me. */
  = @903 /* I felt as though something was rising from the deeps of the pool and there was no way I could escape it. Something made more frightening because I did not know what it was, and I could feel the water surging against my body but couldn't even turn to see what the growing shadow in the pool belonged too. */
  ++ @904 /* That sounds...very unnerving. It was only a dream though. Be at ease. */ + LK#NL18_BATEAZE
  ++ @905 /* I am sorry that a night so sweet could be tainted by such an imagining. */ + LK#NL18_MAGININ
  ++ @906 /* Strange. I simply hope it wasn't prophetic. */ + LK#NL18_WANTPROP
  ++ @907 /* Pfft. Nightmare? What I wouldn't give for such nightmares! That was a pleasant stroll in a meadow compared to the horrors I am nightly bombarded with. */ + LK#NL18_BOMBARD
END

IF ~~ LK#NL18_MOREBREKM
  SAY @908 /* My, it seems we were both used. */
  ++ @909 /* Used? How do you mean? */ + LK#NL18_HOWUMEN
  ++ @910 /* It does not concern me. I wanted a night with you, and now I want breakfast. I am a creature of impulse. */ + LK#NL18_IMPULZE
  ++ @911 /* You were, perhaps, but not I! <CHARNAME> is never used. */ + LK#NL18_BUNOTI
END

IF ~~ LK#NL18_BATEAZE
  SAY @912 /* Please! Please do not do that--I do not want the sweet assuaging male, brimming with ready smiles and opened arms. I don't want this from you, Bhaalspawn. */
  ++ @913 /* Then what do you want, Ninde? I am confused. Sometimes I get the impression that there is something growing between us, but as soon as I act upon it, you drive me away. */ + LK#NL18_DRIVWA
  ++ @914 /* Well, like it or not, you've got it. You seem distressed, and no matter how you attempt to persuade me otherwise, I know I cannot leave you like this. */ + LK#NL18_LEEVLIKE
  ++ @915 /* And why not? I care for you Ninde--why should I not express it? */ + LK#NL18_EXPREIT
  ++ @916 /* Then you would prefer I was callous? I bedded you then left you to your miseries? Then perhaps I ought to do just that. */ + LK#NL18_PRAWILL
  ++ @917 /* Thank the Gods! I know what I wanted, and I got it last night. I suppose I can drop the noble swain act now. */ + LK#NL18_MOREBREKM
END

IF ~~ LK#NL18_MAGININ
  SAY @918 /* And...and I am sorry that my own quiet decline should be interrupted by nights of foolishness such as that just passed. */
  ++ @919 /* You didn't seem to think it foolish last night. */ + LK#NL18_LANITE
  ++ @920 /* Foolish? Tell me, Ninde, what is foolish about two people who are drawn to each other being together? */ + LK#NL18_WUTFOOL
  ++ @921 /* I won't do this. I won't argue with you. Desist, or leave. */ + LK#NL18_DESOLEV
  ++ @922 /* I really don't appreciate this. I wish for once you would decide what you wanted, and stop all this nonsense. You either want me or you don't, so make your choice. I'll be toyed with no longer */ + LK#NL18_NUNSENS
  ++ @923 /* Foolish? Boring is the word I'd use. Honestly, I thought you were supposed to be good at that sort of thing. */ + LK#NL18_GUDSORT
END

IF ~~ LK#NL18_WANTPROP
  SAY @924 /* I don't think it will be. The night before last I dreamt I spent a wonderful night with a charming <PRO_RACE> Bhaalspawn--that dream went unfulfilled. Shar, how foolish I have been. */
  ++ @925 /* I assume you're talking about me? */ + LK#NL18_WELLGAH
  ++ @922 /* I really don't appreciate this. I wish for once you would decide what you wanted, and stop all this nonsense. You either want me or you don't, so make your choice. I'll be toyed with no longer */ + LK#NL18_NUNSENS
  ++ @926 /* Then I am sorry you didn't enjoy it as much as I did. */ + LK#NL18_ASMASI
  ++ @921 /* I won't do this. I won't argue with you. Desist, or leave. */ + LK#NL18_DESOLEV
  ++ @927 /* Yes, well I found it all a little underwhelming, too. I thought you were supposed to be good? */ + LK#NL18_GUDSORT
END

IF ~~ LK#NL18_BOMBARD
  SAY @928 /* But you see, the nightmare was as nothing to waking up and seeing you beside me. Shar, what a fool I have been. */
  ++ @921 /* I won't do this. I won't argue with you. Desist, or leave. */ + LK#NL18_DESOLEV
  ++ @929 /* I know I'm not the handsomest of men, but I hoped my face would excite different emotions. */ + LK#NL18_QUITEURS2
  ++ @922 /* I really don't appreciate this. I wish for once you would decide what you wanted, and stop all this nonsense. You either want me or you don't, so make your choice. I'll be toyed with no longer */ + LK#NL18_NUNSENS
END

IF ~~ LK#NL18_HOWUMEN
  SAY @930 /* You had the temerity to think I desired you? No--I simply needed to...to find something out. And now I have. */
  ++ @931 /* To find what out? */ + LK#NL18_FINWUTOU
  ++ @932 /* Yeah, well I found something out alright. You're an awful lover and have smelly breath in the morning. */ + LK#NL18_SMELMORN
END

IF ~~ LK#NL18_IMPULZE
  SAY @933 /* And I am one of experimentation. That was what last night was...an experiment. */
  ++ @934 /* An experiment into what, precisely? */ + LK#NL18_PRECISEL
  ++ @935 /* And what did said experiment reveal to you? */ + LK#NL18_SEDEXPR
  ++ @936 /* Funny, I thought experiments were supposed to reveal something. All last night revealed to me is that you are a decidedly lacklustre lover. */ + LK#NL18_GUDSORT
END

IF ~~ LK#NL18_BUNOTI
  SAY @937 /* Hah! Then you had the temerity to think I desired you? No--I simply needed to...to find something out. And now I have. */
  ++ @931 /* To find what out? */ + LK#NL18_FINWUTOU
  ++ @932 /* Yeah, well I found something out alright. You're an awful lover and have smelly breath in the morning. */ + LK#NL18_SMELMORN
END

IF ~~ LK#NL18_DRIVWA
  SAY @938 /* Bhaalspawn, there is nothing growing between us. I suppose you had the temerity to think I desired you. */
  ++ @939 /* All the eyelash-batting and back-rubs rather gave me that impression. */ + LK#NL18_THUTIMPR
  ++ @940 /* If you did not, then why did you offer yourself to me last night? */ + LK#NL18_LARNIGH
  ++ @921 /* I won't do this. I won't argue with you. Desist, or leave. */ + LK#NL18_DESOLEV
  ++ @941 /* I don't desire you especially, either. But when some cheap slattern throws herself at you like that--well. You just can't say no. */ + LK#NL18_JUSAYNOO
END

IF ~~ LK#NL18_LEEVLIKE
  SAY @942 /* Then it is you who will suffer. I suppose you had the temerity to think of me as a fallen woman, to be redeemed through your virtue and delicate attention? I do not want it. I despise it. */
  ++ @943 /* If this is so, then why did you offer yourself to me last night? */ + LK#NL18_LARNIGH
  ++ @944 /* That was not my intention at all. It is simply that--unlike you- I value kindness and empathy above cruelty and cynicism. */ + LK#NL18_CRUCYNI
  ++ @945 /* You are a fallen woman, Ninde. I see that you were once virtuous and sweet, but now you are just bitter. Perhaps I had hoped to redeem you through my kindness. Can you blame me? */ + LK#NL18_BLAMMIE
  ++ @946 /* And I despise you. */ + LK#NL18_JUSAYNOO
END

IF ~~ LK#NL18_EXPREIT
  SAY @947 /* You say you care for me? */
  IF ~~ + LK#NL18_LEEVLIKE
END

IF ~~ LK#NL18_PRAWILL
  SAY @948 /* I would rather you removed myself from your sight and never bestowed your attentions on me again. You disgust me. */
  ++ @949 /* If I disgust you so, then why did you offer yourself to me last night? */ + LK#NL18_PRECISEL
  ++ @950 /* Then I will leave, and never presume you hold affection for me again. */ + LK#NL18_AFFEGAIN
  ++ @951 /* Believe me, your feelings of disgust are mutual. */ + LK#NL18_JUSAYNOO
END

IF ~~ LK#NL18_LANITE
  SAY @952 /* I suppose you had the temerity to think I desired you. I do not. I simply needed to...to find something out. And now I have. */
  ++ @931 /* To find what out? */ + LK#NL18_FINWUTOU
  ++ @932 /* Yeah, well I found something out alright. You're an awful lover and have smelly breath in the morning. */ + LK#NL18_SMELMORN
END

IF ~~ LK#NL18_WUTFOOL
  SAY @953 /* Ha! You have the temerity to think I am 'drawn to you'? */
  ++ @939 /* All the eyelash-batting and back-rubs rather gave me that impression. */ + LK#NL18_THUTIMPR
  ++ @940 /* If you did not, then why did you offer yourself to me last night? */ + LK#NL18_LARNIGH
  ++ @921 /* I won't do this. I won't argue with you. Desist, or leave. */ + LK#NL18_DESOLEV
  ++ @941 /* I don't desire you especially, either. But when some cheap slattern throws herself at you like that--well. You just can't say no. */ + LK#NL18_JUSAYNOO
END

IF ~~ LK#NL18_DESOLEV
  SAY @954 /* I intend to leave, but first, there is something you ought to know; last night was...an experiment. I had to find out...if you are as cold as I. If our union would be as beastly hollow for you as it was for me. */
  IF ~~ + LK#NL18_main2
END

IF ~~ LK#NL18_NUNSENS
  SAY @955 /* Want you? Then you had the temerity to think I felt affection for you? */
  ++ @939 /* All the eyelash-batting and back-rubs rather gave me that impression. */ + LK#NL18_THUTIMPR
  ++ @940 /* If you did not, then why did you offer yourself to me last night? */ + LK#NL18_LARNIGH
  ++ @921 /* I won't do this. I won't argue with you. Desist, or leave. */ + LK#NL18_DESOLEV
  ++ @941 /* I don't desire you especially, either. But when some cheap slattern throws herself at you like that--well. You just can't say no. */ + LK#NL18_JUSAYNOO
END

IF ~~ LK#NL18_GUDSORT
  SAY @956 /* Perhaps such a comment would cause greater offence if I thought you had some authority on the matter. As it is, you have so little with which to draw comparison, it isn't worthy of note. */
  = @957 /* You see, I didn't sleep with you for your entertainment, or for mine. I simply needed to...to find something out. And now I have. */
  ++ @931 /* To find what out? */ + LK#NL18_FINWUTOU
  ++ @932 /* Yeah, well I found something out alright. You're an awful lover and have smelly breath in the morning. */ + LK#NL18_SMELMORN
END

IF ~~ LK#NL18_WELLGAH
  SAY @958 /* And once again, our Bhaalspawn demonstrates his unparalleled deductive skills. */
  = @959 /* Last night was disastrous. I knew it would be so. */
  ++ @960 /* Which begs the question; why did you offer yourself to me in the first place? */ + LK#NL18_LARNIGH
  ++ @961 /* I knew it wouldn't exactly be world-changing for me, either, but a bedding is a bedding. */ + LK#NL18_SMELMORN
END

IF ~~ LK#NL18_ASMASI
  SAY @962 /* Bhaalspawn, I did not sleep with you for your entertainment, or for mine. I simply needed to...to find something out. And now I have. */
  ++ @931 /* To find what out? */ + LK#NL18_FINWUTOU
  ++ @932 /* Yeah, well I found something out alright. You're an awful lover and have smelly breath in the morning. */ + LK#NL18_SMELMORN
END

IF ~~ LK#NL18_QUITEURS2
  SAY @963 /* Bhaalspawn, what else could your face evoke in me but disgust, after such a night? You seem surprised--I suppose you had the temerity to think I desired you. */
  ++ @939 /* All the eyelash-batting and back-rubs rather gave me that impression. */ + LK#NL18_THUTIMPR
  ++ @940 /* If you did not, then why did you offer yourself to me last night? */ + LK#NL18_LARNIGH
  ++ @921 /* I won't do this. I won't argue with you. Desist, or leave. */ + LK#NL18_DESOLEV
  ++ @941 /* I don't desire you especially, either. But when some cheap slattern throws herself at you like that--well. You just can't say no. */ + LK#NL18_JUSAYNOO
END

IF ~~ LK#NL18_FINWUTOU
  SAY @964 /* If you are as cold as I. If our union would be as beastly hollow for you as it was for me. */
  IF ~~ + LK#NL18_main2
END

IF ~~ LK#NL18_SMELMORN
  SAY @965 /* Your words are wasted. There is just one more thing I have to say to you. I need to know if you are as cold as I. If our union would be as beastly hollow for you as it was for me. */
  IF ~~ + LK#NL18_main2
END

IF ~~ LK#NL18_PRECISEL
  SAY @966 /* An experiment that would answer me something I have wondered since Spellhold--if you are as cold as I. If our union would be as beastly hollow for you as it was for me. */
  IF ~~ + LK#NL18_main2
END

IF ~~ LK#NL18_SEDEXPR
  SAY @967 /* That every night...every night is just another soulless puppet show, with or without you rutting away on top of me. That I felt nothing. */
  = @968 /* But that's just part of it I wanted to know if it would be every bit as beastly hollow for you as it was for me. If you would feel filthy in the morning. If you would want to hold me--or hurt me. Because I don't feel a thing. */
  = @969 /* So open your heart to me, Bhaalspawn; tell me. How did it feel? */
  ++ @970 /* It was an enjoyable night, I only hoped this morning would be, also. I should've known your vindictiveness would get in the way of any growing affection between us. */ + LK#NL18_WOODBE2
  ++ @971 /* The very question insults me--last night meant more to me then you could conceive, Ninde--and this morning brings me pain in equal measure. */ + LK#NL18_EQMEASUR
  ++ @972 /* I don't believe you. I know that there is something between us, deny it all you like. */ + LK#NL18_DENALLU
  ++ @973 /* You are right--no soul, no sensation. I felt nothing for you. */ + LK#NL18_FELNUFF
  ++ @974 /* It was a good time, and nothing more. I don't feel any profound attachment to you, if that's what you're asking. */ + LK#NL18_FELNUFF
  ++ @975 /* What does it matter? Anything I felt for you last night has vanished since. */ + LK#NL18_VANSIN
  ++ @976 /* Darling, I've found more meaningful things on the sole of my boot. */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ + LK#NL18_UNDRSID
END

IF ~~ LK#NL18_THUTIMPR
  SAY @977 /* All part of the illusion dear. I worried I pounced too quickly before, but last night...a lamb to the slaughter, my dear. I've just one more question for you. I need to know if our union was as beastly hollow for you as it was for me. */
  IF ~~ + LK#NL18_main2
END

IF ~~ LK#NL18_LARNIGH
  SAY @978 /* Because I needed to know if you are as cold as I. If our union would be as beastly hollow for you as it was for me. */
  IF ~~ + LK#NL18_main2
END

IF ~~ LK#NL18_JUSAYNOO
  SAY @979 /* Your opinion of me is an irrelevancy at this juncture. I've just one question to ask you; was our union as beastly hollow for you as it was for me? */
  IF ~~ + LK#NL18_main2
END

IF ~~ LK#NL18_CRUCYNI
  SAY @980 /* I couldn't care less about your values, Bhaalspawn. I just have one more question to ask you; was our union as beastly hollow for you as it was for me? */
  IF ~~ + LK#NL18_main2
END

IF ~~ LK#NL18_BLAMMIE
  SAY @981 /* Gods, <CHARNAME>, do let me know if you ever manage to free yourself from the talons of righteous absurdity. Until then, I've one question left to ask you; was our union as beastly hollow for you as it was for me? */
  IF ~~ + LK#NL18_main2
END

IF ~~ LK#NL18_AFFEGAIN
  SAY @982 /* Please, but before you do, I've one question left to ask you; was our union as beastly hollow for you as it was for me? */
  IF ~~ + LK#NL18_main2
END

IF ~~ LK#NL18_main2
  SAY @983 /* If you would feel filthy in the morning. If you would want to hold me--or hurt me. Because I don't feel a thing. Every night...just another soulless puppet show, with or without you rutting away on top of me. */
  = @969 /* So open your heart to me, Bhaalspawn; tell me. How did it feel? */
  ++ @970 /* It was an enjoyable night, I only hoped this morning would be, also. I should've known your vindictiveness would get in the way of any growing affection between us. */ + LK#NL18_WOODBE2
  ++ @971 /* The very question insults me--last night meant more to me then you could conceive, Ninde--and this morning brings me pain in equal measure. */ + LK#NL18_EQMEASUR
  ++ @972 /* I don't believe you. I know that there is something between us, deny it all you like. */ + LK#NL18_DENALLU
  ++ @973 /* You are right--no soul, no sensation. I felt nothing for you. */ + LK#NL18_FELNUFF
  ++ @974 /* It was a good time, and nothing more. I don't feel any profound attachment to you, if that's what you're asking. */ + LK#NL18_FELNUFF
  ++ @975 /* What does it matter? Anything I felt for you last night has vanished since. */ + LK#NL18_VANSIN
  ++ @976 /* Darling, I've found more meaningful things on the sole of my boot. */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ + LK#NL18_UNDRSID
END

IF ~~ LK#NL18_WOODBE2
  SAY @984 /* Poor, dear Bhaalspawn. Do you still think this is all about affection? Some great romance faltering in the face of adversity? It is about me. It is *always* about me. */
  = @985 /* All you need to know is that love...is natural and real, but not for those such as us. */
  IF ~~ EXIT
END

IF ~~ LK#NL18_EQMEASUR
  SAY @986 /* You are still talking like this is our great romance. So you still think this is about riding into the sunset, my hand warm in yours? It is about me. It is *always* about me. */
  IF ~~ + LK#NL18_end
END

IF ~~ LK#NL18_DENALLU
  SAY @987 /* Believe all you want, if you think what you believe still matters. If you think this is still about some great romance, faltering in the face of adversity? It's not. It's about me. It is *always* about me. */
  IF ~~ + LK#NL18_end
END

IF ~~ LK#NL18_FELNUFF
  SAY @988 /* Then perhaps you begin to see what this is all about. That you will have moments of happiness when you feel in love with the world, swept away in it all. But it will pass. You are growing up. Growing old. */
  IF ~~ + LK#NL18_end
END

IF ~~ LK#NL18_VANSIN
  SAY @989 /* You need not answer in more words than that, for I see you begin to realise what this is about. Not some great romance, faltering in the face of adversity. It is about me. It is *always* about me. */
  IF ~~ + LK#NL18_end
END

IF ~~ LK#NL18_UNDRSID
  SAY @990 /* So the poor Bhaalspawn still thinks it is about winning, about spite. It isn't. It is about me. It is *always* about me. */
  IF ~~ + LK#NL18_end
END

IF ~~ LK#NL18_end
  SAY @985 /* All you need to know is that love...is natural and real, but not for those such as us. */
  IF ~~ EXIT
END


ADD_TRANS_TRIGGER SUELLE2 18 ~OR(3) !InParty("Ninde") Dead("Ninde") !Global("LK#NindeRomanceActive","GLOBAL",2)~

// Adding to the transition list in Ellesime's final dialogue state
EXTEND_BOTTOM SUELLE2 18
  IF ~InParty("Ninde") Global("LK#NindeRomanceActive","GLOBAL",2)~ + LK#NR
END


// Restoration scene
// -----------------
CHAIN SUELLE2 LK#NR
  @991 /* You are all our saviours, but to one of you we can offer a more significant gift than our gratitude alone; Anilessa, soulless-one. */
  == LK#NINDJ @992 /* I assume you mean me? */
  == SUELLE2 @993 /* Yes. */
  == LK#NINDJ @994 /* Is it money? I like money. */
  == SUELLE2 @995 /* It is a gift much greater. Ninde, if <CHARNAME> will consent to help, then we may be able to restore you. To restore your soul. */
  == LK#NINDJ @996 /* My...soul. Shar. */
DO ~SetGlobal("LK#NindeRestorationScene","GLOBAL",1)~
END
  ++ @997 /* I will do whatever is recquired of me to effect Ninde's restoration. */ EXTERN SUELLE2 LK#NR_AFFREST
  ++ @998 /* My help? How do you mean? */ EXTERN SUELLE2 LK#NR_DOUMEEN
  ++ @999 /* I've had my final dealings with Ninde, I'm afraid. You can try to cure her if you want, but you must do so without my help. */ EXTERN SUELLE2 LK#NR_DOSOWIV

CHAIN SUELLE2 LK#NR_AFFREST
  @1000 /* Are you certain, <CHARNAME>? This is not a decision to be taken lightly. You must give part of your own soul if hers is to be returned--you may find yourself diminished, should you choose to. */
  == LK#NINDJ @1001 /* <CHARNAME>...I--I would ask you not to do this. I would ask you not to so that I owed you nothing. But perhaps just once...I should lay aside calculation, and... */
  = @1002 /* And beg you to save me. Please. */
END
  ++ @1003 /* I wish for Ninde to be restored, whatever the cost to myself. */ EXTERN LK#NINDJ LK#NR_main2
  ++ @1004 /* And what will you give me if I do, Ninde? */ EXTERN SUELLE2 LK#NR_GIVIFIDO
  ++ @1005 /* Diminished? How exactly will I be affected? */ EXTERN SUELLE2 LK#NR_HOWUDIM
  ++ @1006 /* Can no other soul be used but mine? */ EXTERN SUELLE2 LK#NR_NUNBUT
  ++ @1007 /* I am sorry. My soul has been hurled about quite enough already. I just can't risk harming myself. */ EXTERN SUELLE2 LK#NR_SELFHARM

CHAIN SUELLE2 LK#NR_DOUMEEN
  @1008 /* Ninde's soul cannot simply be plucked from the ether; a conduit must be provided. You must give some of yourself that she may be restored. */
END
  ++ @1003 /* I wish for Ninde to be restored, whatever the cost to myself. */ EXTERN LK#NINDJ LK#NR_main2
  ++ @1009 /* How might I be affected? */ EXTERN SUELLE2 LK#NR_HOWUDIM
  ++ @1010 /* And does it have to be me who provides this...conduit? */ EXTERN SUELLE2 LK#NR_NUNBUT
  ++ @1011 /* Eeh, sounds a little too risky to me. Sorry Ninde. */ EXTERN SUELLE2 LK#NR_SELFHARM

CHAIN SUELLE2 LK#NR_DOSOWIV
  @1012 /* If you will not...then I am afraid it cannot be done. Your divinity is necessary to the- */
  == LK#NINDJ @1001 /* <CHARNAME>...I--I would ask you not to do this. I would ask you not to so that I owed you nothing. But perhaps just once...I should lay aside calculation, and... */
  = @1002 /* And beg you to save me. Please. */
END
  ++ @1013 /* Now suddenly you need my help. Perhaps you should have thought of that before you chose to end our relations. */ EXTERN LK#NINDJ LK#NR_CHORELAT
  ++ @1014 /* I don't know what to do. On the one hand, I want you realise the consequences of your treatment of me...but on the other, I still care for you, and I know this may be your only chance to recover what was taken from you. Very well, I will help. */ EXTERN LK#NINDJ LK#NR_main2
  ++ @1004 /* And what will you give me if I do, Ninde? */ EXTERN SUELLE2 LK#NR_GIVIFIDO
  ++ @1015 /* It's too late. You cannot take back what you have said. */ EXTERN LK#NINDJ LK#NR_UHEVSED

CHAIN LK#NINDJ LK#NR_main2
  @1016 /* <CHARNAME>, I... */
  == SUELLE2 @1017 /* Then I shall begin the ritual. */
  DO ~ClearAllActions() StartCutSceneMode() StartCutScene("lk#nicut")~
EXIT

/*
{CUTSCENE: Ellesime is casting a spell; same graphics as a healing spell, maybe with some extra casting graphics; I'd like 'Seldarine, I call on thee...' or something similar to appear above her at some point. Ninde falls to the floor, and again some funky casting graphics on her and <CHARNAME>, possibly that ghost one like when you cast death spell. YEAAH. Anyway, all that happens.}

{After the cutscene is complete, Ninde stays fainted and a new post-restoration dialogue appears depending on the choices of the PC.}
*/

CHAIN SUELLE2 LK#NR_GIVIFIDO
  @1018 /* Give? <CHARNAME>, this is perhaps not a decision to be made for selfish purposes. The- */
  == LK#NINDJ @1019 /* No, Ellesime. I understand him. And he understands me. A trade, then. */
  = @1020 /* If--if you do this, my Lord, suffice to say I will be very, very...yours. */
  = @1021 /* (As she speaks Ninde approaches you, her face turned to yours, until she stands boldly before you, and slides her soft arms about your shoulders, her body positioned so that her curves brush just slightly against your chest.) */
END
  ++ @1022 /* Ahh, Ninde, always making me offers I can't refuse. Very well. You shall have your soul back. */ DO ~SetGlobal("LK#NindeSelfish","GLOBAL",1)~ EXTERN LK#NINDJ LK#NR_main2
  ++ @1023 /* (Kiss Ninde.) You shall have your soul back. */ DO ~SetGlobal("LK#NindeSelfish","GLOBAL",1)~ EXTERN LK#NINDJ LK#NR_main2
  ++ @1024 /* That's not what I meant. I want you, but I want a chance to be with you. And not just in my bedroll. Have your soul back, that we might finally be together. */ EXTERN LK#NINDJ LK#NR_main2
  ++ @1025 /* Wow, you really are a whore. No suprises there, then. Sorry, the offer just doesn't tempt me. */ EXTERN SUELLE2 LK#NR_NAHTEMP

CHAIN SUELLE2 LK#NR_HOWUDIM
  @1026 /* It is impossible for me to tell you exactly what will happen. You may find yourself physically weaker...perhaps some of your stranger abilities will vanish. In truth, I cannot say. The Seldarine demand a sacrifice, and only you can make it. */
END
  ++ @1027 /* Whatever the risk, I am willing. */ EXTERN LK#NINDJ LK#NR_main2
  ++ @1028 /* And you're certain it has to be me? We couldn't just kidnap some poor sap from the forest and use him instead? */ EXTERN SUELLE2 LK#NR_NUNBUT
  ++ @1029 /* If you can give me no greater idea of what is at stake, then I am afraid the answer is no. I cannot endanger myself and my friends for the sake of just one, no matter what my feelings are. */ EXTERN SUELLE2 LK#NR_SELFHARM
  ++ @1030 /* Physically weaker? My abilities vanishing? No thank you. I wouldn't give my Godly nail clippings to save Ninde, let alone my powers. */ EXTERN SUELLE2 LK#NR_NAHTEMP

CHAIN SUELLE2 LK#NR_NUNBUT
  @1031 /* I am afraid it must be you. Your divinity is a necessity. */
END
  ++ @1032 /* If it must be me, then it must be me. Ninde, you shall have your soul back. */ EXTERN LK#NINDJ LK#NR_main2
  ++ @1033 /* No, I will not be a part of this. */ EXTERN SUELLE2 LK#NR_NUPARTS

CHAIN SUELLE2 LK#NR_SELFHARM
  @1034 /* Then it will not be done. It is right that you should be considerate of the dangers involved in such a ritual, <CHARNAME>. And Ninde...I am sorry. I hope that perhaps another for your restoration will arise in the future. */
  == LK#NINDJ @1035 /* I wouldn't bet on it, dear. */
  == SUELLE2 @1036 /* Perhaps not. May the Seldarine protect you, though you have long since strayed from their light; you were snatched by another from the life you should have led, among your people, but it is you who must now pay the price. Live well, if you can, though it seems there is naught but darkness ahead. */
END
  IF ~ReputationLT(Player1,10)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100a")~ EXIT
  IF ~ReputationGT(Player1,9)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100b")~ EXIT

CHAIN LK#NINDJ LK#NR_CHORELAT
  @1037 /* You are right, of course, and I can only endeavour to make amends. Give me the chance to and you shall never hear a spiteful words from me again. */
  == SUELLE2 @1038 /* What say you, <CHARNAME>? */
END
  ++ @1039 /* Very well. Ninde, you shall have your soul back. */ EXTERN LK#NINDJ LK#NR_main2
  ++ @1040 /* And what will you give me if I do help you, Ninde? */ EXTERN SUELLE2 LK#NR_GIVIFIDO
  ++ @1041 /* Perhaps you should have been more careful in the way you have treated me. I only hope you learn from this. I will not help you. */ EXTERN SUELLE2 LK#NR_NUPARTS

CHAIN LK#NINDJ LK#NR_UHEVSED
  @1042 /* How well I know it. I may be aware of the meanness with which I have treated you...but rest assured, you shall never have my remorse. */
  == SUELLE2 @1043 /* It saddens me to see one so young speak words so sad. Ninde, soul or no soul, may the Seldarine protect you, though you have long since strayed from their light; you were snatched by another from the life you should have led, among your people, but it is you who must now pay the price. Live well, if you can, though it seems there is naught but darkness ahead. */
END
  IF ~ReputationLT(Player1,10)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100a")~ EXIT
  IF ~ReputationGT(Player1,9)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100b")~ EXIT

CHAIN SUELLE2 LK#NR_NAHTEMP
  @1044 /* Your decision to assist Ninde should not have been made on such superficial grounds, but nonethless, I respect your choice. */
  = @1045 /* Ninde, soul or no soul, may the Seldarine protect you, though you have long since strayed from their light; you were snatched by another from the life you should have led, among your people, but it is you who must now pay the price. Live well, if you can, though it seems there is naught but darkness ahead. */
  == LK#NINDJ @1046 /* The Seldarine hate me, as I hate you. */
  == SUELLE2 @1047 /* It saddens me to see one so young speak words so sad. */
END
  IF ~ReputationLT(Player1,10)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100a")~ EXIT
  IF ~ReputationGT(Player1,9)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100b")~ EXIT

CHAIN SUELLE2 LK#NR_NUPARTS
  @1048 /* It saddens me to know that my kinswoman will not be restored, but I respect your decision, and trust it has been made with the utmost consideration. */
  = @1045 /* Ninde, soul or no soul, may the Seldarine protect you, though you have long since strayed from their light; you were snatched by another from the life you should have led, among your people, but it is you who must now pay the price. Live well, if you can, though it seems there is naught but darkness ahead. */
END
  IF ~ReputationLT(Player1,10)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100a")~ EXIT
  IF ~ReputationGT(Player1,9)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100b")~ EXIT


APPEND LK#NINDJ

// Post-restoration, unselfish
// ---------------------------
IF ~Global("LK#NindeRestored","GLOBAL",1) !Global("LK#NindeSelfish","GLOBAL",1)~ LK#NLR
  SAY @1049 /* (A dazzling white light lifts away from her prone form. As Ninde stirs, you find yourself at her side, her head resting in your lap. Her skin seems to shed a new fragile glow as the ritual draws to a close, and the elf clutches desperately at her throat and robes, shaking, as though something within her would still resist the change. Eventually, she is still, and you could hear a dry leaf fall as the chamber waits for her to regain consciousness.) */
  = @1050 /* ...<CHARNAME>? */
  ++ @1051 /* I am here. */ + LK#NLR_NOSHITSHER
  ++ @1052 /* Shh. How do you feel? */ + LK#NLR_HOWUZFE
  ++ @1053 /* And who were you expecting, Arilyn Moonblade? (smile) */ + LK#NLR_AZMOON
  ++ @1054 /* Praise the gods, I was beginning to think she'd killed you. */ + LK#NLR_SHAQILLE
END

IF ~~ LK#NLR_NOSHITSHER
  SAY @1055 /* You...you are. And I am glad of it. Shar...my head hurts... */
  ++ @1056 /* I'm not feeling terribly chipper either. I suppose it must be a side effect of the ritual. */ + LK#NLR_SIDZFECT
  ++ @1057 /* You should rest. */ + LK#NLR_SHUDREST
  ++ @1058 /* And you're not feeling different at all? Because I'd hate to have put myself at risk just to give you a little ache in the cranium. */ + LK#NLR_CRANZZ
END

IF ~~ LK#NLR_HOWUZFE
  SAY @1059 /* I'm not certain...but Shar...my head hurts... */
  ++ @1056 /* I'm not feeling terribly chipper either. I suppose it must be a side effect of the ritual. */ + LK#NLR_SIDZFECT
  ++ @1057 /* You should rest. */ + LK#NLR_SHUDREST
  ++ @1058 /* And you're not feeling different at all? Because I'd hate to have put myself at risk just to give you a little ache in the cranium. */ + LK#NLR_CRANZZ
END

IF ~~ LK#NLR_AZMOON
  SAY @1060 /* I'm right glad you're not...I don't like...Harpers. Shar...my head hurts... */
  ++ @1056 /* I'm not feeling terribly chipper either. I suppose it must be a side effect of the ritual. */ + LK#NLR_SIDZFECT
  ++ @1057 /* You should rest. */ + LK#NLR_SHUDREST
  ++ @1058 /* And you're not feeling different at all? Because I'd hate to have put myself at risk just to give you a little ache in the cranium. */ + LK#NLR_CRANZZ
END

IF ~~ LK#NLR_SHAQILLE
  SAY @1061 /* (Weak smile) No...I think I'm...quite well. A little...a little headache, that's all. */
  ++ @1056 /* I'm not feeling terribly chipper either. I suppose it must be a side effect of the ritual. */ + LK#NLR_SIDZFECT
  ++ @1057 /* You should rest. */ + LK#NLR_SHUDREST
  ++ @1058 /* And you're not feeling different at all? Because I'd hate to have put myself at risk just to give you a little ache in the cranium. */ + LK#NLR_CRANZZ
END

IF ~~ LK#NLR_SIDZFECT
  SAY @1062 /* (Haltingly, Ninde raises herself, wrapping her arms about your shoulders for support. Her eyes never leave your face as she embraces you. There is something different about her as she coyly gazes up at you from beneath dark lashes. The lines of her face seem softer the shape of her lips more round and inexact. She gently strokes a hand across your brow, and smiles.) */
  = @1063 /* Probably. Still...I am sorry if you aren't feeling your usual...vigorous self. */
  ++ @1064 /* Don't worry. I would bear a lot more discomfort for your restoration. */ + LK#NLR_RESTROD
  ++ @1065 /* Sorry? I should think so. I put myself to all this risk for you... */ + LK#NLR_RISKFORO
  ++ @1066 /* Seeing you is more then enough to restore me. */ + LK#NLR_RESTROD
  ++ @1067 /* How I feel doesn't matter. How do you feel? Do you think it has worked? */ + LK#NLR_HASHWOR
  ++ @1068 /* So am I, since now would be the perfect time for one of those romantic moments you and I keep missing out on. */ + LK#NLR_TOUTON
END

IF ~~ LK#NLR_SHUDREST
  SAY @1069 /* (Haltingly, Ninde raises herself, wrapping her arms about your shoulders for support. Her eyes never leave your face as she embraces you. There is something different about her as she coyly gazes up at you from beneath dark lashes. The lines of her face seem softer, the shape of her lips more round and inexact. She gently strokes a hand across your brow, and smiles.) */
  = @1070 /* But I don't want to rest. I want to kiss you. */
  ++ @806 /* (Kiss Ninde.) */ + LK#NLR_KYETAGE
  ++ @1071 /* Mmm...I think I'm going to like this new, soulful Ninde. */ + LK#NLR_LKSOULF
  ++ @1072 /* Not yet. Do you think it worked? The ritual? */ + LK#NLR_HASHWOR
END

IF ~~ LK#NLR_CRANZZ
  SAY @1069 /* (Haltingly, Ninde raises herself, wrapping her arms about your shoulders for support. Her eyes never leave your face as she embraces you. There is something different about her as she coyly gazes up at you from beneath dark lashes. The lines of her face seem softer, the shape of her lips more round and inexact. She gently strokes a hand across your brow, and smiles.) */
  = @1073 /* Why, that's true. You did put yourself at risk for me, didn't you? Mm...I'll have to think of some way to return the favour...perhaps starting tonight...(Ninde moves a little closer to you, and plants a kiss just to the side of your mouth.) */
  ++ @1071 /* Mmm...I think I'm going to like this new, soulful Ninde. */ + LK#NLR_LKSOULF
  ++ @806 /* (Kiss Ninde.) */ + LK#NLR_KYETAGE
  ++ @1074 /* Erm, perhaps now would be a good time to remind you that we are, in fact, being watched. By elves. Lots of elves. */ + LK#NLR_AHELFAT
  ++ @1075 /* Yes. I think I'll see to it that you do return the favor. I didn't help you get your soul back just to feel warm and fuzzy inside. */ + LK#NLR_WARFUZZ
END

IF ~~ LK#NLR_RESTROD
  SAY @1076 /* (giggle) You seem to be playing the honourable adventurer with more relish than usual. */
  ++ @1077 /* Well, I pride myself on being the Bhaalspawn you could take home to mother. If your mother wasn't dead, that is. */ + LK#NLR_TAKHOM2
  ++ @1078 /* I'm not 'playing' anything, Ninde. I am saying, with total sincerity, that there's a lot I would do to secure your happiness. I care for you. */ + LK#NLR_SINCLARE
END

IF ~~ LK#NLR_RISKFORO
  SAY @1073 /* Why, that's true. You did put yourself at risk for me, didn't you? Mm...I'll have to think of some way to return the favour...perhaps starting tonight...(Ninde moves a little closer to you, and plants a kiss just to the side of your mouth.) */
  ++ @1071 /* Mmm...I think I'm going to like this new, soulful Ninde. */ + LK#NLR_LKSOULF
  ++ @1074 /* Erm, perhaps now would be a good time to remind you that we are, in fact, being watched. By elves. Lots of elves. */ + LK#NLR_AHELFAT
  ++ @1075 /* Yes. I think I'll see to it that you do return the favor. I didn't help you get your soul back just to feel warm and fuzzy inside. */ + LK#NLR_WARFUZZ
END

IF ~~ LK#NLR_HASHWOR
  SAY @1079 /* I don't know...I think it must have. I do feel different, but I don't think I could explain to you how, exactly...but I do know I want to kiss you. */
  ++ @806 /* (Kiss Ninde.) */ + LK#NLR_KYETAGE
  ++ @1074 /* Erm, perhaps now would be a good time to remind you that we are, in fact, being watched. By elves. Lots of elves. */ + LK#NLR_AHELFAT
  ++ @1071 /* Mmm...I think I'm going to like this new, soulful Ninde. */ + LK#NLR_LKSOULF
END

IF ~~ LK#NLR_TOUTON
  SAY @1080 /* (Ninde smiles, and tenderly touches the side of your face.) */
  = @1081 /* We'll never miss out on anything again. Kiss me, <CHARNAME>. */
  ++ @806 /* (Kiss Ninde.) */ + LK#NLR_KYETAGE
  ++ @1074 /* Erm, perhaps now would be a good time to remind you that we are, in fact, being watched. By elves. Lots of elves. */ + LK#NLR_AHELFAT
  ++ @1071 /* Mmm...I think I'm going to like this new, soulful Ninde. */ + LK#NLR_LKSOULF
END

IF ~~ LK#NLR_KYETAGE
  SAY @1082 /* (Ninde kisses you with an innocence, a soft freshness and urgency you don't usually associate with her. It feels as though your embrace has only just begun, when she breaks away with a giggle, indicating the elves crowding the chamber.) */
  = @1083 /* Don't you love the way they are all feigning deep interest in the architecture? As enjoyable as this is, I'm not sure I want to be responsible for the corruption of dozens of baby Suldanesselan minds. */
  ++ @1084 /* Just minutes ago you would've been delighted to be the corrupter of dozens of baby Suldanesselan minds. I hope we won't be seeing too much of a change in my minxish Ninde... */ + LK#NLR_NO2CHANZ
  ++ @1085 /* I'm glad you're finally becoming more considerate. I should've known it would take intervention by the Seldarine to achieve such a thing. */ + LK#NLR_SELINTE
  ++ @1086 /* I suppose you're right. Perhaps we should continue in a more...intimate setting, mm? */ + LK#NLR_MATESET
  ++ @1087 /* Sod the baby Suldanesselan minds. (Continue kissing Ninde) */ + LK#NLR_CONKEES
END

IF ~~ LK#NLR_LKSOULF
  SAY @1088 /* (Ninde gives you a playful bat on the shoulder as she speaks, and, biting her lip, feigns offense.) You mean you didn't like me before? Oh, <CHARNAME>, I am left truly desolate. */
  ++ @1089 /* I liked you very much before, as you well know. I just think that now I will have all the good parts of Ninde, her humour, her intelligence, her thoughtfulness and her beauty without the spite, or the cruelty. At least, that's what I hope. */ + LK#NLR_WATIHOP
  ++ @1090 /* I adored you before, I do not doubt I will adore you now. */ + LK#NLR_RADNOOW
  ++ @1091 /* I liked you well enough before--I'm reserving judgment on this new Ninde for now. I haven't seen enough of her. */ + LK#NLR_NUFFOVER
  ++ @1092 /* I care for you a great deal--but I think as a friend, and nothing more. */ + LK#NLR_NOWTMORE
  ++ @1093 /* Liked you? Ninde, I love you! */ + LK#NLR_LUVS4UU
  ++ @1094 /* What can you expect, as foul to me as you were? */ + LK#NLR_FOWLASUW
END

IF ~~ LK#NLR_AHELFAT
  SAY @1095 /* So we are. And don't you love the way they are all feigning deep interest in the architecture? As enjoyable as this is, I'm not sure I want to be responsible for the corruption of dozens of baby Suldanesselan minds. */
  ++ @1084 /* Just minutes ago you would've been delighted to be the corrupter of dozens of baby Suldanesselan minds. I hope we won't be seeing too much of a change in my minxish Ninde... */ + LK#NLR_NO2CHANZ
  ++ @1085 /* I'm glad you're finally becoming more considerate. I should've known it would take intervention by the Seldarine to achieve such a thing. */ + LK#NLR_SELINTE
  ++ @1086 /* I suppose you're right. Perhaps we should continue in a more...intimate setting, mm? */ + LK#NLR_MATESET
  ++ @1096 /* Baby Suldanesselan minds be damned! (Kiss Ninde) */ + LK#NLR_CONKEES
END

IF ~~ LK#NLR_WARFUZZ
  SAY @1097 /* (Ninde raises a brow as you speak, before recognition gradually begins to creep across her sweet features. Clearing her throat, she moves away from you slightly, with a platonic pat on the shoulder.) */
  = @1098 /* Well in that case, <CHARNAME>...far be it from me to over-romanticise the moment. Perhaps...well, there is a lot to be done. We should discuss this later. Just...help me up. */
  IF ~ReputationLT(Player1,10)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100a")~ EXIT
  IF ~ReputationGT(Player1,9)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100b")~ EXIT
END

IF ~~ LK#NLR_TAKHOM2
  SAY @1099 /* Speaking of my mother, for the first time, I rather wish she was around, since I'm evidently doing the sorts of things an uppity elf could be proud of. I always thought that if my mother could see me...I would fall rather short of expectation. But now...well, I've helped save Suldanesselar, and found myself a sturdy Bhaalspawn beau in the process. */
  = @1100 /* Do you find yourself wondering what Gorion would think about the course you have taken, the things you do? */
  ++ @1101 /* Sometimes, but I try not to live in his shadow. As thankful as I am to him for all he did, I am still my own person. */ + LK#NLR_SHTILLPER
  ++ @1102 /* I often worry that I am not following the path Gorion wanted me to. I am convinced he wanted me to live a life of peace, to escape from the violence my heritage has forced upon me...but I haven't been able to. It is distressing. */ + LK#NLR_DAESTRES
  ++ @1103 /* I do, but I'm fairly sure he'd approve. */ + LK#NLR_SHURHED
  ++ @1104 /* All the time. He is the guiding force of my life. */ + LK#NLR_GUIDZIN
  ++ @1105 /* Never. If I spent all my time agonizing over what that grizzly old blighter would think, I'd never get the chance to do anything fun. */ + LK#NLR_ANFINFUN
END

IF ~~ LK#NLR_SINCLARE
  SAY @1106 /* Why, you do care for me, don't you? I'll have to try and think up a way to return the manifold kindness you have shown me...perhaps starting tonight... */
  ++ @1071 /* Mmm...I think I'm going to like this new, soulful Ninde. */ + LK#NLR_LKSOULF
  ++ @1107 /* Ninde, I have no interest in anything besides friendship. */ + LK#NLR_NOWTMORE
  ++ @1074 /* Erm, perhaps now would be a good time to remind you that we are, in fact, being watched. By elves. Lots of elves. */ + LK#NLR_AHELFAT
END

END

CHAIN LK#NINDJ LK#NLR_NO2CHANZ
  @1108 /* Oh, I don't think there's any danger of that... */
  = @1109 /* (An insouciant half-smile quirks Ninde's pink mouth, and she runs her hand down across your chest, and - to your surprise - a good deal lower. You hear a few quiet gasps from behind you and imagine the elves there are making even more of a show of averting their eyes.) */
  == MAZZYJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @1110 /* (Sigh) Arvoreen give me strength. */
  == MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @1111 /* Why does the elf queen pull such a face? Minsc sees nothing that- oh. Oh. Cover your eyes, Boo! */
  == EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @1112 /* Must I be forced to bear witness to this grotesque little freak show? You'd think we had nothing better to do than watch the pair of you drool all over each other's malformed bodies. (Bodies...Ninde. Ninde's body. Hmmm.) */
  == JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @1113 /* Ninde! This is neither the time nor the place for adolescent canoodling. Really, you'd think you were both seventeen. */
  == KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @1114 /* Aye, she's a likely lass, even after all this soul-switchin' jiggery! */
  == IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @1115 /* Ew, <CHARNAME>! Get a room. Preferably one in Thesk. Just far, far away, please! */
END
  ++ @1116 /* Ninde! */ EXTERN LK#NINDJ LK#NLR_NOUDON
  ++ @1117 /* (Grin) Well...er, that answers my question. */ EXTERN LK#NINDJ LK#NLR_QUESANS
  ++ @1118 /* I'd appreciate it if you weren't so...so inappropriate! */ EXTERN LK#NINDJ LK#NLR_SOINAPP

APPEND LK#NINDJ

IF ~~ LK#NLR_SELINTE
  SAY @1119 /* Oh, you need not have such little faith. I rather think the time for faith has come. */
  = @1120 /* Anyway, we had best be moving on. But before we do, one last thing; I want to thank you. You have done more for me than I dared dream you might. That day you blazed into Bodhi's lair and I was unforgivably rude to you was clearly a fateful one. */
  IF ~~ + LK#NLR_end
END

IF ~~ LK#NLR_CONKEES
  SAY @1121 /* (Ninde laughs then breaks from your embrace, looking back up at you and running her finger across the line of your lips.) */
  = @1122 /* Goodness, it's modesty. I haven't felt that in years. How strange. I think we had best be moving on, <CHARNAME>. But before we do, one last thing; I want to thank you. You have done more for me than I dared dream you might. That day you blazed into Bodhi's lair and I was unforgivably rude to you was clearly a fateful one. */
  IF ~~ + LK#NLR_end
END

IF ~~ LK#NLR_WATIHOP
  SAY @1123 /* Perhaps the time for hope has come. I think we had best be moving on, <CHARNAME>. But before we do, one last thing; I want to thank you. You have done more for me than I dared dream you might. That day you blazed into Bodhi's lair and I was unforgivably rude to you was clearly a fateful one. */
  IF ~~ + LK#NLR_end
END

IF ~~ LK#NLR_RADNOOW
  SAY @1124 /* You adored me? I'm surprised you could stand me. We...we had best be moving on <CHARNAME>. But before we do, one last thing; I want to thank you. You have done more for me than I dared dream you might. That day you blazed into Bodhi's lair and I was unforgivably rude to you was clearly a fateful one. */
  IF ~~ + LK#NLR_end
END


IF ~~ LK#NLR_NUFFOVER
  SAY @1125 /* Then begin to make your judgment today. We should be moving on, <CHARNAME>. But before we do, one last thing; I want to thank you. You have done more for me than I dared dream you might. That day you blazed into Bodhi's lair and I was unforgivably rude to you was clearly a fateful one. */
  IF ~~ + LK#NLR_end
END

IF ~~ LK#NLR_LUVS4UU
  SAY @1126 /* I wish I could respond I kind, but I can't...not yet. Who knows, perhaps it will come. We ought to move on now, <CHARNAME>. But before we do, one last thing; I want to thank you. You have done more for me than I dared dream you might. That day you blazed into Bodhi's lair and I was unforgivably rude to you was clearly a fateful one. */
  IF ~~ + LK#NLR_end
END

IF ~~ LK#NLR_FOWLASUW
  SAY @1127 /* I have been foul to you. I only hope you will give me the chance to correct my behavior. We ought to move on now, <CHARNAME>. But before we do, one last thing; I want to thank you. You have done more for me than I dared dream you might. That day you blazed into Bodhi's lair and I was unforgivably rude to you was clearly a fateful one. */
  IF ~~ + LK#NLR_end
END

IF ~~ LK#NLR_MATESET
  SAY @1128 /* Hmm, perhaps we should. But, before we do--I have one last thing to say to you. I want to thank you, <CHARNAME>. You have done more for me than I dared dream you might. That day you blazed into Bodhi's lair and I was unforgivably rude to you was clearly a fateful one. */
  IF ~~ + LK#NLR_end
END


IF ~~ LK#NLR_SHTILLPER
  SAY @1129 /* Then again you show wisdom. It is good we should be our own, but neither should we forget those who made us who we are...and those who made great sacrifices for us. I want to thank you, <CHARNAME>. You have done more for me than I dared dream you might. That day you blazed into Bodhi's lair and I was unforgivably rude to you was clearly a fateful one. */
  = @1130 /* And now you have proved to me your courage, your passion...your potential. <CHARNAME>, you will make the realms quake, and hearts burn like young stars. And I give my life to yours, to you whose light is fiercer than any I have known. */
  = @1131 /* So come, my love. Let us away. */
  IF ~ReputationLT(Player1,10)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100a")~ EXIT
  IF ~ReputationGT(Player1,9)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100b")~ EXIT
END

IF ~~ LK#NLR_DAESTRES
  SAY @1132 /* You have always done what you have had to do. What criticism can be levelled at a man who rises to each challenge? He would be proud, for it is an overwhelming tide you swim against, and you have not yet faltered. */
  = @1133 /* Ahh, <CHARNAME>, we will have time to speak of this further. But, before we do--I have one last thing to say to you. I want to thank you, <CHARNAME>. You have done more for me than I dared dream you might. That day you blazed into Bodhi's lair and I was unforgivably rude to you was clearly a fateful one. */
  IF ~~ + LK#NLR_end
END

IF ~~ LK#NLR_SHURHED
  SAY @1134 /* (Ninde smiles, and fixes you with a cheeky pout.) You think he'd approve of me? */
  = @1133 /* Ahh, <CHARNAME>, we will have time to speak of this further. But, before we do--I have one last thing to say to you. I want to thank you, <CHARNAME>. You have done more for me than I dared dream you might. That day you blazed into Bodhi's lair and I was unforgivably rude to you was clearly a fateful one. */
  IF ~~ + LK#NLR_end
END

IF ~~ LK#NLR_GUIDZIN
  SAY @1135 /* (Ninde smiles kindly up at you, stroking the side of your face.) Do not forget to be your own man, <CHARNAME>. Sooner or later you may have to stray from your ideal if you are to survive. But it is right we remember those who have made great sacrifices for us. As you have done for me. */
  = @1130 /* And now you have proved to me your courage, your passion...your potential. <CHARNAME>, you will make the realms quake, and hearts burn like young stars. And I give my life to yours, to you whose light is fiercer than any I have known. */
  = @1131 /* So come, my love. Let us away. */
  IF ~ReputationLT(Player1,10)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100a")~ EXIT
  IF ~ReputationGT(Player1,9)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100b")~ EXIT
END

IF ~~ LK#NLR_ANFINFUN
  SAY @1136 /* Such fierce independence is most admirable...but we should not forget those who have made great sacrifices for us. . As you have done for me. */
  = @1130 /* And now you have proved to me your courage, your passion...your potential. <CHARNAME>, you will make the realms quake, and hearts burn like young stars. And I give my life to yours, to you whose light is fiercer than any I have known. */
  = @1131 /* So come, my love. Let us away. */
  IF ~ReputationLT(Player1,10)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100a")~ EXIT
  IF ~ReputationGT(Player1,9)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100b")~ EXIT
END

IF ~~ LK#NLR_NOWTMORE
  SAY @1137 /* One good thing about having lived for as long as I have...you grow used to disappointment. I suppose at--at least I did not yet love you. I will still never forgot the sacrifice you have made for me. */
  = @1130 /* And now you have proved to me your courage, your passion...your potential. <CHARNAME>, you will make the realms quake, and hearts burn like young stars. And I give my life to yours, to you whose light is fiercer than any I have known. */
  = @1138 /* So come, my friend. Let us away. */
  IF ~ReputationLT(Player1,10)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100a")~ EXIT
  IF ~ReputationGT(Player1,9)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100b")~ EXIT
END

IF ~~ LK#NLR_NOUDON
  SAY @1139 /* (Ninde giggles and withdraws her hand.) You are right, this is perhaps best left for a more intimate setting. But before we go anywhere--I have one last thing I wish to say to you. */
  = @1140 /* I want to thank you. You have done more for me than I dared dream you might. That day you blazed into Bodhi's lair and I was unforgivably rude to you was clearly a fateful one. */
  IF ~~ + LK#NLR_end
END

IF ~~ LK#NLR_QUESANS
  SAY @1141 /* (Ninde smiles and withdraws her hand.) Yes, well...you may see me paying a little more attention to societal norms from now on. I did attend finishing school, after all. But sometimes I just can't resist. I have so much to say to you. We should find a more intimate setting. But before we go anywhere--I have one last thing I wish to say to you. */
  = @1140 /* I want to thank you. You have done more for me than I dared dream you might. That day you blazed into Bodhi's lair and I was unforgivably rude to you was clearly a fateful one. */
  IF ~~ + LK#NLR_end
END

IF ~~ LK#NLR_SOINAPP
  SAY @1142 /* (Ninde giggles and swiftly withdraws her hand, placing it on her heart as though taking an oath.) Then I promise that until we proceed to a more intimate setting, I'll be the very paragon of virtue. Finishing school girl's honour. But before we go anywhere...I have one last thing I wish to say to you. */
  = @1140 /* I want to thank you. You have done more for me than I dared dream you might. That day you blazed into Bodhi's lair and I was unforgivably rude to you was clearly a fateful one. */
  IF ~~ + LK#NLR_end
END

IF ~~ LK#NLR_end
  SAY @1130 /* And now you have proved to me your courage, your passion...your potential. <CHARNAME>, you will make the realms quake, and hearts burn like young stars. And I give my life to yours, to you whose light is fiercer than any I have known. */
  IF ~ReputationLT(Player1,10)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100a")~ EXIT
  IF ~ReputationGT(Player1,9)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100b")~ EXIT
END


END

// Post-restoration, selfish
// -------------------------
CHAIN IF ~Global("LK#NindeRestored","GLOBAL",1) Global("LK#NindeSelfish","GLOBAL",1)~ THEN LK#NINDJ LK#NLRS
  @1143 /* (A dazzling white light lifts away from her prone form. Her skin seems to shed a new fragile glow as the ritual draws to a close, and the elf clutches desperately at her throat and robes, shaking, as though something within her would still resist the change. Eventually, she is still, and you could hear a dry leaf fall as the chamber waits for her to regain consciousness.) */
  = @1144 /* ...Shar... */
  == SUELLE2 @1145 /* She wakes. */
END
  ++ @1146 /* And none too soon. I was starting to think you'd killed my mage. */ EXTERN LK#NINDJ LK#NLRS_MYMAGE
  ++ @1147 /* She might be okay, but by Talos, I'm not! Your little hokum has given me a jarring headache. */ EXTERN LK#NINDJ LK#NLRS_JARRIN
  ++ @1148 /* If you say so. I suppose she may need some time to recuperate, or some such--your people ought to take her, for now. */ EXTERN SUELLE2 LK#NLRS_FURNOW

APPEND LK#NINDJ

IF ~~ LK#NLRS_MYMAGE
  SAY @1149 /* Don't.... don't worry. I bounce back. My head aches... */
  ++ @1150 /* Moan to someone else, Ninde. I'm not interested. */ + LK#NLRS_MOANTW
  ++ @1151 /* As long as your casting ability isn't damaged. */ + LK#NLRS_CASTABI
  ++ @1152 /* I'm not exactly feeling at my best, either. */ + LK#NLRS_EIVAR
  ++ @1153 /* Women and their excuses. */ + LK#NLRS_HAEXCUS
END

IF ~~ LK#NLRS_JARRIN
  SAY @1154 /* (Ninde raises herself slightly, and gives you a tired smile.) You...you are a selfish man, <CHARNAME>. */
  ++ @1155 /* Selfish? I hardly think you can level such a criticism at me after what I have done for you. */ + LK#NLRS_FEROO
  ++ @1156 /* Perhaps I am. Your point? I have learnt the hard way never to give without expecting something in return. */ + LK#NLRS_FEROO
  ++ @1157 /* No more so than you. */ + LK#NLRS_MARENU
  ++ @1158 /* I have no time for this. I just--I just want to finally rest. */ + LK#NLRS_FINARES
END

END

CHAIN SUELLE2 LK#NLRS_FURNOW
  @1159 /* As you wish, <CHARNAME>, though I imagine she will have much to say to you. */
  == LK#NINDJ @1160 /* No--I am...I am not so very weak. Please <CHARNAME>. I...I must speak with you. */
END
  ++ @1161 /* Very well. Speak with me. */ EXTERN LK#NINDJ LK#NLRS_SPAKEIM
  ++ @1162 /* No, Ninde. I don't want to speak to you. I just wish to rest, now. */ EXTERN LK#NINDJ LK#NLRS_FINARES
  ++ @1163 /* For the last time, woman, I'm not interested! I merely played my part in your restoration so I would no longer have to be audience to your whingeing. */ EXTERN LK#NINDJ LK#NLRS_WHINGYS

APPEND LK#NINDJ

IF ~~ LK#NLRS_MOANTW
  SAY @1164 /* Oh. I--I see. Well, far be it from me to over-estimate you. We should go...I too am tired of this. Tired of everything. But first I wish to tell you that I am thankful to you. You are selfish, but I understand selfishness, and I am thankful anyway. */
  IF ~ReputationLT(Player1,10)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100a")~ EXIT
  IF ~ReputationGT(Player1,9)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100b")~ EXIT
END

IF ~~ LK#NLRS_CASTABI
  SAY @1154 /* (Ninde raises herself slightly, and gives you a tired smile.) You...you are a selfish man, <CHARNAME>. */
  ++ @1155 /* Selfish? I hardly think you can level such a criticism at me after what I have done for you. */ + LK#NLRS_FEROO
  ++ @1165 /* You're my mage. I need you to be at your best, both for my safety and your own. What's selfish about that? */ + LK#NLRS_BOOATZ
  ++ @1156 /* Perhaps I am. Your point? I have learnt the hard way never to give without expecting something in return. */ + LK#NLRS_FEROO
  ++ @1157 /* No more so than you. */ + LK#NLRS_MARENU
  ++ @1158 /* I have no time for this. I just--I just want to finally rest. */ + LK#NLRS_FINARES
END

IF ~~ LK#NLRS_EIVAR
  SAY @1166 /* No, I...I should suspect you are not, though if you are expecting sympathy, I'm afraid you may be disappointed. I feel warmer now, yet colder. Colder to you. */
  = @1167 /* But worry not, I suppose I am thankful. Come to me later and you may take what you want from me. */
  IF ~ReputationLT(Player1,10)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100a")~ EXIT
  IF ~ReputationGT(Player1,9)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100b")~ EXIT
END

IF ~~ LK#NLRS_HAEXCUS
  SAY @1168 /* 'Tis no excuse. And remember that I am thankful to you. */
  = @1169 /* Come to me later and you may take what you want from me. */
  IF ~ReputationLT(Player1,10)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100a")~ EXIT
  IF ~ReputationGT(Player1,9)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100b")~ EXIT
END

IF ~~ LK#NLRS_FEROO
  SAY @1170 /* It was not criticism, <CHARNAME>. Selfishness--I understand selfishness, and I am thankful to you regardless of your own. */
  = @1169 /* Come to me later and you may take what you want from me. */
  IF ~ReputationLT(Player1,10)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100a")~ EXIT
  IF ~ReputationGT(Player1,9)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100b")~ EXIT
END

IF ~~ LK#NLRS_MARENU
  SAY @1171 /* I have been very selfish in my time, it is true, but it would be selfish of me now if I was not thankful to you. So I am. */
  = @1169 /* Come to me later and you may take what you want from me. */
  IF ~ReputationLT(Player1,10)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100a")~ EXIT
  IF ~ReputationGT(Player1,9)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100b")~ EXIT
END

IF ~~ LK#NLRS_FINARES
  SAY @1172 /* Very well, it is more than understandable. Come to me later, if you desire, and you may take what you want from me. */
  IF ~ReputationLT(Player1,10)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100a")~ EXIT
  IF ~ReputationGT(Player1,9)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100b")~ EXIT
END

IF ~~ LK#NLRS_SPAKEIM
  SAY @1173 /* I want to thank you. I am thankful. I am, but now I wish only for sleep, and you undoubtedly feel the same. There is so little I want to say to you, but so much I want to do. You have returned the world to me, yet denied me it. But no more words. */
  = @1169 /* Come to me later and you may take what you want from me. */
  IF ~ReputationLT(Player1,10)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100a")~ EXIT
  IF ~ReputationGT(Player1,9)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100b")~ EXIT
END

IF ~~ LK#NLRS_WHINGYS
  SAY @1174 /* Very well, it is more than understandable. Come to me later, if you desire, and you may take what you want from me. And I shall try not to whine then. (Ninde's smile is bitter-sweet, now.) */
  IF ~ReputationLT(Player1,10)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100a")~ EXIT
  IF ~ReputationGT(Player1,9)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100b")~ EXIT
END

IF ~~ LK#NLRS_BOOATZ
  SAY @1175 /* And no lasting harm has been done to me. Quite the opposite, the world has been given to me. It is a shame you hope to keep me caged within it. But no more words. Just rest. */
  = @1169 /* Come to me later and you may take what you want from me. */
  IF ~ReputationLT(Player1,10)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100a")~ EXIT
  IF ~ReputationGT(Player1,9)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100b")~ EXIT
END
END


/* ------------------- *
 *  Ninde Friendtalks  *
 * ------------------- */

APPEND LK#NINDJ

// 1. Aran and the Shadow Thieves
// ------------------------------
IF ~Global("LK#NindeFriendTalks","GLOBAL",1)~ LK#NF1_intro
  SAY @0 /* This is certainly a rare treat. I suppose this is what they call 'fresh sea air'? Here I am gadding about with the great unwashed while Aran Linvail is fed seedless grapes by buxom wenches. And I have sand in my undergarments. */
  ++ @1176 /* Sand in your undergarments? A little too much information, perhaps. */ DO ~RealSetGlobalTimer("LK#NindeFriendTalksTimer","GLOBAL",2700) IncrementGlobal("LK#NindeFriendTalks","GLOBAL",1)~ + LK#NF1_allowme
  ++ @2 /* Oh Ninde, it is not so bad! The water is clear, the weather fine, and the locals most accommodating...if a little eccentric here and there. */ DO ~RealSetGlobalTimer("LK#NindeFriendTalksTimer","GLOBAL",2700) IncrementGlobal("LK#NindeFriendTalks","GLOBAL",1)~ + LK#NF1_notsobad
  ++ @3 /* Yes, well I'm not exactly enjoying my time on this dirt-pile island either, but it is a necessary means to an end. */ DO ~RealSetGlobalTimer("LK#NindeFriendTalksTimer","GLOBAL",2700) IncrementGlobal("LK#NindeFriendTalks","GLOBAL",1)~ + LK#NF1_idontlike
  ++ @4 /* I can already see that your accompaniment will become a chore. I only hope you're as good at spellcasting as you are at complaining. */ DO ~RealSetGlobalTimer("LK#NindeFriendTalksTimer","GLOBAL",2700) IncrementGlobal("LK#NindeFriendTalks","GLOBAL",1)~ + LK#NF1_moaner
END

IF ~~ LK#NF1_allowme
  SAY @1177 /* Don't complain, Bhaalspawn. */
  IF ~~ + LK#NF1_aran
END

IF ~~ LK#NF1_notsobad
  SAY @6 /* You, Bhaalspawn, are the kind of person who would find having your leg amputated scintillating fun if you are enjoying this. */
  IF ~~ + LK#NF1_aran
END

IF ~~ LK#NF1_idontlike
  SAY @7 /* Indeed. Just look at these slack-jawed seamen! Even their fleas have fleas! */
  IF ~~ + LK#NF1_aran
END

IF ~~ LK#NF1_moaner
  SAY @8 /* Not allowing your compatriots a certain degree of self-expression will simply breed discontent. In short, kitten, I shall moan all I like! */
  IF ~~ + LK#NF1_aran
END

IF ~~ LK#NF1_aran
  SAY @9 /* It's just...argh! Aran Linvail! Why must we serve that up-start backstabbing plebeian? He infuriates me! With his pretensions of nobility and shiny green trousers. */
  ++ @10 /* I sense there's a little enmity between you. */ + LK#NF1_enmity
  ++ @11 /* I noticed those trousers too. They really are quite distracting when one is attempting to engage in serious dialogue with him. */ + LK#NF1_trousers
  ++ @12 /* Backstabbing? Care to elaborate? */ + LK#NF1_end
  ++ @13 /* Aran Linvail is a likeable rogue, who never did a thing to harm us. */ + LK#NF1_ilikehim
  ++ @14 /* I'm not fond of him either, but I will do whatever I must to find Imoen. */ + LK#NF1_notfond
  ++ @1178 /* I thought you were supposed to be intelligent, can't you grasp this simple command? Shut your mouth. */ + LK#NF1_shutmouth
END

IF ~~ LK#NF1_enmity
  SAY @1179 /* How very perceptive of you, <CHARNAME>. No--No, I have never been a friend to the Shadow Thieves. The organisation as a whole. */
  IF ~~ + LK#NF1_hatethem
END

IF ~~ LK#NF1_trousers
  SAY @1180 /* It takes a certain degree of class to carry trousers of that magnitude successfully, a class that, among other things, Linvail is obviously lacking in. As are the Shadow Thieves in general. But I suppose that's what you get if you bundle every Amnish street rat with halitosis and his own set of burglary tools into some supposed organisation. */
  ++ @18 /* There's some kind of personal reason you don't like them, then? The Shadow Thieves, not the trousers, that is. */ + LK#NF1_end
  ++ @19 /* The Shadow Thieves do not really do any significant harm. */ + LK#NF1_end
  ++ @20 /* I hate the lawless vagabonds, too, but I had to do what I had to do, Ninde. */ + LK#NF1_end
END

IF ~~ LK#NF1_ilikehim
  SAY @21 /* Then that is because you are an infinitely poor judge of character. The only thing worse than being an uneducated Amnish street rat with halitosis and your own set of burglary tools is being the leader of a pack of Amnish street rats with halitosis and their own sets of burglary tools. */
  ++ @18 /* There's some kind of personal reason you don't like them, then? The Shadow Thieves, not the trousers, that is. */ + LK#NF1_end
  ++ @19 /* The Shadow Thieves do not really do any significant harm. */ + LK#NF1_end
  ++ @20 /* I hate the lawless vagabonds, too, but I had to do what I had to do, Ninde. */ + LK#NF1_end
END

IF ~~ LK#NF1_notfond
  SAY @22 /* Clearly, Bhaalspawn, you are an excellent judge of character...well, if we excuse some of our current companions. But no, I have never been a friend to the Shadow Thieves. The organisation as a whole. */
  IF ~~ + LK#NF1_hatethem
END

IF ~~ LK#NF1_hatethem
  SAY @23 /* They exert far too much influence over everything and generally, in the past, that hasn't been particularly conducive to my getting along in life. */
  ++ @24 /* There's some kind of personal reason you don't like them, then? */ + LK#NF1_end
  ++ @19 /* The Shadow Thieves do not really do any significant harm. */ + LK#NF1_end
  ++ @20 /* I hate the lawless vagabonds, too, but I had to do what I had to do, Ninde. */ + LK#NF1_end
  ++ @25 /* I doubt a vampire coven in Athkatla's crypts was particularly conducive to 'people getting along in life' either, but that didn't seem to bother you at all. */ + LK#NF1_vampcoven
END

IF ~~ LK#NF1_end
  SAY @1181 /* They stick their daggers into situations which do not concern them and...and that has cost me...friends, in the past. Although generally speaking I am not one to hold grudges, neither do I forget. Enough, Bhaalspawn. There are far too many things I would rather be doing then dwelling upon this subject. Let's find this Imoen of yours, mayhaps she'll prove better conversation then the rest of this ragtag band. In fact, my sanity rather depends on it. */
  IF ~~ EXIT
END

IF ~~ LK#NF1_shutmouth
  SAY @27 /* I don't know why I bothered making conversation with such a grotesque creature such as you in the first place, Bhaalspawn. In terms of pleasure, 'tis akin to eating one's own head. */
  IF ~~ EXIT
END

IF ~~ LK#NF1_vampcoven
  SAY @1182 /* You're undoubtedly correct. But vampires have always been my friends, as opposed to killing them...Shadow Thieves stick their daggers into situations that don't concern them, and although generally speaking I am not one to hold grudges, neither do I forget. Enough, Bhaalspawn. There are far too many things I would rather be doing then dwelling upon this subject. Let's find this Imoen of yours, mayhaps she'll prove better conversation then the rest of this ragtag band. In fact, my sanity rather depends on it. */
  IF ~~ EXIT
END


// 2. Soullessness #1
// ------------------
IF ~Global("LK#NindeFriendTalks","GLOBAL",3)~ LK#NF2_intro
  SAY @29 /* I suppose I had best tell you a little more about my...'affliction'. */
  ++ @30 /* Please do. */ DO ~RealSetGlobalTimer("LK#NindeFriendTalksTimer","GLOBAL",2700) IncrementGlobal("LK#NindeFriendTalks","GLOBAL",1)~ + LK#NF2_main1
  ++ @31 /* Ooh, are you going to tell me all about your rashes in, ah, embarrassing places? (smirk) */ DO ~RealSetGlobalTimer("LK#NindeFriendTalksTimer","GLOBAL",2700) IncrementGlobal("LK#NindeFriendTalks","GLOBAL",1)~ + LK#NF2_rashes
  ++ @32 /* I think I understand, for the most part. You don't have a soul, do you, Ninde? Or not the one you were born with, at any rate. */ DO ~RealSetGlobalTimer("LK#NindeFriendTalksTimer","GLOBAL",2700) IncrementGlobal("LK#NindeFriendTalks","GLOBAL",1)~ + LK#NF2_main1
  ++ @33 /* To be frank, I'm really not interested. */ DO ~RealSetGlobalTimer("LK#NindeFriendTalksTimer","GLOBAL",2700) IncrementGlobal("LK#NindeFriendTalks","GLOBAL",1)~ + LK#NF2_notinterested
END

IF ~~ LK#NF2_main1
  SAY @1183 /* You must think of me like...a rag doll. Yes, a child's rag doll, and my soul as the thread that is holding me together. Holding my stuffing in, my limbs to my body. Now imagine if the thread was to be picked out. */
  = @35 /* I would fall to pieces, disintegrate, literally--and soon I would no longer be a rag doll, just a heap of lint and string. You know what I'm getting at, pudding? */
  ++ @36 /* Not really, no. Could you abandon the slightly disturbing metaphor for a moment? */ + LK#NF2_main2
  ++ @37 /* And is there no way it can be reversed? */ + LK#NF2_main2
  ++ @38 /* Wonderful. You're not going to drop dead in the middle of a battle, are you? That really would be something of an inconvenience. */ + LK#NF2_main2
  ++ @39 /* And I suppose the same thing is going to happen to me. Fabulous. */ + LK#NF2_main2
END

IF ~~ LK#NF2_rashes
  SAY @40 /* Oh <CHARNAME>, please stop being so childish just for a moment. I seem to be a bad influence on you, the number of innuendoes and silly double entendres you've been spouting lately. I may have to watch my tongue around you in future, lest you pick up more of my bad habits. *Smile* Anyway...will you listen or not? */
  ++ @41 /* Certainly. */ + LK#NF2_main1
  ++ @42 /* I don't really have time to chat right now, Ninde. */ + LK#NF2_notinterested
END

IF ~~ LK#NF2_notinterested
  SAY @43 /* You certainly know how to make a girl feel wanted, <CHARNAME>. Hmph. I thought considering your present state you might find my own...similar predicament of interest, but apparently not. I shan't bother you again, Bhaalspawn. */
  IF ~~ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NF2_main2
  SAY @1184 /* Don't be so tiresome, godchild. My--my immortal elven soul was removed, and as a result, I am dying. Slowly and painlessly, but nonetheless...perishing. I cannot say whether the same will happen to you, dear. But, as you are no doubt noticing, a soul is the kind of thing you don't really know you have until you haven't anymore. */
  = @45 /* A void blooms inside you like some kind of ghastly flower. At first you dismiss it. The pain is akin to what you might feel if you were separated from a lover; an aching. A slight physical pang of wanting. It grows until it no longer feels alien, and you begin to fear you have lost all your love, the very ability to love or be loved; then everything goes cold. */
  = @46 /* You become weaker in mind and body, until eventually you are more void than...person. You are left a mere husk, your instinct to live, to survive, all that remains of your former self. You can live without a soul. But not for long. */
  = @47 /* And despite all the research I have conducted, I have learned of no cure, no rescue from my fate but the restoration of what was lost. In other words, we're rather without hope. Would you like a biscuit? They're rather delicious. */
  ++ @48 /* You sound a little like Irenicus, Ninde. */ + LK#NF2_irenicus
  ++ @49 /* After hearing your words I almost understand why Irenicus will go to such lengths to attain one. I would not wish the fate you have described on anyone. */ + LK#NF2_desperate
  ++ @50 /* Do you think your character altered at all after you lost your soul? */ + LK#NF2_changes
  ++ @51 /* How did you lose your soul? Your daddy didn't happen to be a ravening lord of murder, did he, because everyone seems to want a piece of that kind of soul. */ + LK#NF2_howlost
  ++ @52 /* ...Hey Ninde, you always know how to cheer this Bhaalspawn up. */ + LK#NF2_cheerup
  ++ @1185 /* Biscuits?! Who could eat biscuits at a time like this!? We're dying, Ninde! */ + LK#NF2_biskeetzzzz
END

IF ~~ LK#NF2_irenicus
  SAY @54 /* Your arch nemesis and I have a suprising amount in common. (grin) Except, of course, I am vastly more desirable. And you must never accept biscuits from Irenicus, no matter how earnestly he appears to offer them--for they will most likely be malevolent, soul-draining biscuits. Mine, however, are perfectly lovely. Here. Perhaps...perhaps I'll tell you how I lost my soul sometime. I'm feeling a little dejected now, however. */
  IF ~~ EXIT
END

IF ~~ LK#NF2_desperate
  SAY @55 /* Don't be silly, <CHARNAME>, there are plenty in this world who deserve such a fate, and worse...and I'm still not sure whether or not I am among them. Enough talk for today. Truth be told I'm feeling rather forlorn. Perhaps I'll tell you how...how I lost my soul, soon enough. */
  IF ~~ EXIT
END

IF ~~ LK#NF2_changes
  SAY @56 /* Yes. I used to be a better person. Don't look at me like that, you know I'm not exactly a saint. What, you think I was born this cruel and cynical? Perhaps...perhaps I'll tell you how I lost it sooner or later. I'm feeling a little forlorn now. */
  IF ~~ EXIT
END

IF ~~ LK#NF2_howlost
  SAY @57 /* Unfortunately, my daddy was a moongazing elf who couldn't string his bow quick enough to save himself from a little Drow raid. A story for another time, perhaps. I'm feeling a little forlorn. */
  IF ~~ EXIT
END

IF ~~ LK#NF2_cheerup
  SAY @58 /* My dear Bhaalspawn, if my aim was to cheer you up you'd be on the floor with your britches round your ankles. I can't think of a better way to put a smile on a godchild's face then a little bit of...anyway. Perhaps I'll tell you when you're older. And maybe...maybe I'll tell you how I lost my soul too. The truth be told, I'm feeling a little dejected at the moment. */
  IF ~~ EXIT
END

IF ~~ LK#NF2_biskeetzzzz
  SAY @1186 /* Oh, do try not to be quite so melodramatic! We have plenty of time, and you may yet wrest your soul from Irenicus' greasy little mittens. Perhaps I'll tell you how I lost my own soul some day, but the truth is I'm currently feeling more then a little forlorn. */
  IF ~~ EXIT
END

// 3.
// --
IF ~Global("LK#NindeFriendTalks","GLOBAL",5)~ LK#NF3_intro
  SAY @1187 /* <CHARNAME>, you operate in a sphere perhaps more traditionally dominated by men, and what you do... you do it well. But tell me, do you find it hard? You can't exactly wander round bragging about the intimidating size of your loins and indulging in manly backslaps as your companions might. */
	++ @1188 /* It's awful! I feel so left out. Men are such alien creatures to me. */ DO ~RealSetGlobalTimer("LK#NindeFriendTalksTimer","GLOBAL",2700) IncrementGlobal("LK#NindeFriendTalks","GLOBAL",1)~ + LK#NF3_SUCHALZ
	++ @1189 /* And why not? Anything a man can do, I can do better! */ DO ~RealSetGlobalTimer("LK#NindeFriendTalksTimer","GLOBAL",2700) IncrementGlobal("LK#NindeFriendTalks","GLOBAL",1)~ + LK#NF3_KANDOO
	++ @1190 /* I have never felt the need too. I have other ways of earning the respect of my companions. */ DO ~RealSetGlobalTimer("LK#NindeFriendTalksTimer","GLOBAL",2700) IncrementGlobal("LK#NindeFriendTalks","GLOBAL",1)~ + LK#NF3_RESCOMP
	++ @1191 /* It's not difficult. I may be young, Ninde, but believe me... I know how to relate to men as well as you do. */ DO ~RealSetGlobalTimer("LK#NindeFriendTalksTimer","GLOBAL",2700) IncrementGlobal("LK#NindeFriendTalks","GLOBAL",1)~ + LK#NF3_RELAWEL
END

IF ~~ LK#NF3_SUCHALZ
 SAY @1192 /* I'd imagine so, as mollycoddled as you undoubtedly were in your formative years. Weren't there any ruddy young guardsmen about for you to roll in the haystacks with? A slim-hipped and weak-moralled young monk to indulge in desperate kisses behind bookcases with? */
	++ @1193 /* Yes, there were a few men... but none of consequence. Still, it is not as though romantic relations with men is the only way to form an understanding of them. */ + LK#NF3_ROMONL
	++ @1194 /* Alack, no. I'm as pure as the Damaran snow. */ + LK#NF3_PRUEDAM
	++ @1195 /* After I left Candlekeep I took a lover, but it didn't really imbue me with any greater understanding of men. If anything, it confounded me more! */ + LK#NF3_CONFOU
	++ @1196 /* You seem to think that physical intimacy with men is the best way to acquaint yourself with their ways... but I disagree. */ + LK#NF3_ROMONL
	++ @1197 /* Erm, Ninde... I think you misunderstand me slightly. You see, I'm not physically interested in men. I much prefer ladies. */ + LK#NF3_SAPPHIK
	++ @1198 /* Gracious, no! What sort of slattern do you take me for? */ + LK#NF3_TAKFURS
END

IF ~~ LK#NF3_KANDOO
 SAY @1199 /* Except, of course, being a man. It would be fatuous to suggest you could do that better. But your contrived disdain for the talents of men? Surely you have found them worthy companions in the past? */
	++ @1200 /* They have been worthy companions, but my bitterest opponents have been men, as well. First Sarevok, now Irenicus. The ills they have inflicted upon me have probably soured my attitude somewhat. */ + LK#NF3_SAREVOK
	++ @1201 /* You needn't take me so seriously, Ninde! I was joking... of course I know how worthy men can be. In many ways. */ + LK#NF3_MENNYWA
	++ @1202 /* Yes, I suppose I have. Still, that doesn't change the fact that women are intrinsically superior to men! */ + LK#NF3_INTRSUP
	++ @1203 /* I have, I suppose. Perhaps it is a little naive of me to say women are more worthy. */ + LK#NF3_MORWORT
END

IF ~~ LK#NF3_RESCOMP
 SAY @1204 /* You do? I'm yet to be on the receiving end of it. Does it involve little presents? Honestly, I'm intrigued to know how you go about lashing this motley crew to your cause. */
	++ @1205 /* I learnt from the best... Gorion always secured my love and loyalty through kindness and benevolent instruction. */ + LK#NF3_BENINST
	++ @1206 /* I've never made a conscious effort to control my party. My companions have always been my friends, and our cause is the same. There is no reason for dissent. */ + LK#NF3_DISSFR
	++ @1207 /* I don't bother. You all joined my party of your own volition, if you don't like what we do, you are equally free to leave. */ + LK#NF3_DISSFR
	++ @1208 /* It has been proven time and time again that the best way to sustain control is to ensure your underlings fear you. It is the way of all great rulers. */ + LK#NF3_RUAAHZ
	++ @1209 /* A little stick, a little carrot. */ + LK#NF3_DISSFR
END

IF ~~ LK#NF3_RELAWEL
 SAY @1210 /* Trust me, darling, you know as much about men as a haddock in a nightcap. */
IF ~~ + LK#NF3_CONFOU2
END

IF ~~ LK#NF3_ROMONL
 SAY @1211 /* You are right, it's not the only way, but it's still a highly effective one. I suppose you couldn't have employed it when it mattered though. */
	++ @1212 /* I happen to think that using your body in that way rather cheapens an act that should be... should be about love. The way you talk about it makes it sound like one of your spells. */ + LK#NF3_SDELLZ
	++ @1213 /* When it mattered? */ + LK#NF3_HISATTS
	++ @1214 /* First you suggest that I don't understand men, now that I'm not appealing to them? */ + LK#NF3_NAWAPPS
END

IF ~~ LK#NF3_PRUEDAM
 SAY @1215 /* Poor damsel. If it helps at all, inexpert teenage fumblings are most anti-climactic. But if I can't ask you about your lovers, there are other parts of your history we might talk about, hmm? */
	++ @1216 /* Such as? */ + LK#NF3_SUKKAS
	++ @1217 /* Some of it is painful to speak about, but I don't mind giving you a fair overview of my past. */ + LK#NF3_SUKKAS
	++ @1218 /* Why would I want to talk about any of my history with you? You'll just make lots of disparaging comments, then get bored and start filing your nails mid-conversation. */ + LK#NF3_MIDCONF
END

IF ~~ LK#NF3_CONFOU
 SAY @1219 /* Trust me, darling, as you know as much about men as a haddock in a nightcap, and your previous liaisons can't have helped one jot. */
IF ~~ + LK#NF3_CONFOU2
END

IF ~~ LK#NF3_CONFOU2
 SAY @1220 /* It took me until approximately Ultruak last year to feel I had any knowledge at all of them, and it will take you just as long to have any semblance of a clue about them, as my limited knowledge of your history attests. */
	++ @1221 /* What do you mean, "as my history attests?" */ + LK#NF3_HISATTS
	++ @1222 /* Tell me what it is in my history that has so convinced you that I don't understand men? */ + LK#NF3_HISATTS
	++ @1223 /* I'll concede that I've had poor judgement with regards to men in the past. */ + LK#NF3_CONCPA
	++ @1224 /* If you know so much about men, how is it you ended up the miserable servant of one? An undead one, at that. */ + LK#NF3_ASAT
END

IF ~~ LK#NF3_SAPPHIK
 SAY @1225 /* Well... that explains a lot. How very interesting. I have a fair amount of... distinctive inclinations... in the bedchamber myself. We must speak more on this later... but for now, you have quite thrown me, Bhaalspawn. */
IF ~~ DO ~SetGlobal("LK#NindeSapphic","GLOBAL",1)~ EXIT
END

IF ~~ LK#NF3_TAKFURS
 SAY @1226 /* I didn't take you for a slattern at all, but now I'm beginning to take you for the worst sort of old-fashioned thing there is. Perhaps too old-fashioned. What is slatternly about exploration of one's self? */
	++ @1227 /* Perhaps I reacted a little strongly. All I meant to say was that... I suppose I value physical intimacy more highly than you do. */ + LK#NF3_PHYSHIS
	++ @1228 /* Gods, everything revolves around the body, for you! It is a very narrow perspective you have. */ + LK#NF3_PERSPEXU
	++ @1229 /* Only joking! I had the loosest knees in Candlekeep. */ + LK#NF3_LOOSKNEE
	++ @1230 /* If preserving one's honour is old-fashioned, than I am delighted to be so. */ + LK#NF3_TABEEST
END

IF ~~ LK#NF3_SAREVOK
 SAY @1231 /* Ah, yes. Sarevok, your brother. I have a vague idea of his history, and it is a most intriguing one. He joins the legions of men you've killed. How did it feel... killing your brother? */
	++ @1232 /* He was just another enemy... just another trying to kill me. I had no qualms with it. */ + LK#NF3_NENINQUA
	++ @1233 /* I wish the situation could have been resolved without my having to kill him, but I had no choice in the matter. */ + LK#NF3_DIFFRESO
	++ @1234 /* It felt wonderful, to get that armoured fiend off my back, once and for all. That he was my brother did not enter into it. */ + LK#NF3_ENINTOE
	++ @1235 /* Awful. The shadows of his death are those I will never escape. He was my brother? I should have been able to save him. */ + LK#NF3_LESAVYFAV
	++ @1236 /* I don't really want to talk about it, Ninde. */ + LK#NF3_NOTWHAS
END

IF ~~ LK#NF3_MENNYWA
 SAY @1237 /* Yes, well. Call me orthodox, but jokes ought to amuse me. Nonetheless, I am glad you are not one of these awful women with dirty fingernails who insist on the verbal battery of anything with chest hair and a baritone. */
 = @1238 /* You've smacked in the odd manly skull, though. And one I have a particular interest in, at that. */
	++ @1239 /* All the skulls rather blur into one. Who is it you are interested in? */ + LK#NF3_INTAERIN
	++ @1240 /* I don't like re-living old battles, so please do not ask me to. */ + LK#NF3_DARNOTAR
	++ @1241 /* Let me guess. Sarevok? */ + LK#NF3_SEREEV
END

IF ~~ LK#NF3_INTRSUP
 SAY @1242 /* Oh, I see. You are one of those awful women with dirty fingernails who insist on the verbal battery of anything with chest hair and a baritone. */
 = @1243 /* But if you could wade through the innumerable manly skulls you have undoubtedly smashed in over the years... there's one I have a particular interest in. */
	++ @1239 /* All the skulls rather blur into one. Who is it you are interested in? */ + LK#NF3_INTAERIN
	++ @1240 /* I don't like re-living old battles, so please do not ask me to. */ + LK#NF3_DARNOTAR
	++ @1241 /* Let me guess. Sarevok? */ + LK#NF3_SEREEV
END

IF ~~ LK#NF3_MORWORT
 SAY @1244 /* Quite, but there is some hope for you yet... I'd expect any girl of your age to be naive as a haddock in a nightcap. And what I know of your history... that attests to your innocence as well. */
	++ @1245 /* How do you mean? */ + LK#NF3_ARUMEN
	++ @1246 /* Tell me what it is in my history that has so convinced you of my naivete. */ + LK#NF3_HISATTS
	++ @1247 /* I'll concede that I've had poor judgement in the past, but it is improving, I hope. */ + LK#NF3_EYEHOP
END

IF ~~ LK#NF3_BENINST
 SAY @1248 /* "Benevolent instruction?" You know, acting like an archon won't get you wings. So Bhaalspawn are like snowflakes! No two are the same. Your brother... he knew how to rule, how to inspire loyalty. */
	++ @1249 /* Sarevok? He terrorised thousands in his pursuit for power! */ + LK#NF3_TERRTHOU
	++ @1250 /* His men were not loyal to him, they feared him. */ + LK#NF3_LOYFER
	++ @1251 /* Yes. Well, unfortunately I look slightly less imposing in a suit of spiky armour, or I may have done the same. */ + LK#NF3_DUNZASA
	++ @1252 /* Yes. It was unfortunate that his intelligence came hand in hand with stark raving loony evil. */ + LK#NF3_TERRTHOU
	++ @1253 /* You're suggesting I use that fiend as a model for my own behavior?! */ + LK#NF3_TERRTHOU
END

IF ~~ LK#NF3_DISSFR
 SAY @1254 /* In other words, you do not lead. Or are lost somewhere between magnanimity and ignorance. Bhaalspawn are like snowflakes... no two are the same. Your brother... he knew how to rule, how to inspire loyalty. */
	++ @1249 /* Sarevok? He terrorised thousands in his pursuit for power! */ + LK#NF3_TERRTHOU
	++ @1250 /* His men were not loyal to him, they feared him. */ + LK#NF3_LOYFER
	++ @1251 /* Yes. Well, unfortunately I look slightly less imposing in a suit of spiky armour, or I may have done the same. */ + LK#NF3_DUNZASA
	++ @1252 /* Yes. It was unfortunate that his intelligence came hand in hand with stark raving loony evil. */ + LK#NF3_TERRTHOU
	++ @1253 /* You're suggesting I use that fiend as a model for my own behavior?! */ + LK#NF3_TERRTHOU
END

IF ~~ LK#NF3_RUAAHZ
 SAY @1255 /* My... someone takes after her daddy. I used to think that Bhaalspawn were like snowflakes... each was different... but really, you're birds of a feather. This Sarevok, your brother, would agree with you, I think. Why did the pair of you not join evil hands and skip off beneath an evil rainbow to plan realm-wide domination? */
	++ @1256 /* Yes. It is a shame I was forced to kill one with whom I could've worked so effectively. */ + LK#NF3_EFFYESI
	++ @1257 /* Because he killed my foster father, Gorion. No matter how useful he could have been to me in the long run, I do not suffer those who harm me to live. */ + LK#NF3_SUFFR2LIV
	++ @1258 /* It seems like it would have worked, doesn't it? But ultimately, two individuals with such strength, Bhaalspawn or nay, are bound to reach an impasse. It all would have been fine and dandy till one slit the other's throat in the night. */ + LK#NF3_INDANIT
	++ @1259 /* I would never ally myself with that foul excuse for a humanoid! I may be a harsh leader, but rest assured, I am a good person, truly. */ + LK#NF3_GERPERSO
END

IF ~~ LK#NF3_HISATTS
 SAY @1260 /* Your brother, Sarevok... your confrontation with him is a colossal example of your failure to understand the fundamentals of the male mind. You see, if we women have one advantage, beyond pillowy lips and willowy hips, it is that we rarely fall victim to our own ambition. */
IF ~~ + LK#NF3_SELTEARS
END

IF ~~ LK#NF3_CONCPA
 SAY @1261 /* For example, with regards to Sarevok; why was it you were so insistent on killing him when it was quite obvious the thing to do would have been to join little Bhaalspawn hands and skip away under a little Bhaalspawn rainbow to plot realm-wide domination? 'Twould have been the logical thing to do. */
	++ @1262 /* Logic? Does that matter more to you than compassion? Why would I wish to align myself with the man who murdered my foster father, and would have murdered me, given the chance? Oh, yes, and that's if we lay aside his diabolical plot to destroy the livelihoods of hundreds of innocence for his own gain. */ + LK#NF3_TERRTHOU
	++ @1263 /* How dare you suggest I ought to have conspired with him! */ + LK#NF3_TERRTHOU
	++ @1256 /* Yes. It is a shame I was forced to kill one with whom I could've worked so effectively. */ + LK#NF3_EFFYESI
	++ @1257 /* Because he killed my foster father, Gorion. No matter how useful he could have been to me in the long run, I do not suffer those who harm me to live. */ + LK#NF3_SUFFR2LIV
	++ @1258 /* It seems like it would have worked, doesn't it? But ultimately, two individuals with such strength, Bhaalspawn or nay, are bound to reach an impasse. It all would have been fine and dandy till one slit the other's throat in the night. */ + LK#NF3_INDANIT
END

IF ~~ LK#NF3_ASAT
 SAY @1264 /* I will tell you, some time, but an answer for an answer; I wish to know something about your brother, Sarevok. */
IF ~~ + LK#NF3_SCRYCRYSTAL
END

IF ~~ LK#NF3_SDELLZ
 SAY @1265 /* But truly, is it anything less than magic, the power of a fine woman? Still 'tis a power you never would have been able to use when it mattered, as your history attests. */
	++ @1213 /* When it mattered? */ + LK#NF3_HISATTS
	++ @1214 /* First you suggest that I don't understand men, now that I'm not appealing to them? */ + LK#NF3_NAWAPPS
END

IF ~~ LK#NF3_NAWAPPS
 SAY @1266 /* Oh, not at all... you have a sort of grubby charm, I suppose, though you use it very ill. I was thinking about Sarevok... your confrontation with him could not have been avoided through the measured employment of your feminine wiles, and it is a colossal example of your failure to understand the fundamentals of the male mind. */
 = @1267 /* You see, if we women have one advantage, beyond pillowy lips and willowy hips, it is that we rarely fall victim to our own ambition. */
IF ~~ + LK#NF3_SELTEARS
END

IF ~~ LK#NF3_PHYSHIS
 SAY @1268 /* Value it you may, but it prevents you from understanding its true power. For instance, Sarevok - you're a good little girl, I think, with a mind to avoid bloodshed when you've the chance, and yet you chose to waste countless lives tripping across the Sword Coast to wreak your vengeance upon him when it would've been infinitely easier to sleep your way to him. */
	++ @1269 /* Half the things I did, I did to find out Sarevok's identity. The process of tracking him down was, in itself, comparatively bloodless. */ + LK#NF3_BLOODSE
	++ @1270 /* I think you need to understand a little more about my history before you decide to criticise my decisions. */ + LK#NF3_BLOODSE
	++ @1271 /* Point taken. I have been prone to using my blade before my head, upon occasion. */ + LK#NF3_POCCSI
	++ @1272 /* Perhaps that is what you would have done, but you should remember we are not all of us so loose with our bodies as yourself. */ + LK#NF3_LOOSBOOD
	++ @1273 /* How demeaning! I would never use my body thus, no matter how desperate the situation. */ + LK#NF3_DESSIT
END

IF ~~ LK#NF3_PERSPEXU
 SAY @1274 /* You think my perspective is limited, but seem unwilling to entertain the idea that perhaps, in the end, bodies are all we are. All we are that matters, anyway. All I am. */
	++ @1275 /* All you are? How do you mean? */ + LK#NF3_HOWSAM
	++ @1276 /* I see what you mean, I suppose. */ + LK#NF3_GREEIDO
	++ @1277 /* Oh dear. Do I detect a little self pity in your tone? */ + LK#NF3_PITHMM
	++ @1278 /* I don't understand how you can say such things when it is widely known, and empirically proven, that we have souls, and those souls are immutable, transferable and unique to each of us. */ + LK#NF3_UNIPROV
	++ @1279 /* See, you have virtually admitted it... the reason your virtue is so worthless to you is because of your narrow view of yourself! If you believe all you are is a body, of course your going to behave like an awful slattern! */ + LK#NF3_LOOSBOOD
END

IF ~~ LK#NF3_LOOSKNEE
 SAY @1280 /* Yes, well I don't expect you had much competition in a fortress full of monks and hunched old biddies. */
 = @1281 /* Still, it is nice to see you aren't one of these damnable prisses who can never keep her mouth clamped about her own spotless virtue. They bore me, though perhaps it is something about this country, where everything is as much as a commodity as a cask of Theskan incense... people seem more willing to admit that bodies are all we are. All we are that matters, anyway. All I am. */
	++ @1275 /* All you are? How do you mean? */ + LK#NF3_HOWSAM
	++ @1276 /* I see what you mean, I suppose. */ + LK#NF3_GREEIDO
	++ @1277 /* Oh dear. Do I detect a little self pity in your tone? */ + LK#NF3_PITHMM
	++ @1278 /* I don't understand how you can say such things when it is widely known, and empirically proven, that we have souls, and those souls are immutable, transferable and unique to each of us. */ + LK#NF3_UNIPROV
	++ @1282 /* See, you have virtually admitted it... the reason your virtue is so worthless to you is because of your narrow view of yourself! If you believe all you are is a body, of course you're going to behave like an awful slattern! */ + LK#NF3_LOOSBOOD
END

IF ~~ LK#NF3_TABEEST
 SAY @1283 /* Oh, dear me. A priss. I'd hoped your virtue had been besmirched a little. Blood and the bed make for the best conversation matter, which means honourable women are seldom worth talking to. */
IF ~~ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NF3_NENINQUA
 SAY @1284 /* It is to be expected. What connection did you have beyond your mutual desire to kill each other? */
IF ~~ + LK#NF3_HADBRO
END

IF ~~ LK#NF3_HADBRO
 SAY @1285 /* I had a brother, you know. 'Twas Shadow Thieves who knocked him off. Perhaps I shall tell you a little more about him, some time. I'm less averse to your company than I ought to be. You're like one of those amiable though flea-bitten little cats one stumbles across in greasy alleyways. */
	++ @1286 /* I think I'd like that. You're pleasant enough, in an unpleasant sort of way. If that makes any sense. */ + LK#NF3_ANSENSE
	++ @1287 /* I can see talking to you is going to become a bad little habit, like biting your nails. Compulsive, impossible to stop. */ + LK#NF3_COMPIMP
	++ @1288 /* I'd rather be flea-bitten than vampire-ridden. */ + LK#NF3_CAHNTAE
	++ @1289 /* See, you say horrible things like that to me and then expect me to bestow my company upon you? */ + LK#NF3_UPSOON
	++ @1290 /* I'd rather claw out my own eyeballs and use them as sandwich filling. */ + LK#NF3_USASAND
END

IF ~~ LK#NF3_DIFFRESO
 SAY @1291 /* I think perhaps your conflict with Sarevok had evolved beyond a "situation." Running out of strawberry preserve on a picnic trip is a "situation." As is was, your feelings counted for naught. */
IF ~~ + LK#NF3_HADBRO
END

IF ~~ LK#NF3_ENINTOE
 SAY @1292 /* Truly? Such callousness is necessary, I know, but were I you, I would attach some significance to his death. It would be in the very least talismanic. */
IF ~~ + LK#NF3_HADBRO
END

IF ~~ LK#NF3_LESAVYFAV
 SAY @1293 /* A mistake often made by would-be poets and other unpractised wordsmiths is to forgot that a shadow is, by definition, vanquishable. It reveals a great deal to me, Bhaalspawn, that his death is one great darkness that you could not shirk. Though perhaps I have no right to judge. */
 = @1294 /* My own brother... he was killed, by Shadow Thieves. I only hold one grudge, Bhaalspawn. One. Perhaps I shall tell you a little more about him, some time. I'm less averse to your company than I ought to be. You're like one of those amiable though flea-bitten little cats one stumbles across in greasy alleyways. */
	++ @1286 /* I think I'd like that. You're pleasant enough, in an unpleasant sort of way. If that makes any sense. */ + LK#NF3_ANSENSE
	++ @1287 /* I can see talking to you is going to become a bad little habit, like biting your nails. Compulsive, impossible to stop. */ + LK#NF3_COMPIMP
	++ @1288 /* I'd rather be flea-bitten than vampire-ridden. */ + LK#NF3_CAHNTAE
	++ @1289 /* See, you say horrible things like that to me and then expect me to bestow my company upon you? */ + LK#NF3_UPSOON
	++ @1290 /* I'd rather claw out my own eyeballs and use them as sandwich filling. */ + LK#NF3_USASAND
END

IF ~~ LK#NF3_NOTWHAS
 SAY @1295 /* Then I cannot force you. Well, actually, I have a spell... but I shouldn't do that sort of thing. Spellcasters etiquette and all that. As you wish, little Bhaalspawn. */
IF ~~ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NF3_INTAERIN
 SAY @1296 /* Sarevok's. Who else's? He was your brother, and you killed him. I don't want to know the details, but something much more simple for you to recall; how did it feel? */
IF ~~ + LK#NF3_SCRYCRYSTAL
END

IF ~~ LK#NF3_SUKKAS
 SAY @1297 /* I wish to know something about one of the innumerable skulls you have undoubtedly smashed in over the years... there's one I have a particular interest in. */
	++ @1239 /* All the skulls rather blur into one. Who is it you are interested in? */ + LK#NF3_INTAERIN
	++ @1240 /* I don't like re-living old battles, so please do not ask me to. */ + LK#NF3_DARNOTAR
	++ @1241 /* Let me guess. Sarevok? */ + LK#NF3_SEREEV
END

IF ~~ LK#NF3_MIDCONF
 SAY @1298 /* Well, darling, I can't help it if you're a frightful bore with only a moderately sort of backstory to pique my interest. And even that is losing its sheen given your reluctance to discuss it. Very well. I shall find someone else to amuse me. */
IF ~~ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NF3_DARNOTAR
 SAY @1299 /* But darling, other than your moderately sort of backstory, you have nothing to pique my interest. And even that is losing its sheen given your reluctance to discuss it. Very well. I shall find someone else to amuse me. */
IF ~~ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NF3_SEREEV
 SAY @1300 /* Why, Bhaalspawn! Is telepathy one of those funny little powers you keep waking up with? Yes, it is Sarevok who I am interested in. Or, more specifically... how it felt. */
IF ~~ + LK#NF3_SCRYCRYSTAL
END

IF ~~ LK#NF3_SCRYCRYSTAL
 SAY @1301 /* I want to know how... how it felt when you killed him. Was it a release? Or were you ever sweet and regretful as his life seeped away as smoke from a broken scrying crystal? */
	++ @1302 /* That is a difficult question, and the truth is... I'm not sure. Relief, I suppose, that it was over... devastated by the fact it even began. */ + LK#NF3_BEGOV
	++ @1303 /* He was my brother, in a sense... and killing your brother, however abstract your relationship, is not the kind of thing you can just walk away from. */ + LK#NF3_WAFROM
	++ @1304 /* I lament every death... even Sarevok's, though it was necessary. */ + LK#NF3_NECSAREV
	++ @1305 /* The blighter deserved what he got! */ + LK#NF3_DESBLIG
	++ @1306 /* Pure pleasure. My vocabulary is not nearly extensive enough to explain to you joy I felt as his mangled body dissolved into a pretty little cloud of gold dust. */ + LK#NF3_DESBLIG
	++ @1307 /* I'm not sure I want to talk to you about this. */ + LK#NF3_ABAAHTD
END

IF ~~ LK#NF3_ARUMEN
 SAY @1308 /* Take, for example, your brother, Sarevok... your confrontation with him is a colossal example of your failure to understand the fundamentals of the male mind. You see, if we women have one advantage, beyond pillowy lips and willowy hips, it is that we rarely fall victim to our own ambition. */
IF ~~ + LK#NF3_SELTEARS
END

IF ~~ LK#NF3_SELTEARS
 SAY @1309 /* Men, however, obstinately stroll in gardens of ambition, dive in seas of the stuff, and a man who had five of Selune's tears closed in his palm would not be content until he had secured the final two. There you were, dashing up and down the Sword Coast, attempting to spoil all his carefully laid plans, when, in actual fact, he never would have managed to carry them out. He would have over-shot himself. */
	++ @1310 /* You seem to be very good at bombarding me with platitudes, but rarely offer any practicable advice. */ + LK#NF3_PRACVIC
	++ @1311 /* You clearly don't know Sarevok. He was ambitious, yes, but more intelligent than most men. */ + LK#NF3_MARMEN
	++ @1312 /* That's all very well and good, but since a mysterious armoured tyrant was sending his axe-wielding goons up and down the Sword Coast to split apart skull upon with reckless abandon, you'll forgive me for not sitting back and thinking, "oh, it's all right... men often fall victim their ambition." */ + LK#NF3_LONAMDB
	++ @1313 /* What a load of tripe! Your all old-fashioned stereotypes. I've never heard any spew so much tosh! */ + LK#NF3_SPTORSH
END

IF ~~ LK#NF3_EYEHOP
 SAY @1314 /* I have been furnished with only a vague watercolour picture of your history, and so I am unable to judge. So here is your chance to give me the concise charts, replete with keys and colour coding. */
IF ~~ + LK#NF3_SUKKAS
END

IF ~~ LK#NF3_TERRTHOU
 SAY @1315 /* You Bhaalspawn are a fascinating breed! I suppose, given your dim view of your brother, his death caused you no great pain. You felt no regret as his life seeped away as smoke from a broken scrying crystal? How did you feel? */
	++ @1302 /* That is a difficult question, and the truth is... I'm not sure. Relief, I suppose, that it was over... devastated by the fact it even began. */ + LK#NF3_BEGOV
	++ @1303 /* He was my brother, in a sense... and killing your brother, however abstract your relationship, is not the kind of thing you can just walk away from. */ + LK#NF3_WAFROM
	++ @1304 /* I lament every death... even Sarevok's, though it was necessary. */ + LK#NF3_NECSAREV
	++ @1305 /* The blighter deserved what he got! */ + LK#NF3_DESBLIG
	++ @1306 /* Pure pleasure. My vocabulary is not nearly extensive enough to explain to you joy I felt as his mangled body dissolved into a pretty little cloud of gold dust. */ + LK#NF3_DESBLIG
	++ @1307 /* I'm not sure I want to talk to you about this. */ + LK#NF3_ABAAHTD
	++ @1316 /*  A "fascinating breed?" I don't like being talked about like a new species of butterfly kept in Ninde's little light-box for observation. */ + LK#NF3_UPSOON
END

IF ~~ LK#NF3_LOYFER
 SAY @1317 /* Well, whether his men feared him or were loyal to him, they worked for him, did his bidding, and did not try to kill him, and so it amounts to more or less the same thing. */
 = @1318 /* You Bhaalspawn are a fascinating breed. I suppose, given your dim view of your brothers methods, his death caused you no great pain. You felt no regret as his life seeped away as smoke from a broken scrying crystal? How did you feel? */
	++ @1302 /* That is a difficult question, and the truth is... I'm not sure. Relief, I suppose, that it was over... devastated by the fact it even began. */ + LK#NF3_BEGOV
	++ @1303 /* He was my brother, in a sense... and killing your brother, however abstract your relationship, is not the kind of thing you can just walk away from. */ + LK#NF3_WAFROM
	++ @1304 /* I lament every death... even Sarevok's, though it was necessary. */ + LK#NF3_NECSAREV
	++ @1305 /* The blighter deserved what he got! */ + LK#NF3_DESBLIG
	++ @1306 /* Pure pleasure. My vocabulary is not nearly extensive enough to explain to you joy I felt as his mangled body dissolved into a pretty little cloud of gold dust. */ + LK#NF3_DESBLIG
	++ @1307 /* I'm not sure I want to talk to you about this. */ + LK#NF3_ABAAHTD
	++ @1316 /*  A "fascinating breed?" I don't like being talked about like a new species of butterfly kept in Ninde's little light-box for observation. */ + LK#NF3_UPSOON
END

IF ~~ LK#NF3_DUNZASA
 SAY @1319 /* Your reputation is more intimidating than your person, Bhaalspawn. I was told you were callous and without mercy, and I am still not certain whether this is true. Perhaps you might shed some light. How did it feel when... when you killed Sarevok? Was it a release? Or were you ever sweet and regretful as his life seeped away as smoke from a broken scrying crystal? */
	++ @1302 /* That is a difficult question, and the truth is... I'm not sure. Relief, I suppose, that it was over... devastated by the fact it even began. */ + LK#NF3_BEGOV
	++ @1303 /* He was my brother, in a sense... and killing your brother, however abstract your relationship, is not the kind of thing you can just walk away from. */ + LK#NF3_WAFROM
	++ @1304 /* I lament every death... even Sarevok's, though it was necessary. */ + LK#NF3_NECSAREV
	++ @1305 /* The blighter deserved what he got! */ + LK#NF3_DESBLIG
	++ @1306 /* Pure pleasure. My vocabulary is not nearly extensive enough to explain to you joy I felt as his mangled body dissolved into a pretty little cloud of gold dust. */ + LK#NF3_DESBLIG
	++ @1307 /* I'm not sure I want to talk to you about this. */ + LK#NF3_ABAAHTD
END

IF ~~ LK#NF3_EFFYESI
 SAY @1320 /* You confound me, Bhaalspawn. I had heard you had a softer heart than your brother, a more merciful soul, if you will. While I am pleased to have some of the more saccharine accounts I had been given of you disproved, I am not pleased to find you even more puzzling than I did initially. */
IF ~~ + LK#NF3_SHEDLIGHT
END

IF ~~ LK#NF3_SHEDLIGHT
 SAY @1321 /* Here... perhaps you might shed some light. Sarevok, your brother... How did it *feel* when... when you killed him, after your irritation at having done away with a potential ally? Was it a release? Or were you ever sweet and regretful as his life seeped away as smoke from a broken scrying crystal? */
	++ @1302 /* That is a difficult question, and the truth is... I'm not sure. Relief, I suppose, that it was over... devastated by the fact it even began. */ + LK#NF3_BEGOV
	++ @1303 /* He was my brother, in a sense... and killing your brother, however abstract your relationship, is not the kind of thing you can just walk away from. */ + LK#NF3_WAFROM
	++ @1304 /* I lament every death... even Sarevok's, though it was necessary. */ + LK#NF3_NECSAREV
	++ @1305 /* The blighter deserved what he got! */ + LK#NF3_DESBLIG
	++ @1306 /* Pure pleasure. My vocabulary is not nearly extensive enough to explain to you joy I felt as his mangled body dissolved into a pretty little cloud of gold dust. */ + LK#NF3_DESBLIG
	++ @1307 /* I'm not sure I want to talk to you about this. */ + LK#NF3_ABAAHTD
END

IF ~~ LK#NF3_SUFFR2LIV
 SAY @1322 /* Interesting. You are more interesting... and more puzzling... than I had previously thought. Don't worry, the inquisition need not continue for much longer... I have one last question. */
 = @1323 /* Sarevok, your brother... How did it *feel* when... when you killed him, after your irritation at having done away with a potential ally? Was it a release? Or were you ever sweet and regretful as his life seeped away as smoke from a broken scrying crystal? */
	++ @1302 /* That is a difficult question, and the truth is... I'm not sure. Relief, I suppose, that it was over... devastated by the fact it even began. */ + LK#NF3_BEGOV
	++ @1303 /* He was my brother, in a sense... and killing your brother, however abstract your relationship, is not the kind of thing you can just walk away from. */ + LK#NF3_WAFROM
	++ @1304 /* I lament every death... even Sarevok's, though it was necessary. */ + LK#NF3_NECSAREV
	++ @1305 /* The blighter deserved what he got! */ + LK#NF3_DESBLIG
	++ @1306 /* Pure pleasure. My vocabulary is not nearly extensive enough to explain to you joy I felt as his mangled body dissolved into a pretty little cloud of gold dust. */ + LK#NF3_DESBLIG
	++ @1307 /* I'm not sure I want to talk to you about this. */ + LK#NF3_ABAAHTD
END

IF ~~ LK#NF3_INDANIT
 SAY @1324 /* I see the world you have inhabited in recent years is not at all dissimilar to my own. You see that it is slit throats, or have your throat slit. Although to tell the truth, I did not expect such insouciance from you. While I am pleased to have some of the more saccharine accounts I had been given of your sweetness and naivete disproved, I am not pleased to find you even more puzzling than I did initially. */
IF ~~ + LK#NF3_SHEDLIGHT
END

IF ~~ LK#NF3_GERPERSO
 SAY @1325 /* So Bhaalspawn are like snowflakes! No two are the same. I suppose then, that given the multitude of differences between Sarevok and yourself, killing him was no great heartache? */
 = @1326 /* Tell me, how did it feel? When... when you killed him, after your irritation at having done away with a potential ally? Was it a release? Or were you ever sweet and regretful as his life seeped away as smoke from a broken scrying crystal? */
	++ @1302 /* That is a difficult question, and the truth is... I'm not sure. Relief, I suppose, that it was over... devastated by the fact it even began. */ + LK#NF3_BEGOV
	++ @1303 /* He was my brother, in a sense... and killing your brother, however abstract your relationship, is not the kind of thing you can just walk away from. */ + LK#NF3_WAFROM
	++ @1304 /* I lament every death... even Sarevok's, though it was necessary. */ + LK#NF3_NECSAREV
	++ @1305 /* The blighter deserved what he got! */ + LK#NF3_DESBLIG
	++ @1306 /* Pure pleasure. My vocabulary is not nearly extensive enough to explain to you joy I felt as his mangled body dissolved into a pretty little cloud of gold dust. */ + LK#NF3_DESBLIG
	++ @1307 /* I'm not sure I want to talk to you about this. */ + LK#NF3_ABAAHTD
END

IF ~~ LK#NF3_PRACVIC
 SAY @1327 /* It was not advice, and you may place whatever value on it you will. Just be aware I may be more tentative in sharing my observations in the future. On the other hand, I have only a vague watercolour of your past to reference. Care to add in some more brushstrokes? */
IF ~~ + LK#NF3_SHEDLIGHT
END

IF ~~ LK#NF3_MARMEN
 SAY @1328 /* My, you speak of him with a certain... morbid fondness, almost. Bhaalspawn, tell me... how did you feel when Sarevok died, when you... killed him? Was it a release? Or were you ever sweet and regretful as his life seeped away as smoke from a broken scrying crystal? */
	++ @1302 /* That is a difficult question, and the truth is... I'm not sure. Relief, I suppose, that it was over... devastated by the fact it even began. */ + LK#NF3_BEGOV
	++ @1303 /* He was my brother, in a sense... and killing your brother, however abstract your relationship, is not the kind of thing you can just walk away from. */ + LK#NF3_WAFROM
	++ @1304 /* I lament every death... even Sarevok's, though it was necessary. */ + LK#NF3_NECSAREV
	++ @1305 /* The blighter deserved what he got! */ + LK#NF3_DESBLIG
	++ @1306 /* Pure pleasure. My vocabulary is not nearly extensive enough to explain to you joy I felt as his mangled body dissolved into a pretty little cloud of gold dust. */ + LK#NF3_DESBLIG
	++ @1307 /* I'm not sure I want to talk to you about this. */ + LK#NF3_ABAAHTD
END

IF ~~ LK#NF3_LONAMDB
 SAY @1329 /* You are right, though I'll remind you that I have only a vague watercolour of your history to work from. If it is more practicable advice you desire, you'll need to add a few more brushstrokes. You can start by answering one last question... Sarevok. */
 = @1330 /* Bhaalspawn, tell me... how did you feel when Sarevok died, when you... killed him... Was it a release? Or were you ever sweet and regretful as his life seeped away as smoke from a broken scrying crystal? */
	++ @1302 /* That is a difficult question, and the truth is... I'm not sure. Relief, I suppose, that it was over... devastated by the fact it even began. */ + LK#NF3_BEGOV
	++ @1303 /* He was my brother, in a sense... and killing your brother, however abstract your relationship, is not the kind of thing you can just walk away from. */ + LK#NF3_WAFROM
	++ @1304 /* I lament every death... even Sarevok's, though it was necessary. */ + LK#NF3_NECSAREV
	++ @1305 /* The blighter deserved what he got! */ + LK#NF3_DESBLIG
	++ @1306 /* Pure pleasure. My vocabulary is not nearly extensive enough to explain to you joy I felt as his mangled body dissolved into a pretty little cloud of gold dust. */ + LK#NF3_DESBLIG
	++ @1307 /* I'm not sure I want to talk to you about this. */ + LK#NF3_ABAAHTD
END

IF ~~ LK#NF3_SPTORSH
 SAY @1331 /* Very well, then, continue with your ugly snorting whenever you encounter something in these wide realms too subtle for you to understand. Did it never strike you that stereotypes may be stereotypes for a reason? Of course not, you've got far too much on your proverbial plate already, what with trying to learn the alphabet and how to tie your laces without poor old Gorion around to help you. */
IF ~~ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NF3_BLOODSE
 SAY @1332 /* You are right, of course. I have only a vague watercolour of your past from which to make my judgements, so you can expect them to be less than perfect. Until you add a few more brush-strokes, that is. Here, I have one last question for you. */
 = @1333 /* Sarevok... how did it feel when you... killed him? Was it a release? Or were you ever sweet and regretful as his life seeped away as smoke from a broken scrying crystal? */
	++ @1302 /* That is a difficult question, and the truth is... I'm not sure. Relief, I suppose, that it was over... devastated by the fact it even began. */ + LK#NF3_BEGOV
	++ @1303 /* He was my brother, in a sense... and killing your brother, however abstract your relationship, is not the kind of thing you can just walk away from. */ + LK#NF3_WAFROM
	++ @1304 /* I lament every death... even Sarevok's, though it was necessary. */ + LK#NF3_NECSAREV
	++ @1305 /* The blighter deserved what he got! */ + LK#NF3_DESBLIG
	++ @1306 /* Pure pleasure. My vocabulary is not nearly extensive enough to explain to you joy I felt as his mangled body dissolved into a pretty little cloud of gold dust. */ + LK#NF3_DESBLIG
	++ @1307 /* I'm not sure I want to talk to you about this. */ + LK#NF3_ABAAHTD
END

IF ~~ LK#NF3_POCCSI
 SAY @1334 /* Rather like myself in my youth, I think, though you have an even vaguer idea of my past than I do of yours. And that is just the way we like it. But before we end this delightful little heart to heart, I've one last question for you... Sarevok. How...how did it feel when you killed him? Was it a release? Or were you ever sweet and regretful as his life seeped away as smoke from a broken scrying crystal? */
	++ @1302 /* That is a difficult question, and the truth is... I'm not sure. Relief, I suppose, that it was over... devastated by the fact it even began. */ + LK#NF3_BEGOV
	++ @1303 /* He was my brother, in a sense... and killing your brother, however abstract your relationship, is not the kind of thing you can just walk away from. */ + LK#NF3_WAFROM
	++ @1304 /* I lament every death... even Sarevok's, though it was necessary. */ + LK#NF3_NECSAREV
	++ @1305 /* The blighter deserved what he got! */ + LK#NF3_DESBLIG
	++ @1306 /* Pure pleasure. My vocabulary is not nearly extensive enough to explain to you joy I felt as his mangled body dissolved into a pretty little cloud of gold dust. */ + LK#NF3_DESBLIG
	++ @1307 /* I'm not sure I want to talk to you about this. */ + LK#NF3_ABAAHTD
END

IF ~~ LK#NF3_LOOSBOOD
 SAY @1335 /* My, you are a tiresome thing, Bhaalspawn. I fear we will never see eye to eye, you think such old-fashioned things. */
IF ~~ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NF3_DESSIT
 SAY @1336 /* Darling, in some situations, 'twould be demeaning not to. Yet I fear we will never see eye to eye, you think such old-fashioned things, Bhaalspawn. */
IF ~~ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NF3_BEGOV
 SAY @1337 /* Either you bite back your venom, or you do not loathe Sarevok as I would, were I you. I suppose it is to be expected, given the absurdity of your relationship with him. */
 = @1338 /* I had a brother of my own. Respen. He was killed by Shadow Thieves, and of course, the situations are hardly comparable. Still, let it not be said that Ninde does not trade a tale for a tale. I will tell you about him, some time, should you wish. */
	++ @1339 /* Certaintly, I'd like that. */ + LK#NF3_EEDLIKE
	++ @1340 /* Er... well, if you feel you must. */ + LK#NF3_FELOOMUS
	++ @1341 /* Would that involve my having to listen to your drear nasal voice for another aeon? If so, you may count me out. */ + LK#NF3_CAHNTAE
END

IF ~~ LK#NF3_WAFROM
 SAY @1342 /* No, darling. He was not your brother, and should not be regarded as such no matter whose petticoats Bhaal muscled his way into. I fail to understand how his heart's... blood could've been anything other than the sweet milk of victory. That is what it would have been to me. Then again... we are very different people. */
 = @1338 /* I had a brother of my own. Respen. He was killed by Shadow Thieves, and of course, the situations are hardly comparable. Still, let it not be said that Ninde does not trade a tale for a tale. I will tell you about him, some time, should you wish. */
	++ @1339 /* Certaintly, I'd like that. */ + LK#NF3_EEDLIKE
	++ @1340 /* Er... well, if you feel you must. */ + LK#NF3_FELOOMUS
	++ @1341 /* Would that involve my having to listen to your drear nasal voice for another aeon? If so, you may count me out. */ + LK#NF3_CAHNTAE
END

IF ~~ LK#NF3_HOWSAM
 SAY @1343 /* Bhaalspawn, do try not to be quite so tiresome, will you? I have explained my situation to you, and do not wish to do so again. */
IF ~~ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NF3_NECSAREV
 SAY @1344 /* My, if it isn't the darling of the Sword Coast talking! You shouldn't spend your life worrying that you might become like him. We are not our brothers, after all. If I were you, his heart's... blood would have been the sweet milk of victory. */
 = @1345 /* I had a brother of my own, you know. Respen. He was killed by Shadow Thieves, and of course, the situations are hardly comparable. Still, let it not be said that Ninde does not trade a tale for a tale. I will tell you about him, some time, should you wish. */
	++ @1339 /* Certaintly, I'd like that. */ + LK#NF3_EEDLIKE
	++ @1340 /* Er... well, if you feel you must. */ + LK#NF3_FELOOMUS
	++ @1341 /* Would that involve my having to listen to your drear nasal voice for another aeon? If so, you may count me out. */ + LK#NF3_CAHNTAE
END

IF ~~ LK#NF3_DESBLIG
 SAY @1346 /* Hah! And you kissed the Dukes of Baldur's Gate with that mouth? You're an entertaining Bhaalspawn... all contradictions. I think I should like to have met this brother of yours. He seems to inspire the strongest of emotions. */
 = @1345 /* I had a brother of my own, you know. Respen. He was killed by Shadow Thieves, and of course, the situations are hardly comparable. Still, let it not be said that Ninde does not trade a tale for a tale. I will tell you about him, some time, should you wish. */
	++ @1339 /* Certaintly, I'd like that. */ + LK#NF3_EEDLIKE
	++ @1340 /* Er... well, if you feel you must. */ + LK#NF3_FELOOMUS
	++ @1341 /* Would that involve my having to listen to your drear nasal voice for another aeon? If so, you may count me out. */ + LK#NF3_CAHNTAE
END

IF ~~ LK#NF3_GREEIDO
 SAY @1347 /* I am glad you're finally seeing sense, honeybunch. Bodies. You've destroyed many, I have little doubt... but there is one I'm particularly interested in. */
	++ @1348 /* All the bodies rather blur into one. Who is it you are interested in? */ + LK#NF3_INTAERIN
	++ @1240 /* I don't like re-living old battles, so please do not ask me to. */ + LK#NF3_DARNOTAR
	++ @1241 /* Let me guess. Sarevok? */ + LK#NF3_SEREEV
END

IF ~~ LK#NF3_PITHMM
 SAY @1349 /* Self-pity? Certainly not, and if you are looking for it, so that you might up your nose and think you have somehow plumbed the depths of my soul and seen it waver, than you are more the fool for it. */
IF ~~ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NF3_UNIPROV
 SAY @1350 /* Goodness, such book-learning is all very well, but not if it drives points of greater importance from your brain. Fortunately, I was blessed with an excellent memory. Unfortunately, you were not, and I cannot bring myself to reiterate. You bore me quite thoroughly. */
IF ~~ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NF3_ANSENSE
 SAY @1351 /* I'm the scab you can't help picking, if I dare venture a metaphor. Although infinitely prettier. */
 = @1352 /* Goodness, I think that's the first somewhat unpleasant thing I've ever said about myself. */
IF ~~ EXIT
END

IF ~~ LK#NF3_COMPIMP
 SAY @1353 /* Oh, Bhaalspawn, your words wound me. Or at least they might, if they made any sense. Nonethless, I'll distract you no more with conversation, you've far too much on your plate as it is, what with learning the alphabet, and how to tie your shoe-laces now poor old Gorion isn't around to help you. */
IF ~~ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NF3_UPSOON
 SAY @1354 /* My, if the girl isn't as sensitive as a widow on its web. Idle banter hits her harder than a Helmite's mace. Very well, I shan't attempt to speak with you anymore. You are far too easy to dismay. */
IF ~~ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NF3_USASAND
 SAY @1355 /* Hah! Point made with verbal flair and the utmost efficiency. Very well, Bhaalspawn. You were trying my patience a little, truth be told. */
IF ~~ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NF3_ABAAHTD
 SAY @1356 /* My, the Bhaalspawn's as guarded as a summoned guardian. I'm beginning to think your depths aren't worth plumbing. */
IF ~~ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NF3_EEDLIKE
 SAY @1357 /* Very well. When I feel in the mood for a good natter, it shall be. At this present moment, I'm feeling far too emotionally depleted to even attempt the tale. You shall see why, I think. */
IF ~~ EXIT
END

IF ~~ LK#NF3_FELOOMUS
 SAY @1358 /* Oh, well, don't fatigue yourself in fits of enthusiasm, Bhaalspawn. */
IF ~~ EXIT
END

IF ~~ LK#NF3_CAHNTAE
 SAY @1359 /* Point made with the utmost efficiency, if unimaginatively. Very well, Bhaalspawn. You were beginning to rather irritate me, truth be told. */
IF ~~ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ EXIT
END

// 4.
// --
IF ~Global("LK#NindeFriendTalks","GLOBAL",7)~ LK#NF4_intro
  SAY @1360 /* Bhaalspawn, let us talk about love, and the trials, tribulations and triumphs thereof. When I was your age I couldn't move for well-muscled suitors. */
  ++ @181 /* Ah, love is all around us. Love lifts us up where we belong. Was it the wise Alaundo who said 'all you need is love?' */ DO ~RealSetGlobalTimer("LK#NindeFriendTalksTimer","GLOBAL",2700) IncrementGlobal("LK#NindeFriendTalks","GLOBAL",1)~ + LK#NF4_lovelove
  ++ @1361 /* Lucky you. Unfortunately, I can't move for well-muscled men who want to chop off my pretty little head. */ DO ~RealSetGlobalTimer("LK#NindeFriendTalksTimer","GLOBAL",2700) IncrementGlobal("LK#NindeFriendTalks","GLOBAL",1)~ + LK#NF4_prettyhead
  ++ @182 /* I've encountered more of the tribulations than the triumphs, unfortunately. */ DO ~RealSetGlobalTimer("LK#NindeFriendTalksTimer","GLOBAL",2700) IncrementGlobal("LK#NindeFriendTalks","GLOBAL",1)~ + LK#NF4_moretrials
  ++ @183 /* Love is for Sunites and octogenarians. I'm more an advocate of raw, animal lust. */ DO ~RealSetGlobalTimer("LK#NindeFriendTalksTimer","GLOBAL",2700) IncrementGlobal("LK#NindeFriendTalks","GLOBAL",1)~ + LK#NF4_lustplz
  ++ @1362 /* There's no time for love on this bloody path. There's no time for talking about it either. */ DO ~RealSetGlobalTimer("LK#NindeFriendTalksTimer","GLOBAL",2700) IncrementGlobal("LK#NindeFriendTalks","GLOBAL",1)~ + LK#NF4_notime
END

IF ~~ LK#NF4_lovelove
  SAY @189 /* Do not speak to me of Alaundo. I had to study Alaundo at the academy. If by some hilarious magical anomaly I should ever meet him, I'll be sure to slap him upside the head for the boredom he has indirectly caused me over the years. */
  = @190 /* But lovers...of those, I've had a few. <CHARNAME>, care you for a tale of boys, black louts and blacker magic? */
	++ @191 /* Please, continue. */ + LK#NF4_plzcont
	++ @192 /* Pfegh, I've heard it all. But never the less, carry on. */ + LK#NF4_pfegh
END

IF ~~ LK#NF4_prettyhead
 SAY @1363 /* Oddly enough, I've noticed that. But you needn't be so very phlegmatic about it. A little passion can ease the soul. Oh! Silly me... you don't have one. (Smile) */
 = @1364 /* Nonetheless, <CHARNAME>, care you for a tale of boys, black louts and blacker magic? */
	++ @191 /* Please, continue. */ + LK#NF4_plzcont
	++ @192 /* Pfegh, I've heard it all. But never the less, carry on. */ + LK#NF4_pfegh
END

IF ~~ LK#NF4_moretrials
  SAY @1365 /* My dear, that is true of all and sundry. But do not the moments of memories of a certain calm in the morning, a soft head resting on your chest outweigh those of arguments at sunset or the sting of a slap? */
  IF ~~ + LK#NF4_main1
END

IF ~~ LK#NF4_lustplz
  SAY @1366 /* While I admire the sentiment, and agree there's nothing like a long night's redshirting to clear the mind, I like a young woman who can appreciate the silken nuances of a good romance. And if you can't appreciate such things now, Bhaalspawn, I shall make you. */
  = @1367 /* So, <CHARNAME>, care you for a tale of boys, black louts and blacker magic, or will I have to force it on you like a woebegone mother must force a pinafore on to her naughtiest daughter? */
	++ @191 /* Please, continue. */ + LK#NF4_plzcont
	++ @192 /* Pfegh, I've heard it all. But never the less, carry on. */ + LK#NF4_pfegh
END

IF ~~ LK#NF4_notime
  SAY @1368 /* How characteristically, grotesquely northern of you, Bhaalspawn. What are you, Illuskan? Lady Sweetwater used to say the best lovers were Chessentans, Halruuans and Thayvians. No coarseness there... all soft hands and sensitive spirits, never did a day's honest labour in their lives. Anyway, if you do not appreciate the silken nuances of a great love, I shall make you. What do you say to that, Bhaalspawn? */
 	++ @1369 /* Well, if you insist. */ + LK#NF4_insist
	++ @1370 /* Oh, I did not mean that I didn't want to talk to you about it, merely that I have little experience in the matter. */ + LK#NF4_noexperience
	++ @1371 /* Ha, you can try. */ + LK#NF4_cantry
END

IF ~~ LK#NF4_plzcont
 SAY @1372 /* Very well. Hmm... */
  IF ~~ + LK#NF4_main1
END

IF ~~ LK#NF4_insist
 SAY @1373 /* I do. But where to begin? Hmm... */
  IF ~~ + LK#NF4_main1
END

IF ~~ LK#NF4_noexperience
 SAY @1374 /* Then you shall be the beneficiary of mine, you lucky Bhaalspawn, you! But where to begin? Hmm... */
  IF ~~ + LK#NF4_main1
END

IF ~~ LK#NF4_cantry
 SAY @1375 /* Yes, I suppose I can, though something in your tone tells me that might not be the best of ideas. Really, <CHARNAME> you ought to learn that threats get you nowhere. Well, not with me, anyway. */
IF ~~ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NF4_pfegh
 SAY @1376 /* Oh, well it is certainly very far from my intentions to bore you, young Bhaalspawn. Of course, if you don't appreciate our little chats, they needn't continue. */
IF ~~ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NF4_main1
  SAY @202 /* In my youth I was sent to one of Waterdeep's most prestigious magical academies, The Seminary of Mystryl. I was never the most dedicated student, however, more pre-occupied by my own burgeoning charm and how to employ it on the sons of my father's business associates, often to great effect. They were noisy, red-cheeked northern boys, who wouldn't look out of place with their backs glistening over fields anywhere in the Heartlands, though naturally had cut-glass elocution and a passion for team sports, fencing and pretty debutantes such as myself. */
  = @203 /* The courtship was hollow, however. Unlike many of my friends I had no intention of marrying just any muscular lad who scaled my balcony at night with a bunch of white roses; besides, I was to be the inheritor of a powerful trading coster, I didn't need their wealth or their thick shoulders. But I knew men early, and enjoyed being an object of their desires, a daughter of one of Waterdeep's great families. */
  ++ @204 /* Go on. */ + LK#NF4_main2
  ++ @1377 /* Very interesting, but I don't think I have time to listen to you now. */ + LK#NF4_timelisten
END

IF ~~ LK#NF4_timelisten
 SAY @1378 /* Bhaalspawn, when will you ever have time? So many people to slash apart, so little time to do it in. */
IF ~~ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NF4_main2
  SAY @1379 /* I did not know my family, the Amblecrowns, were to fall into decline. It happened with the death of my adoptive father, Inaed, which I may or may not have told you, plunged me briefly into a torrent of emotions I was unfamiliar with. They broke me. It was just before his death I met Sykre. At a ball at the Prufrock's I was introduced to him; a handsome young man from the Moonsea, poor but beautiful in a grey silk shirt, with long eyelashes, matching scars on his cheeks, and a rapier on his strong flank. */
  = @207 /* He had fled from Mulmaster, where all spellcasters of a certain power are recquired to join the Cloaks, a militaristic organisation. He had been tortured, a sure aphrodisiac to the naïve young girl. His hands shook when he grasped the stem of a goblet. I was drunk on wine, he on the joy of surviving to hold another woman in his arms, before a window outside which snow fell. He laughed at everything I said, had a teasing foreign lilt on his lips and a fierceness to his movements. I fell asleep and he packed me into a coach back to the Amblecrown manor. I had only the name to remember him by; Sykre D'Alysoss. */
  = @208 /* I did not think I would see him again, but to my surprise he was hired as a tutor at the Seminary--teaching, naturally, Necromancy. I insinuated my way into his classes to hear that lilting voice, developed a taste for dissections to feel his steady hand guiding my own. Our intimacy was never repeated, however...I'm sure that now he was my tutor, he felt it would be inappropriate. I'd always known when a man desired me, though, and did not give in. */
  	++ @209 /* He was your teacher. You dissected things to win a special place in his heart. This story is creepy on so many levels. Then again, you're Ninde. What did I expect? */ + LK#NF4_ewnonce
  	++ @210 /* You really know how to tell a story. Go on. */ + LK#NF4_main3
  	++ @1380 /* This is truly, irrepressibly boring. */ + LK#NF4_pfegh
END

IF ~~ LK#NF4_ewnonce
  SAY @1381 /* What did you expect, indeed. Anyway, do not interrupt, Bhaalspawn. My story is about to take a most upsetting turn. */
IF ~~ + LK#NF4_main3
END

IF ~~ LK#NF4_main3
  SAY @219 /* My father died on a balmy Mirtul morning, and my education at the Seminary was suspended. His funeral took place days later, in a mild spring rain, and I stood by the side of his crypt with my brother's hand on my shoulder. Sykre waited for me at a small shrine to Myrkul just outside that boneyard. I broke away from the procession to go there and he pressed a dagger up against my throat. Ordinarily I would've been frightened...but with his body and his face close to mine, his shirt damp and just barely open... */
  = @220 /* It was one of the most erotic moments of my life. He took me there on the altar. Yes, I know, he took advantage of me. My life...my life became increasingly volatile. Sykre, it transpired, had not merely been an escapee of the Cloaks of Mulmaster, but was a Shadow Mage; one of those who practice their magics on the very edge of the weave. He was a student of the secretive Iron Fang keep, an enclave of such mages most had only heard of in hushed legend. */
  = @221 /* My brother, Shar watch over his soul, was a businessman of the worst degree, and it was not long before the coster began to falter. As all I had known disintegrated, Sykre drew me deeper into his world; and introduced me to his friends. The Night Hand. They were dark, intoxicating times. My powers grew immensely, fuelled by the desire to impress and match my new compatriots in power. Respen, my brother, saw what I had become involved in but was too pre-occupied to intervene...but...no. The story of my time with the Night Hand is--is something else. */
  = @222 /* But Sykre...I loved him, in a way. And he certainly was...hmm. */
  ++ @223 /* And what became of Sykre, in the end? */ + LK#NF4_whatbecame
  ++ @224 /* That was certainly...interesting. And by interesting I mean downright unsettling. */ + LK#NF4_interested
  ++ @225 /* You were corrupted by your love for him. One should not dedicate oneself so entirely to another; it can only lead to hardship. */ + LK#NF4_corruptedzzz
  ++ @226 /* Ah, love, the sweetest of things. */ + LK#NF4_lovesies
END

IF ~~ LK#NF4_whatbecame
  SAY @1382 /* He was hanged not long after the Time of Troubles for the murder of a group of Selunites. Much of the Night Hand met a similar fate. Some escaped, I believe...Nemphre fled to Baldur's Gate, and she may still be alive. Orachus Dilatuvel is undoubtedly still conducting his own one-man rampage in Calimport. Lord Nycticorax bought the authorities off, and still lives in Waterdeep as far as I know. And...and I, of course...he was the only man that ever frightened me. */
IF ~~ + LK#NF4_main4
END

IF ~~ LK#NF4_interested
  SAY @1383 /* My dear Bhaalspawn, one falls in love to be unsettled. Perhaps Sykre was not the wisest choice of first love, but I lived to tell the tale. To tell *you* the tale, in fact. He...he was the only man ever to frighten me...and when I felt at my most invulnerable. */
IF ~~ + LK#NF4_main4
END

IF ~~ LK#NF4_corruptedzzz
  SAY @230 /* Bhaalspawn, I never lived for purity or virtue, and neither for vice, which you'd do well enough to learn. He...he frightened me, truth be told. And he was the only man ever to do so. That was it. That was enough. I sometimes still hear his voice at my back. */
IF ~~ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NF4_lovesies
  SAY @231 /* Our love was many things, but never sweet, <CHARNAME>. */
IF ~~ + LK#NF4_main4
END

IF ~~ LK#NF4_main4
 SAY @1384 /*  Now and then I still feel him at my back, I think. What is memory? Sometimes I hate that I still see these faces when I hear a certain song or a man touches my arm. */
	++ @1385 /* It sounds like he made quite an impression on your life. I doubt you will ever truly forget him, and neither should you want to. We must understand everything that made us who we are, whether for better or worse, in order to understand ourselves. */ + LK#NF4_UNDUSELVES
	++ @1386 /* I know how you feel. I cannot catch a cat's yellow gaze at night without being reminded of Sarevok, or smell incense and not remember Gorion's lined face. */ + LK#NF4_LINNEDFEX
	++ @1387 /* Without wishing to sound rude, your relationship was hardly the romantic ideal. */ + LK#NF4_ROMTIDALE
	++ @1388 /* I am resolved never to attach myself to a man whose memory would not be a pleasant one. */ + LK#NF4_PLEASENTPET
	++ @1389 /* Gods, Ninde. Get over it, and stop running your mouth off at me. */ + LK#NF4_RUNOFFMA
END

IF ~~ LK#NF4_UNDUSELVES
  SAY @1390 /* Well put. You know, <CHARNAME>, you are remarkably self-possessed for a girl. */
  IF ~~ EXIT
END

IF ~~ LK#NF4_LINNEDFEX
  SAY @1391 /* Ah, sometimes I forget you have a moderately interesting life of your own. Perhaps we ought to talk about that sometime. (Smiles) */
  IF ~~ EXIT
END

IF ~~ LK#NF4_ROMTIDALE
  SAY @1392 /* Oh, <CHARNAME>, there are no ideals. You would do well to learn that. */
  IF ~~ EXIT
END

IF ~~ LK#NF4_PLEASENTPET
  SAY @1393 /* I think you will find that is easier said then done, Bhaalspawn. */
  IF ~~ EXIT
END

IF ~~ LK#NF4_RUNOFFMA
  SAY @1394 /* Oh, well it is certainly very far from my intentions to bore you, young Bhaalspawn. Of course, if you don't appreciate our little chats, they needn't continue, but really, don't you think telling me this before the elaborate story might've been beneficial to both of us, hmm? */
IF ~~ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ EXIT
END

// 5.
// --
IF ~Global("LK#NindeFriendTalks","GLOBAL",9)~ LK#NF5_intro
  SAY @232 /* I've not exactly been rose petals, incense and a kitten to you. Out of curiosity, have you wondered why I haven't slit your throat and made off with all your gold yet? */
  ++ @233 /* Er...no? Should I be? */ DO ~RealSetGlobalTimer("LK#NindeFriendTalksTimer","GLOBAL",2700) IncrementGlobal("LK#NindeFriendTalks","GLOBAL",1)~ + LK#NF5_suspicion
  ++ @234 /* No, because I know that deep down you *are* a kitten. */ DO ~RealSetGlobalTimer("LK#NindeFriendTalksTimer","GLOBAL",2700) IncrementGlobal("LK#NindeFriendTalks","GLOBAL",1)~ + LK#NF5_deepdown
  ++ @235 /* No, you haven't been rose petals, incense and a kitten. You've actually been a callous bitch who has embraced every opportunity to remind me of the difficulties of my situation and eradicate any hope I had left. I'd probably be much better off without you. */ DO ~RealSetGlobalTimer("LK#NindeFriendTalksTimer","GLOBAL",2700) IncrementGlobal("LK#NindeFriendTalks","GLOBAL",1)~ + LK#NF5_notroses
END

IF ~~ LK#NF5_suspicion
  SAY @236 /* No. No, you shouldn't be. I confess that was my original plan, but a girl's got to have a little fluidity when it comes to these things. */
  IF ~~ + LK#NF5_main1
END

IF ~~ LK#NF5_deepdown
  SAY @237 /* A kitten from a lion's den. I'm not so certain of that--what I am certain of is that I certainly joined this group with the intention of putting a knife to your neck, and making off with enough to gold to choke a dragon on. But I couldn't do it. */
  IF ~~ + LK#NF5_main1
END

IF ~~ LK#NF5_notroses
  SAY @238 /* My dear, it's not as though you took me along to be your friend, is it? Hm, perhaps if that's how you feel, <CHARNAME>, we shall see how well you do without me. Try not to get yourself *too* killed, sugarplum. */
  IF ~~ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3) SetGlobal("LK#NindeJoined","LOCALS",0) LeaveParty() /*teleportaway*/ EscapeArea()~ EXIT
END

IF ~~ LK#NF5_main1
  SAY @1395 /* The truth is, I like you. I didn't expect to, but I do. You're powerful, rich, and not unappealing. */
  ++ @240 /* What superficial reasons to like someone. */ + LK#NF5_superficial
  ++ @241 /* I like you too, Ninde. You're caustic, cutting cruel...and I wouldn't have you any other way. */ + LK#NF5_ilikeyou2
  ++ @242 /* I am, aren't I? Hehe. */ + LK#NF5_lookingood
  ++ @243 /* Aha, so you confess you joined this group with the intention of killing me! */ + LK#NF5_wtftraitor
END

IF ~~ LK#NF5_superficial
  SAY @244 /* Well, do you expect me to like you for your *personality*? Although that's all very well and good, it is...it is something else about you that attracts me. */
  ++ @1396 /* My astonishing good looks and womanly charms claim another victim! */ + LK#NF5_lookingood
  ++ @1397 /* The feeling is mutual, my dear. */ + LK#NF5_ilikeyou2
  ++ @247 /* Perfect. For all I know that 'something else' could be the bounty on my head. And you seem the type. */ + LK#NF5_another
END

IF ~~ LK#NF5_lookingood
  SAY @248 /* And if you had any more personal magnetism thieves would likely be able to do significantly more damage with their poorly-aimed throwing knives. I'm...I'm not exaggerating. */
  IF ~~ + LK#NF5_main2
END

IF ~~ LK#NF5_ilikeyou2
  SAY @249 /* I feel I should warn you--the people who like me are rather prone to, well...horrible death. Then again, that seems a likely enough end for you, anyway. The funny thing is, I rather don't want that for you. */
 = @1398 /* It's been a long time since I've met anyone I liked, girl. */
  ++ @1399 /* Great, so I've gone from 'Bhaalspawn' to 'girl'. You'll be asking me to address you by your title next. */ + LK#NF5_beetobee
  + ~!InParty("o#xan")~ + @1400 /* You can be so fatalistic at times! You remind me of this other elf I used to know. Evereskan, he was. A bloody funny chap, truth be told. */ + LK#NF5_remindofxan
  ++ @252 /* And...and I like you too. You're a worthy companion and despite your multitude of flaws...a, erm, interesting friend. */ + LK#NF5_andilike
  ++ @253 /* (smile) If it so rarely bestowed, then your appreciation is an even greater honour, Ninde. */ + LK#NF5_greathonour
END

IF ~~ LK#NF5_main2
  SAY @1398 /* It's been a long time since I've met anyone I liked, girl. */
  ++ @1399 /* Great, so I've gone from 'Bhaalspawn' to 'girl'. You'll be asking me to address you by your title next. */ + LK#NF5_beetobee
  ++ @252 /* And...and I like you too. You're a worthy companion and despite your multitude of flaws...a, erm, interesting friend. */ + LK#NF5_andilike
  ++ @253 /* (smile) If it so rarely bestowed, then your appreciation is an even greater honour, Ninde. */ + LK#NF5_greathonour
END

IF ~~ LK#NF5_wtftraitor
  SAY @1401 /* Verily, I did. */
  IF ~~ + LK#NF5_traitor
END

IF ~~ LK#NF5_another
  SAY @255 /* Verily, that was my sole intention when I first joined your group. */
  IF ~~ + LK#NF5_traitor
END

IF ~~ LK#NF5_traitor
  SAY @1402 /* But what does that matter? I did not. Could not. If you had any more personal magnetism thieves would likely be able to do significantly more damage with their poorly-aimed throwing knives. I'm...I'm not exaggerating. It's been a long time since I've met anyone I liked, girl. */
  ++ @1399 /* Great, so I've gone from 'Bhaalspawn' to 'girl'. You'll be asking me to address you by your title next. */ + LK#NF5_beetobee
  ++ @252 /* And...and I like you too. You're a worthy companion and despite your multitude of flaws...a, erm, interesting friend. */ + LK#NF5_ilikeyou2
  ++ @253 /* (smile) If it so rarely bestowed, then your appreciation is an even greater honour, Ninde. */ + LK#NF5_greathonour
  ++ @257 /* I'm afraid I cannot tolerate your double-crossing any longer, Ninde! You admit you joined this group with the sole intention of murdering me, then expect our conversation to continue? Hah! Draw steel! */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3) SetGlobal("LK#NindeJoined","LOCALS",0) LeaveParty() Enemy()~ EXIT
END

IF ~~ LK#NF5_beetobee
  SAY @258 /* Lady Amblecrown; it has a certain elegance on the tongue, does it not? (wink) */
  IF ~~ EXIT
END

IF ~~ LK#NF5_andilike
  SAY @259 /* Hah, 'interesting' might very well be the word, sugarplum. */
  IF ~~ EXIT
END

IF ~~ LK#NF5_greathonour
  SAY @260 /* Goodness, you're more slimy then Aran Linvail's washcloth today, dear. (smirk) */
  IF ~~ EXIT
END

IF ~~ LK#NF5_remindofxan
  SAY @1403 /* And he was undoubtedly a moon elf. I am a sun elf. Our name fits our disposition! Well, now and then. (Wink) */
  IF ~~ EXIT
END

// 6.
// --
IF ~Global("LK#NindeFriendTalks","GLOBAL",11)~ LK#NF6_intro
  SAY @261 /* Correct me if I'm wrong, my dear Bhaalspawn, but it seems as though you haven't given much thought as to how you intend to prevent Bodhi, Irenicus and company from using us as so many jars of strawberry preserve. */
  = @262 /* From grinding our bones into luxury bath salts, performing an elaborate puppet show with our skulls, perhaps, if they feel any sort of civic duty, using our dismembered arms to pick up litter from Waukeen's Promenade. Oh, and to complete the festivities, they'll do an abstract finger-painting of our crushing defeat on our dried hides. It will be so terribly amusing for everyone who isn't us. And frankly, I care very little for any who isn't us. Or rather, me. */
  ++ @263 /* And then make stylish lace gloves from our entrails, I suppose. Yes, I'm working on a way round that. */ DO ~RealSetGlobalTimer("LK#NindeFriendTalksTimer","GLOBAL",2700) IncrementGlobal("LK#NindeFriendTalks","GLOBAL",1)~ + LK#NF6_forget
  ++ @264 /* Hah! I'd like to see that leathery undead bimbo and pasty-faced maggotty mageling try! */ DO ~RealSetGlobalTimer("LK#NindeFriendTalksTimer","GLOBAL",2700) IncrementGlobal("LK#NindeFriendTalks","GLOBAL",1)~ + LK#NF6_machoman
  ++ @265 /* I doubt there can be any planning or strategising for the confrontation that is to come. We will survive, or we will not. It's as simple as that. */ DO ~RealSetGlobalTimer("LK#NindeFriendTalksTimer","GLOBAL",2700) IncrementGlobal("LK#NindeFriendTalks","GLOBAL",1)~ + LK#NF6_liveornot
  ++ @266 /* Worry not, Ninde, I have a flawless strategy all worked out. */ DO ~RealSetGlobalTimer("LK#NindeFriendTalksTimer","GLOBAL",2700) IncrementGlobal("LK#NindeFriendTalks","GLOBAL",1)~ + LK#NF6_flawless
END

IF ~~ LK#NF6_forget
  SAY @267 /* You seem to forget, sugarlump, that Bodhi and myself were on first-name terms for many years, and I've been busy plotting the demise of that neck-munching know-it-all since before you could reach the top shelves in your beloved library. */
  IF ~~ + LK#NF6_knowher
END

IF ~~ LK#NF6_machoman
  SAY @1404 /* And that is precisely the sort of posturing that got you into this mess in the first place, and certainly won't get you out of it. The dirtnapping slattern and booming-voiced sadist will, sooner or later, come back to finish you off, and stomping about like some snout-nosed ursine isn't going to avert that. */
  = @269 /* You seem to have forgot that I am, perhaps, the best equipped to help you get Bodhi that extra little bit dead. And I assure you, no one has more passion for the endeavour. In fact, I've been busy plotting the demise of that neck-munching know-it-all since before you could reach the top shelves in your beloved library. */
  ++ @270 /* Yes, I suppose you're a veritable font of inside information on our enemies...it could come in very helpful. */ + LK#NF6_share
  ++ @278 /* Why don't you like Bodhi? Aside for the obvious, predatory-killer reasons. */ + LK#NF6_whynotlike
  ++ @272 /* And I suppose you're overflowing with helpful suggestions? As far as I can see, brute force is the most effective way to deal with Bodhi and her ilk. */ + LK#NF6_bruteforce
  ++ @273 /* Keep your trap shut, and leave the battle-plan to those better equipped to carry it out. */ + LK#NF6_endall
END

IF ~~ LK#NF6_liveornot
  SAY @274 /* And I'm afraid, <CHARNAME>, this is where you are wrong. You seem to forget, sugarlump, that Bodhi and myself were on first-name terms for many years, and I've been busy plotting the demise of that neck-munching know-it-all since before you could reach the top shelves in your beloved library. */
  IF ~~ + LK#NF6_knowher
END

IF ~~ LK#NF6_knowher
  SAY @275 /* I also know her. I have it on good authority that her favourite flower is the daffodil and she doesn't like cheese, that strange film that often forms on the top of hot drinks, or people touching her feet. In short, no-one is better equipped to help you destroy her, and no-one has more passion for doing so. */
  ++ @276 /* Perfect! We place a bunch of daffodils in the middle of her crypt, and set lots of bear-traps round them. When she comes skulking out to get the flowers, she'll get caught in one of the bear-traps, and then, before she knows what's hit her, CHEESE! Cheese, cheese, cheese from every direction! And when she is finally subdued, we'll all touch her feet! Why did I not think of it before? */ + LK#NF6_madplan
  ++ @270 /* Yes, I suppose you're a veritable font of inside information on our enemies...it could come in very helpful. */ + LK#NF6_share
  ++ @277 /* What use is any of this banal trivia to me, Ninde? I'm trying to fight her, not write an amusing profile on her for 'Bloodsucking Fiends Periodical.' */ + LK#NF6_banal
  ++ @278 /* Why don't you like Bodhi? Aside for the obvious, predatory-killer reasons. */ + LK#NF6_whynotlike
END

IF ~~ LK#NF6_flawless
  SAY @279 /* And you would rely on these hapless buffoons to perform it? My dear, with an adventuring group this dire, even the Red Knight would not be able to formulate a fool-proof stratagem for victory. It would appear that I am, as always, your greatest asset. */
  ++ @281 /* That doesn't inspire much hope, but go on. */ + LK#NF6_forget
  ++ @282 /* How is it you can help me? */ + LK#NF6_forget
  ++ @283 /* You? My greatest asset? Ha! I only keep you around for the view. */ + LK#NF6_endall
END

IF ~~ LK#NF6_madplan
  SAY @284 /* (smiles) <CHARNAME>, however endearing your silliness can be, it is, upon occasion, grating. I merely sought to illustrate my encyclopaedic knowledge of the wench, and the course of action it suggests. Which, I believe, is subtlety. */
  = @285 /* She has made a very great mistake already; releasing you into Spellhold. */
  IF ~~ + LK#NF6_main1
END

IF ~~ LK#NF6_share
  SAY @286 /* I am. And this encyclopaedic knowledge of the wench has led me to conclude that you are made a greater threat to her by the sheer fact she believes you are not one. */
  ++ @287 /* That's all very well and good, but what should I *do*? */ + LK#NF6_main2
  ++ @288 /* Wait...so what is it that you are suggesting we do, exactly? */ + LK#NF6_main2
  ++ @289 /* Is that all? I had figured that out myself. */ + LK#NF6_endall
END

IF ~~ LK#NF6_banal
  SAY @290 /* As a necromancer, and hence an expert on the topic of bloodsucking fiends, I believe I'd know if such a publication exists, and happen to be fairly sure it doesn't. But anyway, Bhaalspawn, do not be so dense; I merely sought to illustrate my encyclopaedic knowledge of the wench, and the course of action it suggests. Which, I believe, is subtlety. */
  = @285 /* She has made a very great mistake already; releasing you into Spellhold. */
  IF ~~ + LK#NF6_main1
END

IF ~~ LK#NF6_whynotlike
  SAY @291 /* Because she is badly dressed, bestial, and insists on decorating her lair in that garish Mulhorandi fashion; hieroglyphic motifs are best used in small doses, a simple rule of interior design Bodhi remains blissfully ignorant of. She is irritatingly cryptic, cryptically irritating, and, when one thinks about it, more a mosquito than a queen among the undead. */
  ++ @292 /* You obviously *want* to destroy her, but do you have an effective way of doing so? */ + LK#NF6_mistake
  ++ @293 /* She gets my blood up to, if you'll excuse the pun. So I suppose you have a clever plan as to how to kill her slowly, painfully and with optimal humiliation? */ + LK#NF6_mistake
  ++ @294 /* I care little for your personal dislike of her. She's merely an obstacle in my way to Irenicus. */ + LK#NF6_mistake
END

IF ~~ LK#NF6_mistake
  SAY @295 /* Fortunately, she has made a very great mistake already; releasing you into Spellhold. */
  IF ~~ + LK#NF6_main1
END

IF ~~ LK#NF6_bruteforce
  SAY @296 /* Dear, you're so very, very wrong. I believe the situation calls overwhelmingly for subtlety; you are made a greater threat to her by the sheer fact she believes you are not one. */
  ++ @287 /* That's all very well and good, but what should I *do*? */ + LK#NF6_main2
  ++ @288 /* Wait...so what is it that you are suggesting we do, exactly? */ + LK#NF6_main2
  ++ @289 /* Is that all? I had figured that out myself. */ + LK#NF6_endall
END

IF ~~ LK#NF6_endall
  SAY @297 /* If you truly hold my opinions in this matter in such low esteem, you'll hear no more of them, dolt. You'll choke on your own ineptitude, sooner or later. */
  IF ~~ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NF6_main1
  SAY @298 /* She did this under the strength of her belief in her own invulnerability, and this is her greatest weakness. She places too much stock in your divine heritage, and believes without it you are helpless. The...the strange new ways your heritage have revealed themselves forced her to re-evaluate this somewhat, but nonetheless, you are made a greater threat to her by the sheer fact she believes you are not one. */
  ++ @287 /* That's all very well and good, but what should I *do*? */ + LK#NF6_main2
  ++ @288 /* Wait...so what is it that you are suggesting we do, exactly? */ + LK#NF6_main2
  ++ @289 /* Is that all? I had figured that out myself. */ + LK#NF6_endall
END

IF ~~ LK#NF6_main2
  SAY @300 /* The most effective course of action is undoubtedly caution--intrigue. Keep a low profile, let her believe you're busy making friends with the worms and that insufferable riddle spirit in Spellhold. Return to Athkatla, find friends wherever there are friends to be found, and attack. I have little doubt she has returned to her old lair--and she will be severely weakened. With any luck the task should be even easier than it was last time. But under no account are you to allow her to see you are yet strong, even with Bhaal's essence removed. */
  = @301 /* While it is true that your recently acquired new...'abilities' may have given her some indication of this...denial is a very powerful thing. */
  ++ @302 /* You think storming those vampire-ridden crypts was *easy* last time, do you? */ + LK#NF6_easyeh
  ++ @303 /* That's not a bad idea, actually. There are many in Athkatla who owe us favours who I'm sure we could rope into helping. */ + LK#NF6_ropeinto
  ++ @304 /* Well, that was useless. */ + LK#NF6_endall
  ++ @305 /* Bodhi is small fry compared to Irenicus--he is the priority. Have you any bright ideas for overcoming him? */ + LK#NF6_brightideas
END

IF ~~ LK#NF6_easyeh
  SAY @306 /* I would've found it easy in your position, but then, it has been said that the only things I am not good at are being poor, getting into the trouble, and saying no to handsome men. Hehe. */
  ++ @307 /* Aren't you forgetting a few things, there? (grin) */ + LK#NF6_forgetting
  ++ @308 /* And it's certainly true! You're indispensable, Ninde. */ + LK#NF6_indispensable
  ++ @1405 /* You and me both, darling. */ + LK#NF6_bedrollz
  ++ @310 /* Don't make me laugh, fool. */ EXIT
END

IF ~~ LK#NF6_ropeinto
  SAY @311 /* It's not a bad idea at all, is it? Then again, it has been said that the only things I am not good at are being poor, getting into the trouble, and saying no to handsome men. Hehe. */
  ++ @307 /* Aren't you forgetting a few things, there? (grin) */ + LK#NF6_forgetting
  ++ @308 /* And it's certainly true! You're indispensable, Ninde. */ + LK#NF6_indispensable
  ++ @1405 /* You and me both, darling. */ + LK#NF6_bedrollz
  ++ @310 /* Don't make me laugh, fool. */ EXIT
END

IF ~~ LK#NF6_brightideas
  SAY @312 /* As far as I can tell, Irenicus is all tight trousers and creepy sewn-on face. I would find it simple enough to defeat him, in your situation - but then, it has been said that the only things I am not good at are being poor, getting into the trouble, and saying no to handsome men. Hehe. */
  ++ @307 /* Aren't you forgetting a few things, there? (grin) */ + LK#NF6_forgetting
  ++ @308 /* And it's certainly true! You're indispensable, Ninde. */ + LK#NF6_indispensable
  ++ @1405 /* You and me both, darling. */ + LK#NF6_bedrollz
  ++ @310 /* Don't make me laugh, fool. */ EXIT
END

IF ~~ LK#NF6_forgetting
  SAY @313 /* Ah, yes. Seal clubbing; I simply can't abide by it. And I can't play the harpsichord, either. (smiles) */
  IF ~~ EXIT
END

IF ~~ LK#NF6_indispensable
  SAY @314 /* It's nice to see that my status as a generally exemplary elf is appreciated. (smiles) */
  IF ~~ EXIT
END

IF ~~ LK#NF6_bedrollz
  SAY @1406 /* Ah, yes. Your standards could do with some improvement, but I can't fault a girl for trying. (smiles) */
  IF ~~ EXIT
END

// 7.
// --
IF ~Global("LK#NindeFriendTalks","GLOBAL",13)~ LK#NF7_intro
  SAY @421 /* Whenever I see blood I can't help but think of Lassal, and as you can imagine, with the amount of it that's flying about these days, I end up thinking of him often...and not always unkindly. */
  ++ @422 /* I got the impression you despised him. */ DO ~RealSetGlobalTimer("LK#NindeFriendTalksTimer","GLOBAL",2700) IncrementGlobal("LK#NindeFriendTalks","GLOBAL",1)~ + LK#NF7_despised
  ++ @423 /* He tricked you into giving away your soul without making you aware of the consequences of doing so. I wouldn't be able to forgive him that, if I were you. */ DO ~RealSetGlobalTimer("LK#NindeFriendTalksTimer","GLOBAL",2700) IncrementGlobal("LK#NindeFriendTalks","GLOBAL",1)~ + LK#NF7_givingsoul
  ++ @424 /* What does it matter? He's dead now, and by your hand. */ DO ~RealSetGlobalTimer("LK#NindeFriendTalksTimer","GLOBAL",2700) IncrementGlobal("LK#NindeFriendTalks","GLOBAL",1)~ + LK#NF7_byurhand
  ++ @425 /* He was merely Bodhi's fumbling henchman. Don't worry yourself over him. */ DO ~RealSetGlobalTimer("LK#NindeFriendTalksTimer","GLOBAL",2700) IncrementGlobal("LK#NindeFriendTalks","GLOBAL",1)~ + LK#NF7_henchman
  ++ @426 /* Oh Gods, you weren't in love with him, were you? That would be one perverse revelation too many. */ DO ~RealSetGlobalTimer("LK#NindeFriendTalksTimer","GLOBAL",2700) IncrementGlobal("LK#NindeFriendTalks","GLOBAL",1)~ + LK#NF7_pervrev
END

IF ~~ LK#NF7_despised
  SAY @427 /* I suppose I did, by the end, when the fool had muzzled himself for the sake of Bodhi. But it was not always so. He was not always a gelded fool, gathering dust in the recesses of that dank tomb. Our relationship was certainly...complex. Would you care to hear about it? */
  ++ @428 /* Why not. */ + LK#NF7_main1
  ++ @429 /* You know how I love your stories, Ninde. Of course. */ + LK#NF7_main1
  ++ @430 /* We haven't the time right now, Ninde. */ EXIT
  ++ @431 /* I'd rather give Irenicus a lovely big kiss. */ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NF7_givingsoul
  SAY @432 /* I did, at first, but hatred is a very difficult thing to maintain, <CHARNAME>, especially when you are allied with someone for as long as I was with Lassal. More then a decade...Would you care to hear more about the years I spent with him? */
  ++ @428 /* Why not. */ + LK#NF7_main1
  ++ @429 /* You know how I love your stories, Ninde. Of course. */ + LK#NF7_main1
  ++ @430 /* We haven't the time right now, Ninde. */ EXIT
  ++ @431 /* I'd rather give Irenicus a lovely big kiss. */ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NF7_byurhand
  SAY @433 /* And <CHARNAME>, I'm certainly not having any second thoughts about that. It is merely difficult to maintain ones hatred after so long. More then a decade, infact...would you care to hear about it? */
  ++ @428 /* Why not. */ + LK#NF7_main1
  ++ @429 /* You know how I love your stories, Ninde. Of course. */ + LK#NF7_main1
  ++ @430 /* We haven't the time right now, Ninde. */ EXIT
  ++ @431 /* I'd rather give Irenicus a lovely big kiss. */ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NF7_henchman
  SAY @434 /* The fool gelded himself when Bodhi appeared, but he was not always so helpless. He was powerful once, not when I first met him--but that was a decade ago. Over a decade. Would you care to hear how I spent that decade? */
  ++ @428 /* Why not. */ + LK#NF7_main1
  ++ @429 /* You know how I love your stories, Ninde. Of course. */ + LK#NF7_main1
  ++ @430 /* We haven't the time right now, Ninde. */ EXIT
  ++ @431 /* I'd rather give Irenicus a lovely big kiss. */ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NF7_pervrev
  SAY @435 /* (sigh) As I've told you before, Bhaalspawn, I'm not *that* kind of necromancer. After a decade one grows somewhat attached to even the most repellent creature. A decade...care to hear the story of it? */
  ++ @428 /* Why not. */ + LK#NF7_main1
  ++ @429 /* You know how I love your stories, Ninde. Of course. */ + LK#NF7_main1
  ++ @430 /* We haven't the time right now, Ninde. */ EXIT
  ++ @431 /* I'd rather give Irenicus a lovely big kiss. */ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NF7_main1
  SAY @436 /* Very well. Hmm... */
  = @437 /* I don't know how it was that he did it, wrested my soul from me, but their magics worked in the Time of Troubles, when no others did. At first I was bound to him by the idea that he had the knowledge to reverse his actions, and that if I served him well he would do so. I was sadly disillusioned. */
  = @438 /* I was not to see any of my friends or acquaintances from Waterdeep again. We travelled. Through Calimshan, Tethyr, Cormyr, Chessenta and to the deepest eastern reaches of Faerun--Mulhorand. During the nights we would ride in open-topped carriages through streets in Calimport that reeked of jasmine and sea salt to watch the half-efreet casting on street corners. We listened to brass elfin harps ringing clear in the Wealdath, and in Mulhorand saw the white processions marching from limestone temples and the Lords in chariots drawn by snarling crocodiles. */
  = @439 /* It was Var the Golden I loved best, for the fields of grain after which it is named, ever-collapsing in the wind that blew in from the fierce north. I was drawn into the fire and smoke of it all. In Waterdeep our house had been full of the twisting furniture and liquid silk of these lands...but I fell in love with their sands, their hot currents, their people. */
  ++ @440 /* It sounds as though your time with Lassal was far from torturous. */ + LK#NF7_main2
  ++ @441 /* Such experiences...I one day hope to travel as you have. */ + LK#NF7_travel
  ++ @442 /* So Lassal took you to the east. But what next? Why did you end up in Amn? */ + LK#NF7_main2
END

IF ~~ LK#NF7_travel
  SAY @443 /* I forget you have seen so little of the world, though many of its wonders have passed through your hands. If anything, you must at least ride a camel. A very strange experience. I shall continue. */
  IF ~~ + LK#NF7_main2
END

IF ~~ LK#NF7_main2
  SAY @444 /* I was Lassal's daylight emissary. While he napped in his sarcophagi in his marbled halls, his fine eyes turned inward, I would undermine his enemies and find him new allies. I was not only able to walk abroad as he could not, but I had the advantage of surprise--powdered, made prim who would take me for the servant of an undead Lord? I was rewarded for my service. The ankh was from a Selunite priestess he drained in Mulhorand...in my honour. (smile) */
  = @445 /* It took...it took a long time before I noticed the hollowness. Before I noticed I did not even balk at having the women carried away--from whores to nobles--that he would drink. In my time with the Night Hand...what I wouldn't have given to be remorseless then. Then. */
  = @446 /* When all the wine in Estagund turned sour in my mouth, Bodhi came. I know not how he knew her, but he was enamoured of her, and I became less his consort, more his serving maid, killing who he wished killed with all the numbness of the skeletons he raised to fill his goblet with blood. I had no choice but to serve...what had now become my sentence. */
  = @447 /* And then you came. Ho hum. */
  ++ @448 /* An interesting tale. */ + LK#NF7_taleointer
  ++ @449 /* And you know no more about were Bodhi came from? About her past? */ + LK#NF7_anythingbo
  ++ @450 /* Why did you not simply leave them? */ + LK#NF7_leavem
  ++ @451 /* It seems to me you've always been someone's servant. First Sykre, then Lassal. */ + LK#NF7_servant
END

IF ~~ LK#NF7_taleointer
  SAY @452 /* I suppose it is. <CHARNAME>, make no mistake; I have seen much...and yet I have seen so little. */
  IF ~~ + LK#NF7_main3
END

IF ~~ LK#NF7_anythingbo
  SAY @453 /* Unfortunately for you, dear, I had very little interest in Bodhi, and remarkable contempt for her. She was not as bestial once, as she is now. She used to wear red satin and her hair long. She never liked me, and I never liked her, and this holds true today. But...I tire of this. We will speak again soon. */
  IF ~~ EXIT
END

IF ~~ LK#NF7_leavem
  SAY @454 /* Because what else was I to do? I would've wasted away somewhere, and I suppose it took my mind off it. I suppose I still clung to the hope he might take pity and restore me...which was foolish. (sigh) */
  = @455 /* <CHARNAME>, make no mistake; I have seen much...and yet I have seen so little. */
  IF ~~ + LK#NF7_main3
END

IF ~~ LK#NF7_servant
  SAY @456 /* You are right, Bhaalspawn, you are. And do not think I do not know it. Perhaps that is what I wanted...perhaps that is where I fell. */
  = @455 /* <CHARNAME>, make no mistake; I have seen much...and yet I have seen so little. */
  IF ~~ + LK#NF7_main3
END

IF ~~ LK#NF7_main3
  SAY @457 /* I have lived to an age that any peasant might consider ripe, stroked tiger skins and the crusted sapphires of the east with these fingers...and yet I wanted more from my life. I don't know what, but more. Maybe I wished for glory. Maybe to find what remains of my bloodline. Maybe to choose when my own death will come. */
  ++ @458 /* I doubt there are any who do not wish they had done more with their lives. 'Tis the condition of all mortals. */ + LK#NF7_mortals
  ++ @459 /* There is still time for these things, Ninde. You are wrong to think your situation is hopeless. */ + LK#NF7_wrongto
  ++ @460 /* You travel with me, Ninde, and we do great things. Your name will be remembered alongside my own...bards will write songs about you! Surely that's some consolation? */ + LK#NF7_console
END

IF ~~ LK#NF7_mortals
  SAY @1407 /* (smile) Forgive me my arrogance, <CHARNAME>, but I am no mortal, and I am not meant to live as one. There is this gnawing, Bhaalspawn, and you cannot understand it. You are only a girl after all. */
  IF ~~ EXIT
END

IF ~~ LK#NF7_wrongto
  SAY @1408 /* (smile) You forget, <CHARNAME>, I was not born mortal, I was made mortal. I am supposed to be timeless. There is this relentless gnawing, Bhaalspawn, and you cannot understand it. Not yet. You are just a girl. */
  IF ~~ EXIT
END

IF ~~ LK#NF7_console
  SAY @1409 /* Perhaps; or perhaps I am once again insignificant in the shadow of a greater person. It is kind of you to console me, but you know that it is <CHARNAME>, the Bhaalspawn who will be timeless where I was meant to be. (Smile) You forget, <CHARNAME>, I was not born mortal, I was made mortal. There is this relentless gnawing, Bhaalspawn, and you cannot understand it. Not yet. You are just a girl. */
  IF ~~ EXIT
END

// 8. Post-encounter
// -----------------
IF ~Global("LK#NindeFriendTalks","GLOBAL",15)~ LK#NF8
  SAY @698 /* Don't look at me like that, <CHARNAME>. */
  ++ @699 /* You told me that Shadow Thieves murdered your brother. */ DO ~IncrementGlobal("LK#NindeFriendTalks","GLOBAL",1)~ + LK#NF8_shathieves
  ++ @700 /* Like what? Like you're the kind of woman who would murder her father and brother? */ DO ~IncrementGlobal("LK#NindeFriendTalks","GLOBAL",1)~ + LK#NF8_murderss
  ++ @701 /* I'm not in the least bit upset with you, dear, I just don't know why you didn't tell me sooner. It simply proves to me what an enterprising girl you were. */ DO ~IncrementGlobal("LK#NindeFriendTalks","GLOBAL",1)~ + LK#NF8_enterpri
  ++ @702 /* You disgust me, Ninde. You slaughtered your family, then covered your tracks. I spared you, but cannot allow you to travel with us any longer. */ DO ~IncrementGlobal("LK#NindeFriendTalks","GLOBAL",1)~ + LK#NF8_longer
END

IF ~~ LK#NF8_shathieves
  SAY @1410 /* They--they did not. But neither did I, <CHARNAME>! I did not murder him at any rate. */
  IF ~~ + LK#NF8_main
END

IF ~~ LK#NF8_murderss
  SAY @704 /* I did not kill Respen, <CHARNAME>! I--I did not murder him, at any rate. */
  IF ~~ + LK#NF8_main
END

IF ~~ LK#NF8_enterpri
  SAY @705 /* Do not speak like that, <CHARNAME>! You know nothing of this, nothing! Enterprising? Has your life made you so utterly insensible to the implications of death, of killing? */
  = @704 /* I did not kill Respen, <CHARNAME>! I--I did not murder him, at any rate. */
  IF ~~ + LK#NF8_main
END

IF ~~ LK#NF8_main
  SAY @706 /* ...I--he challenged me, about my behaviour with Sykre and the Night Hand and things escalated--it was the Time of Troubles...my magics were erratic and I...I killed him. */
  ++ @707 /* And what of Inaed, your father? I suppose that was an accident, too. */ + LK#NF8_accitoo
  ++ @708 /* An unfortunate mistake on your part. You must feel such remorse. */ + LK#NF8_misteak
  ++ @709 /* I think you're lying to me again. You are a talented spellcaster, and yet you expect me to believe you simply lost control of yourself like that? */ + LK#NF8_likethat
  ++ @710 /* An accident? A likely story. You murderous witch, you killed those who only ever sought to care for you! */ + LK#NF8_caryou
  ++ @711 /* Eh, well it's not as if I care either way. */ + LK#NF8_eithway
END

IF ~~ LK#NF8_longer
  SAY @712 /* Then you have protected me thus far and I can ask for no more. Thank you, Bhaalspawn. I will fondly remember our time together, and am sorry it had to end with such...such bitterness. Farewell. */
  IF ~~ DO ~SetGlobal("LK#NindeJoined","LOCALS",0) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ LK#NF8_accitoo
  SAY @713 /* For this...for this I have no excuse. I killed with a darker mind, that night. */
  ++ @714 /* Care to elaborate? */ + LK#NF8_elaborate
  ++ @715 /* I think your last shreds of compassion probably died with your brother. */ + LK#NF8_shreds
  ++ @716 /* The powerful are often struck by murderous feeling. */ + LK#NF8_feelin
  ++ @717 /* So you did murder him, as the paladin claimed! */ + LK#NF8_claimed
END

IF ~~ LK#NF8_misteak
  SAY @718 /* The sort of mistake one only makes once. But I have killed with a darker mind than I had that night. */
  ++ @719 /* I am not surprised. */ + LK#NF8_nodoubt
  ++ @714 /* Care to elaborate? */ + LK#NF8_elaborate
  ++ @720 /* What of your father? Did you murder him, as the paladin claimed? */ + LK#NF8_claimed
  ++ @715 /* I think your last shreds of compassion probably died with your brother. */ + LK#NF8_shreds
  ++ @716 /* The powerful are often struck by murderous feeling. */ + LK#NF8_feelin
  ++ @721 /* I, too, have killed inadvertently. It is not pleasant. */ + LK#NF8_inadvert
END

IF ~~ LK#NF8_likethat
  SAY @722 /* The coming of the Gods disrupted the weave--whatever my intentions, I could not have cast correctly. That night...that night, I did not have murder in mind. */
  ++ @723 /* An accident, then. But what about Inaed? */ + LK#NF8_watinaed
  ++ @720 /* What of your father? Did you murder him, as the paladin claimed? */ + LK#NF8_claimed
  ++ @721 /* I, too, have killed inadvertently. It is not pleasant. */ + LK#NF8_inadvert
  ++ @724 /* I am still not certain I believe you. */ + LK#NF8_notcert
END

IF ~~ LK#NF8_caryou
  SAY @725 /* Keep your wig on, <CHARNAME>. The coming of the Gods disrupted the weave--whatever my intentions, I could not have cast correctly. That night...that night, I did not have murder in mind. */
  ++ @723 /* An accident, then. But what about Inaed? */ + LK#NF8_watinaed
  ++ @720 /* What of your father? Did you murder him, as the paladin claimed? */ + LK#NF8_claimed
  ++ @721 /* I, too, have killed inadvertently. It is not pleasant. */ + LK#NF8_claimed
  ++ @726 /* Still, I do not believe you! How can you expect me to, after the revelations of today? */ + LK#NF8_notcert
  ++ @727 /* You lie, evil-doer! It was foolish of me to trust you! */ + LK#NF8_trusya
END

IF ~~ LK#NF8_eithway
  SAY @728 /* Your anger would be preferable to your apathy, <CHARNAME>...nonetheless, thank you for not surrendering me to Archonson. */
  = @729 /* Let us...let us continue. */
  IF ~~ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NF8_elaborate
  SAY @730 /* I poisoned Inaed, the doddering old fool. Although...my motives were confused even then. Perhaps I wished to put into practice all I had been studying, see for myself how easy it was to tip the scale. Or perhaps it was something as mundane as simply wanting his money. */
  ++ @731 /* What happened was unfortunate, Ninde, but do not dwell upon it. Not a day goes by when someone or something does not die by my hand, and yet I cannot become preoccupied by it. */ + LK#NF8_emoshun
  ++ @732 /* I often find myself wishing you were...kinder, somehow. */ + LK#NF8_kinder
  ++ @733 /* It's nice you're so pragmatic about these things. */ + LK#NF8_prgmatic
  ++ @734 /* Do you regret killing the Amblecrowns? It certainly seems like you do, but one can never be sure with you. */ + LK#NF8_regret
END

IF ~~ LK#NF8_nodoubt
  SAY @735 /* I had hoped you would be. What kind of abhorrent creature am I if you think killing my own brother was simply...simply an unpleasant diversion for me? I have only killed with such arrogance once. Yes...my father, Inaed. I poisoned him. */
  = @736 /* But even then my motives were confused. Perhaps I wished to put into practice all I had been studying, see for myself how easy it was to tip the scale. Or perhaps it was something as mundane as simply wanting his money. */
  ++ @731 /* What happened was unfortunate, Ninde, but do not dwell upon it. Not a day goes by when someone or something does not die by my hand, and yet I cannot become preoccupied by it. */ + LK#NF8_emoshun
  ++ @732 /* I often find myself wishing you were...kinder, somehow. */ + LK#NF8_kinder
  ++ @733 /* It's nice you're so pragmatic about these things. */ + LK#NF8_prgmatic
  ++ @734 /* Do you regret killing the Amblecrowns? It certainly seems like you do, but one can never be sure with you. */ + LK#NF8_regret
  ++ @737 /* You are an abhorrent creature indeed, and one I no longer want in this group! */ + LK#NF8_longer
END

IF ~~ LK#NF8_shreds
  SAY @738 /* Probably a little before that, when I killed my father. I poisoned him. */
  = @736 /* But even then my motives were confused. Perhaps I wished to put into practice all I had been studying, see for myself how easy it was to tip the scale. Or perhaps it was something as mundane as simply wanting his money. */
  ++ @731 /* What happened was unfortunate, Ninde, but do not dwell upon it. Not a day goes by when someone or something does not die by my hand, and yet I cannot become preoccupied by it. */ + LK#NF8_emoshun
  ++ @732 /* I often find myself wishing you were...kinder, somehow. */ + LK#NF8_kinder
  ++ @733 /* It's nice you're so pragmatic about these things. */ + LK#NF8_prgmatic
  ++ @734 /* Do you regret killing the Amblecrowns? It certainly seems like you do, but one can never be sure with you. */ + LK#NF8_regret
  ++ @737 /* You are an abhorrent creature indeed, and one I no longer want in this group! */ + LK#NF8_longer
END

IF ~~ LK#NF8_feelin
  SAY @739 /* You forget, <CHARNAME>, I am not built of evil as you are. My motives were ever confused...my father, for example. I poisoned him. Perhaps I wished to put into practice all I had been studying, see for myself how easy it was to tip the scale. Or perhaps it was something as mundane as simply wanting his money? Who can say. */
  ++ @731 /* What happened was unfortunate, Ninde, but do not dwell upon it. Not a day goes by when someone or something does not die by my hand, and yet I cannot become preoccupied by it. */ + LK#NF8_emoshun
  ++ @732 /* I often find myself wishing you were...kinder, somehow. */ + LK#NF8_kinder
  ++ @733 /* It's nice you're so pragmatic about these things. */ + LK#NF8_prgmatic
  ++ @734 /* Do you regret killing the Amblecrowns? It certainly seems like you do, but one can never be sure with you. */ + LK#NF8_regret
  ++ @737 /* You are an abhorrent creature indeed, and one I no longer want in this group! */ + LK#NF8_longer
END

IF ~~ LK#NF8_claimed
  SAY @740 /* Yes. And my father, too. Apologies for not telling you sooner, but why tell the truth when a lie is so much more appealing for all involved? Besides, my intentions and my actions are rather divorced from each other. When I killed my brother, I did not mean to. */
  = @741 /* When I killed my father, I poisoned him. Perhaps I wished to put into practice all I had been studying, see for myself how easy it was to tip the scale. Or perhaps it was something as mundane as simply wanting his money? Who can say. */
  ++ @731 /* What happened was unfortunate, Ninde, but do not dwell upon it. Not a day goes by when someone or something does not die by my hand, and yet I cannot become preoccupied by it. */ + LK#NF8_emoshun
  ++ @732 /* I often find myself wishing you were...kinder, somehow. */ + LK#NF8_kinder
  ++ @733 /* It's nice you're so pragmatic about these things. */ + LK#NF8_prgmatic
  ++ @734 /* Do you regret killing the Amblecrowns? It certainly seems like you do, but one can never be sure with you. */ + LK#NF8_regret
  ++ @737 /* You are an abhorrent creature indeed, and one I no longer want in this group! */ + LK#NF8_longer
END

IF ~~ LK#NF8_inadvert
  SAY @742 /* Now, completely intentional killing--that's a whole different kettle of fish. My father for example. I poisoned him. */
  = @743 /* Perhaps I wished to put into practice all I had been studying, see for myself how easy it was to tip the scale. Or perhaps it was something as mundane as simply wanting his money? Who can say. */
  ++ @731 /* What happened was unfortunate, Ninde, but do not dwell upon it. Not a day goes by when someone or something does not die by my hand, and yet I cannot become preoccupied by it. */ + LK#NF8_emoshun
  ++ @732 /* I often find myself wishing you were...kinder, somehow. */ + LK#NF8_kinder
  ++ @733 /* It's nice you're so pragmatic about these things. */ + LK#NF8_prgmatic
  ++ @737 /* You are an abhorrent creature indeed, and one I no longer want in this group! */ + LK#NF8_longer
END

IF ~~ LK#NF8_watinaed
  SAY @744 /* I poisoned him. */
  = @743 /* Perhaps I wished to put into practice all I had been studying, see for myself how easy it was to tip the scale. Or perhaps it was something as mundane as simply wanting his money? Who can say. */
  ++ @731 /* What happened was unfortunate, Ninde, but do not dwell upon it. Not a day goes by when someone or something does not die by my hand, and yet I cannot become preoccupied by it. */ + LK#NF8_emoshun
  ++ @732 /* I often find myself wishing you were...kinder, somehow. */ + LK#NF8_kinder
  ++ @733 /* It's nice you're so pragmatic about these things. */ + LK#NF8_prgmatic
  ++ @734 /* Do you regret killing the Amblecrowns? It certainly seems like you do, but one can never be sure with you. */ + LK#NF8_regret
  ++ @737 /* You are an abhorrent creature indeed, and one I no longer want in this group! */ + LK#NF8_longer
END

IF ~~ LK#NF8_notcert
  SAY @745 /* Then I shan't bother giving you more to puzzle over. */
  IF ~~ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NF8_trusya
  SAY @746 /* No need to get your undergarments in a twist. Am I to suppose you no longer want me in your party, then, honeypie? */
  ++ @747 /* No. I am very angry with you, but would prefer you remain with us. */ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ EXIT
  ++ @748 /* Yes. I suggest you get moving now. */ DO ~LeaveParty() SetGlobal("LK#NindeJoined","LOCALS",0) EscapeArea()~ EXIT
  ++ @749 /* Since the paladin is not around to finish his job, someone ought to for him! To arms! */ DO ~LeaveParty() SetGlobal("LK#NindeJoined","LOCALS",0) Enemy()~ EXIT
END

IF ~~ LK#NF8_emoshun
  SAY @750 /* Yes, you kill many. But are you so insensible to what that means? You think it is merely beds that will go unmade, a woman unloved, that a- Gods. Death is an ugly thing, <CHARNAME>. Killing has a certain glamour. Death...you know nothing of it. */
  ++ @751 /* I know what it means to kill. I know what it is to have friends killed. I know what it is to exist without a soul--dying is the only thing I haven't done. */ + LK#NF8_dying
  ++ @765 /* I am not unaware of the implications I have to do...I just know I have to do it. I have no choice. If I could put an end to all of this, to the death that surrounds me, I would have. */ + LK#NF8_surround
  ++ @753 /* Perhaps. But I'm still learning. */ + LK#NF8_learning
  ++ @754 /* And I'm glad. I think perhaps if I had intimate knowledge of death it would make it too difficult to face. And I must face it, every day. */ + LK#NF8_erryday
  ++ @755 /* I don't think I want to know either. */ + LK#NF8_erryday
END

IF ~~ LK#NF8_kinder
  SAY @756 /* There's nothing unkind about apathy. You can wish whatever you care to. I sometimes wish I'd never learnt to lie so well. I sometimes wish I'd become Lady Archonson instead of Sykre's apprentice. I sometimes wish I had slimmer thighs, but the feeling passes. */
  = @757 /* I wish we had not had to kill him. He's still so handsome. */
  ++ @758 /* He's very handsome, and seems like a noble sort of chap. But I can't imagine you together. It would be like the sun falling in love with night. */ + LK#NF8_loviatar
  ++ @759 /* I wouldn't say so. Then again, it's very hard to look handsome with your face mashed to a pulp, after all. Hur hur. */ + LK#NF8_hurhur
  ++ @760 /* It was a senseless battle, but he was unrelenting. I wasn't about to hand you over to him. */ + LK#NF8_handsu
  ++ @761 /* I am sorry for your loss, if you still cared for him. */ + LK#NF8_cared
  ++ @762 /* So what's the story behind the pair of you, anyway? */ + LK#NF8_storiez
  ++ @763 /* Yes, dear, but there are plenty more fish in the sea. Pick yourself up and move along. We've got work to do, you know. */ + LK#NF8_word2do
END

IF ~~ LK#NF8_prgmatic
  SAY @764 /* Oh, so I used to think. But then I realised I was insensible to what death...what death means. You think it is merely beds that will go unmade, a woman unloved, that a- Gods. Death is an ugly thing, <CHARNAME>. Killing has a certain glamour. Death...you know nothing of it. */
  ++ @751 /* I know what it means to kill. I know what it is to have friends killed. I know what it is to exist without a soul--dying is the only thing I haven't done. */ + LK#NF8_dying
  ++ @765 /* I am not unaware of the implications I have to do...I just know I have to do it. I have no choice. If I could put an end to all of this, to the death that surrounds me, I would have. */ + LK#NF8_surround
  ++ @753 /* Perhaps. But I'm still learning. */ + LK#NF8_learning
  ++ @754 /* And I'm glad. I think perhaps if I had intimate knowledge of death it would make it too difficult to face. And I must face it, every day. */ + LK#NF8_erryday
  ++ @755 /* I don't think I want to know either. */ + LK#NF8_erryday
END

IF ~~ LK#NF8_regret
  SAY @766 /* Any fool can regret yesterday, it does not necessarily mean a thing. I think...perhaps I do, though. I know I said otherwise to Jallen--I mean, Archonson--but...they need to know there are bad people in the world. People of a kind of bad they cannot understand. */
  = @767 /* Somehow I don't think the message got very far. I wish we had not had to kill him. He's still so handsome. */
  ++ @758 /* He's very handsome, and seems like a noble sort of chap. But I can't imagine you together. It would be like the sun falling in love with night. */ + LK#NF8_loviatar
  ++ @759 /* I wouldn't say so. Then again, it's very hard to look handsome with your face mashed to a pulp, after all. Hur hur. */ + LK#NF8_hurhur
  ++ @760 /* It was a senseless battle, but he was unrelenting. I wasn't about to hand you over to him. */ + LK#NF8_handsu
  ++ @761 /* I am sorry for your loss, if you still cared for him. */ + LK#NF8_cared
  ++ @762 /* So what's the story behind the pair of you, anyway? */ + LK#NF8_storiez
  ++ @763 /* Yes, dear, but there are plenty more fish in the sea. Pick yourself up and move along. We've got work to do, you know. */ + LK#NF8_word2do
END

IF ~~ LK#NF8_dying
  SAY @768 /* Yes, well I wouldn't hold your breath if I were you. */
  IF ~~ + LK#NF8_main2
END

IF ~~ LK#NF8_surround
  SAY @769 /* And well I believe it, <CHARNAME>. I have had enough. Perhaps when you see the boy whose name you used to scribble on your school parchments lying in a bloodied heap at your feet, it's time to call it a day. */
  = @757 /* I wish we had not had to kill him. He's still so handsome. */
  ++ @758 /* He's very handsome, and seems like a noble sort of chap. But I can't imagine you together. It would be like the sun falling in love with night. */ + LK#NF8_loviatar
  ++ @759 /* I wouldn't say so. Then again, it's very hard to look handsome with your face mashed to a pulp, after all. Hur hur. */ + LK#NF8_hurhur
  ++ @760 /* It was a senseless battle, but he was unrelenting. I wasn't about to hand you over to him. */ + LK#NF8_handsu
  ++ @761 /* I am sorry for your loss, if you still cared for him. */ + LK#NF8_cared
  ++ @762 /* So what's the story behind the pair of you, anyway? */ + LK#NF8_storiez
  ++ @763 /* Yes, dear, but there are plenty more fish in the sea. Pick yourself up and move along. We've got work to do, you know. */ + LK#NF8_word2do
END

IF ~~ LK#NF8_learning
  SAY @770 /* There are three things that can never be learnt; the nature of love, the true will of the Gods, and the consuming experience of an utter death. */
  IF ~~ + LK#NF8_main2
END

IF ~~ LK#NF8_erryday
  SAY @771 /* Then it is good that death is one of the three things a intimate knowledge of can never be acquired; the nature of love, the true will of the Gods, and the consuming experience of an utter death. */
  IF ~~ + LK#NF8_main2
END

IF ~~ LK#NF8_main2
  SAY @772 /* When I venerated Oghma and not Shar I would ask him every night how it is we can be so afraid of that place from which so many return. It can be used to control a nation, subdue a wife, break a child. Oh, and seduce your young elven apprentice. No-one ever made death look as good as Sykre did. */
  IF ~~ + LK#NF8_main3
END

IF ~~ LK#NF8_loviatar
  SAY @773 /* It is strange you should say that. It felt more like the she-wolf falling in love with the huntsman. */
  = @774 /* And now I am to him as the night is to the sun. The heavy veil of doom, the chance to be forgotten. */
  IF ~~ + LK#NF8_main3
END

IF ~~ LK#NF8_hurhur
  SAY @775 /* Quite. Though he still manages to make you look like a porcine northern dunderhead. Funnily enough, everything makes you look like a porcine northern dunderhead. Perhaps it is simply that you are a porcine northern dunderhead. */
  IF ~~ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NF8_cared
  SAY @777 /* Care about him? <CHARNAME>, I'd practically forgotten he existed. In my youth I wore spectacles. He was one of the rough young males who took great delight in stealing them. And tugging on my braids. And pinching my ears. */
  = @778 /* So, naturally, I fell madly in love with him. He ended up hiding in the gaurdrobe from my maidservants in the morning to avoid scandal, commanding my arm at every seasonal dance. It's funny isn't it? Childhood sweetheart one moment, decaying offal the next. */
  IF ~~ + LK#NF8_main3
END

IF ~~ LK#NF8_storiez
  SAY @779 /* In my youth I wore spectacles. He was one of the rough young males who took great delight in stealing them. And tugging on my braids. And pinching my ears. */
  = @778 /* So, naturally, I fell madly in love with him. He ended up hiding in the gaurdrobe from my maidservants in the morning to avoid scandal, commanding my arm at every seasonal dance. It's funny isn't it? Childhood sweetheart one moment, decaying offal the next. */
  IF ~~ + LK#NF8_main3
END

IF ~~ LK#NF8_main3
  SAY @781 /* Yes, we are suckling at death's mouldering teat, my dear. Our position is a sorry one. */
  ++ @1411 /* We won't be for much longer. First Bodhi, then Irenicus...and then rest. */ + LK#NF8_namoremo
  ++ @785 /* I can see what transpired here today has effected you most profoundly. I've never seen you this way before. */ + LK#NF8_transpried
  ++ @1412 /* Sooner or late I'm going to grow tired of these macabre musings. */ + LK#NF8_macabre
END

IF ~~ LK#NF8_word2do
  SAY @787 /* You are quite right, <CHARNAME>. I can see why this is a most inconvenient time to distract you with my profound existential crises. */
  IF ~~ EXIT
END

IF ~~ LK#NF8_namoremo
  SAY @1413 /* A rest well deserved...I hope I can join you in it, <CHARNAME>, but wishing will not make it so. Let us move on. */
  IF ~~ EXIT
END

IF ~~ LK#NF8_transpried
  SAY @790 /* I am...I am simply tired, <CHARNAME>. Let us move on. */
  IF ~~ EXIT
END

IF ~~ LK#NF8_macabre
  SAY @791 /* I am sorry if I try your patience, but I hope that day is later rather then sooner. I am very thankful for what you have done for me today, <CHARNAME>. Now...let us move on. */
IF ~~ EXIT
END

IF ~~ LK#NF8_handsu
  SAY @1414 /* And I am very thankful for what you have done for me today, <CHARNAME>. Now...let us move on. */
IF ~~ EXIT
END
END


// Underdark Talk
// --------------
CHAIN IF ~Global("LK#NindeUnderdarkTalk","GLOBAL",2) Global("LK#NindeFriendshipActive","GLOBAL",1)~ THEN LK#NINDJ LK#UNDK
@1415 /* You know, it really is quite beautiful down here. */
= @1416 /* Oh, don't look at me like that, <CHARNAME>. I'm not suggesting we start up a small guesthouse down here and market it for the picturesque vistas, but...glowing slimes. Marvellous stone work. Beautiful. */
DO ~RealSetGlobalTimer("LK#NindeFriendTalksTimer","GLOBAL",2700) IncrementGlobal("LK#NindeUnderdarkTalk","GLOBAL",1)~
END
  ++ @1417 /* It's...different, I'm certain of that. */ + LK#UNDK_diffoo
  ++ @1418 /* You have very strange ideas about what's beautiful, Ninde. Then again, should I be surprised? You have very strange ideas about everything. */ + LK#UNDK_everything
  ++ @1419 /* Very beautiful. Maybe not conventionally so, but it has a charm all its own. */ + LK#UNDK_diffoo
  ++ @1420 /* Funnily enough I find it difficult to appreciate the subtle beauty of the stones and the slimes when I'm constantly dodging crossbow bolts. */ + LK#UNDK_bultz
  ++ @1421 /* Beauty? It's a sodden hole unfit for habitation by, well, anything. Let alone a lovely young demi-goddess such as myself. */ + LK#UNDK_habitation

CHAIN IF ~Global("LK#NindeUnderdarkTalk","GLOBAL",2) OR(2) Global("LK#NindeRomanceActive","GLOBAL",1)
Global("LK#NindeRomanceActive","GLOBAL",2)~ THEN LK#NINDJ LK#NL13
@1415 /* You know, it really is quite beautiful down here. */
= @1416 /* Oh, don't look at me like that, <CHARNAME>. I'm not suggesting we start up a small guesthouse down here and market it for the picturesque vistas, but...glowing slimes. Marvellous stone work. Beautiful. */
DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",1800)
IncrementGlobal("LK#NindeUnderdarkTalk","GLOBAL",1)~
END
  ++ @1417 /* It's...different, I'm certain of that. */ + LK#UNDK_diffoo
  ++ @1418 /* You have very strange ideas about what's beautiful, Ninde. Then again, should I be surprised? You have very strange ideas about everything. */ + LK#UNDK_everything
  ++ @1419 /* Very beautiful. Maybe not conventionally so, but it has a charm all its own. */ + LK#UNDK_diffoo
  ++ @1420 /* Funnily enough I find it difficult to appreciate the subtle beauty of the stones and the slimes when I'm constantly dodging crossbow bolts. */ + LK#UNDK_bultz
  ++ @1422 /* Beauty? It's a sodden hole unfit for habitation by, well, anything. Let alone a lovely young demigod such as myself. */ + LK#UNDK_habitation

APPEND LK#NINDJ

IF ~~ LK#UNDK_diffoo
  SAY @1423 /* It reminds me of Skullport. In the black days of my rebellious youth I'd haunt the seediest inns I could find, become embroiled in all sorts of naughtiness other girls would have balked at. */
  IF ~~ + LK#UNDK_main1
END

IF ~~ LK#UNDK_everything
  SAY @1424 /* And always have done. I wonder why that is? In the black days of my rebellious youth I'd haunt the seediest inns I could find, become embroiled in all sorts of naughtiness other girls would have balked at. */
  IF ~~ + LK#UNDK_main1
END

IF ~~ LK#UNDK_bultz
  SAY @1425 /* Well, forgive me, <CHARNAME>, for attempting to make the best of a bad situation. Perhaps my evidently inane attempt to find the beauty in everything was the death throe of my elven nature. Hah. */
  ++ @1426 /* Well, whether you act like one or not, you're still, in all practical terms, an elf. */ + LK#UNDK_anelf
  ++ @1427 /* You're just a big lump of cultural confusion, really. An elf brought up as a human, whose elven traits have been removed. */ + LK#UNDK_culcon
  ++ @1428 /* Put a sock in it, Ninde, or you'll be hearing the death throes of something else very soon. */ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3) SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ + LK#UNDK_irksome
END

IF ~~ LK#UNDK_main1
  SAY @1429 /* Most elves, too, I would imagine. I was always an exceptional creature. */
  ++ @1426 /* Well, whether you act like one or not, you're still, in all practical terms, an elf. */ + LK#UNDK_anelf
  ++ @1427 /* You're just a big lump of cultural confusion, really. An elf brought up as a human, whose elven traits have been removed. */ + LK#UNDK_culcon
  ++ @1430 /* Aye, and thank Cyric you are exceptional. I'd be reaching for the garrote, if it were otherwise. */ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3) SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ + LK#UNDK_irksome
END

IF ~~ LK#UNDK_habitation
  SAY @1431 /* No offence, darling, but I've seen you look lovelier. Upon current inspection, the adjective that first springs to mind is 'beleaguered'. I can see my attempt to make the best of a bad situation was unappreciated. Perhaps my evidently inane attempt to find the beauty in everything was the death throe of my elven nature. Hah. */
  ++ @1426 /* Well, whether you act like one or not, you're still, in all practical terms, an elf. */ + LK#UNDK_anelf
  ++ @1427 /* You're just a big lump of cultural confusion, really. An elf brought up as a human, whose elven traits have been removed. */ + LK#UNDK_culcon
  ++ @1428 /* Put a sock in it, Ninde, or you'll be hearing the death throes of something else very soon. */ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3) SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ + LK#UNDK_irksome
END

IF ~~ LK#UNDK_anelf
  SAY @1432 /* But am I, <CHARNAME>? Am I really? I remember nothing of Cormanthor, where I was born. My parents. For me it is, to all practical purposes, as though they never existed. */
  IF ~~ + LK#UNDK_main2
END

IF ~~ LK#UNDK_culcon
  SAY @1433 /* That's exactly it, <CHARNAME>. I remember nothing of Cormanthor, where I was born. My parents. For me it is, to all practical purposes, as though they never existed. */
  IF ~~ + LK#UNDK_main2
END

IF ~~ LK#UNDK_irksome
  SAY @1434 /* You are certainly in an irksome mood today, Bhaalspawn. */
  IF ~~ EXIT
END

IF ~~ LK#UNDK_main2
  SAY @1435 /* I am not immortal. I am not a sylvan creature of divine grace and goodness. I'm just a little rich girl from Waterdeep who fell in love with the smut of it all. */
  + ~OR(4) Race(Player1,HALFORC) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,DWARF)~ + @1436 /* It is true you were raised amongst humankind, far removed from the circumstances of your birth, but that's no reason to distance yourself from your heritage so entirely. I was also raised by humans, but that doesn't compromise my race. */ + LK#UNDK_compro
  + ~Race(Player1,HUMAN)~ + @1437 /* It is true you were raised amongst humankind, far removed from the circumstances of your birth, but that's no reason to distance yourself from your heritage so entirely. */ + LK#UNDK_compro
  + ~OR(2) Race(Player1,HALF_ELF) Race(Player1,ELF)~ + @1438 /* I've also felt distanced from my elven upbringing at times. */ + LK#UNDK_compro
  ++ @1439 /* I see your point. */ + LK#UNDK_cpoint
  ++ @1440 /* Yes, dear, you *are* an elf. You've got pointy ears and go all dewy-eyed over nature and theology. I've never met an elfier elf. */ + LK#UNDK_elfier
  ++ @1441 /* I was under the impression you were perfectly content as you were, and not particularly concerned with your distance from your elven roots. */ + LK#UNDK_acquaint
  ++ @1442 /* Did you never try to re-acquaint yourself with your background? */ + LK#UNDK_acquaint
END

IF ~~ LK#UNDK_compro
  SAY @1443 /* But your upbringing aside, you are still a member of your race through and through. This sort of thing always contrives to upset me. Cheer me up, <CHARNAME>. */
  ++ @1444 /* Do you think there is any way you could be restored? */ + LK#UNDK_restoration
  ++ @1445 /* Well, elf or not, I still have the utmost respect and admiration for you. Hopefully that cheers you up. */ + LK#UNDK_respeck
  ++ @1446 /* Did I ever tell you how pretty you are, Ninde? You're very pretty. Possibly even the prettiest. */ + LK#UNDK_respeck
  ++ @1447 /* Err... What do you get if you cross a blonde with a Mindflayer? */ + LK#UNDK_mindflayer
  ++ @1448 /* It's not my job to cheer you up, woman. */ DO ~SetGlobal("LK#NindeRomanctActive","GLOBAL",3)~ + LK#UNDK_woman
END

IF ~~ LK#UNDK_cpoint
  SAY @1449 /* Doesn't it contrive to upset one? Shar, I'm depressed. Cheer me up, <CHARNAME>. */
 ++ @1444 /* Do you think there is any way you could be restored? */ + LK#UNDK_restoration
  ++ @1445 /* Well, elf or not, I still have the utmost respect and admiration for you. Hopefully that cheers you up. */ + LK#UNDK_respeck
  ++ @1446 /* Did I ever tell you how pretty you are, Ninde? You're very pretty. Possibly even the prettiest. */ + LK#UNDK_respeck
  ++ @1447 /* Err... What do you get if you cross a blonde with a Mindflayer? */ + LK#UNDK_mindflayer
  ++ @1448 /* It's not my job to cheer you up, woman. */ DO ~SetGlobal("LK#NindeRomanctActive","GLOBAL",3)~ + LK#UNDK_woman
 END

IF ~~ LK#UNDK_elfier
  SAY @1450 /* That is not true <CHARNAME>. I've met artichokes more elfin then myself. */
  ++ @1451 /* And at least artichokes have hearts. Haha. */ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ + LK#UNDK_artichokes
  ++ @1452 /* I suppose you're right. */ + LK#UNDK_urite
  ++ @1453 /* But you have only yourself to blame, you know, if you feel so removed from your elven heritage. */ + LK#UNDK_acquaint
END

IF ~~ LK#UNDK_acquaint
  SAY @1454 /* After completing my education I returned briefly to Cormanthor. It is...a poignant place. I suppose because I knew it's many graves held my ancestors, but would not hold me. Mistledale was beautiful, its bells ringing across its greens. The forest itself...dark. It is overrun with Drow, now. My visit was cut short by, well, the Time of Troubles, funnily enough! 'Tis a wonder I didn't bump into old father Bhaal. */
  = @1455 /* But anyway, <CHARNAME>, this subject is depressing. I am depressed. Cheer me up, <CHARNAME>. */
 ++ @1444 /* Do you think there is any way you could be restored? */ + LK#UNDK_restoration
  ++ @1445 /* Well, elf or not, I still have the utmost respect and admiration for you. Hopefully that cheers you up. */ + LK#UNDK_respeck
  ++ @1446 /* Did I ever tell you how pretty you are, Ninde? You're very pretty. Possibly even the prettiest. */ + LK#UNDK_respeck
  ++ @1447 /* Err... What do you get if you cross a blonde with a Mindflayer? */ + LK#UNDK_mindflayer
  ++ @1448 /* It's not my job to cheer you up, woman. */ DO ~SetGlobal("LK#NindeRomanctActive","GLOBAL",3)~ + LK#UNDK_woman
END

IF ~~ LK#UNDK_restoration
  SAY @1456 /* I have researched the matter extensively, but it has yielded nothing. I believe whatever magics Lassal used died with him. Who knows how ancient he was? Lassal may have walked under the eaves of Netheril, fought in the Crown Wars...My being is the result of most ancient magics, as is yours. */
  = @1457 /* It is something we shall speak more on. For now, my Lady, I think it best we continue. */
  IF ~~ EXIT
END

IF ~~ LK#UNDK_respeck
  SAY @1458 /* Why, you can be quite the charmer sometimes, Bhaalspawn. */
  IF ~~ EXIT
END

IF ~~ LK#UNDK_mindflayer
  SAY @1459 /* Heh, a very hungry Mindflayer? My, that one was doing the rounds a decade past, Bhaalspawn. Still, I suppose with your sheltered upbringing you were unable to keep abreast of developments in contemporary humour. So I forgive you, and appreciate the effort. */
  IF ~~ EXIT
END

IF ~~ LK#UNDK_woman
  SAY @1460 /* And it isn't my job to entertain you with scintillating conversation, either, but I liked to think you appreciated the effort. */
  IF ~~ EXIT
END

IF ~~ LK#UNDK_artichokes
  SAY @1461 /* My, that one was doing the rounds a decade past, Bhaalspawn. Still, I suppose with your sheltered upbringing you were unable to keep abreast of developments in contemporary humour. Pity, that. */
  IF ~~ EXIT
END

IF ~~ LK#UNDK_urite
  SAY @1462 /* Mmm... Bhaalspawn, I think you'll find I'm rarely otherwise. */
  IF ~~ EXIT
END
END


/* ------------------------ *
 *  Ninde Scenery Comments  *
 * ------------------------ */

// Most Noble Order of the Radiant Heart
// -------------------------------------
CHAIN IF WEIGHT #-2 ~Global("LK#Ninde_radiantheart","GLOBAL",1)~ THEN LK#NINDJ LK#Ninde_radiantheart
  @1463 /* Ooh, I smell noble swain! (sigh) It would almost be worth being a damsel in distress for such bulging biceps. Quick, <CHARNAME>, distress me. */
  DO ~IncrementGlobal("LK#Ninde_radiantheart","GLOBAL",1)~
  == KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @1464 /* Why didn't you say, Ninde? I'll distress yer rightly enough! */
EXIT

// Sahuagin Rebel Prince dead
// --------------------------
APPEND ~LK#NINDJ~
IF ~Global("LK#Ninde_rebeldead","GLOBAL",1)~ THEN LK#Ninde_rebeldead
  SAY @1465 /* Hee. */
  ++ @1466 /* Heh. Ninde, you certainly do have a talent for naughtiness... */ DO ~SetGlobal("LK#Ninde_rebeldead","GLOBAL",2)~ + LK#Ninderebel_missychief
  ++ @1467 /* Why, thank you, Ninde! I couldn't stand the smelly fish-man either. */ DO ~SetGlobal("LK#Ninde_rebeldead","GLOBAL",2)~ + LK#Ninderebel_either
  ++ @1468 /* As much as I appreciate your mischievous streak, I'd appreciate it if you kept it under wraps at times like this, alright? */ DO ~SetGlobal("LK#Ninde_rebeldead","GLOBAL",2)~ + LK#Ninderebel_underraps
  ++ @1469 /* Ninde! I don't think you realise the implications of such idiotic outbursts! You've potentially just eliminated an entire species with a few idle words! */ DO ~SetGlobal("LK#Ninde_rebeldead","GLOBAL",2)~ + LK#Ninderebel_idlewords
  ++ @1470 /* I'm just speecheless. What on earth do you think gives you the right to undermine my leadership like that? */ DO ~SetGlobal("LK#Ninde_rebeldead","GLOBAL",2)~ + LK#Ninderebel_speechless
  ++ @1471 /* How dare you, Ninde! It isn't your place to decide who we do and don't deal with. */ DO ~SetGlobal("LK#Ninde_rebeldead","GLOBAL",2)~ + LK#Ninderebel_impetuous
END

IF ~~ LK#Ninderebel_missychief
  SAY @1472 /* Mmm...I'm simply glad you appreciate it. */
  IF ~~ EXIT
END

IF ~~ LK#Ninderebel_either
  SAY @1473 /* Oh, you're quite welcome, darling. */
  IF ~~ EXIT
END

IF ~~ LK#Ninderebel_underraps
  SAY @1474 /* Point taken, pet. You have my word that from henceforth, I will not permit my inherent naughtiness to interfere with situations that recquire diplomacy. */
  IF ~~ EXIT
END

IF ~~LK#Ninderebel_idlewords
  SAY @1475 /* Oh please, Bhaalspawn. You've been listening to a few too many Druids. I'm sure the fish-folk will bounce back, with or without our contribution. Though I understand why they haven't got much mating done in the past few years. I wouldn't touch one of those beasts with a barge pole. */
  IF ~~ EXIT
END

IF ~~ LK#Ninderebel_speechless
  SAY @1476 /* Oh please, It's not as though I'll cause a mutiny. This company of half-wits couldn't organise a bedding in a brothel. */
  IF ~Global("LK#NindeFriendshipActive","GLOBAL",1)~ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ EXIT
  IF ~OR(2) Global("LK#NindeRomanceActive","GLOBAL",1) Global("LK#NindeRomanceActive","GLOBAL",2)~ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#Ninderebel_impetuous
  SAY @1477 /* Well aren't you the little drama queen. I'll know to keep myself to myself in the future. */
  IF ~Global("LK#NindeFriendshipActive","GLOBAL",1)~ DO ~SetGlobal("LK#NindeFriendshipActive","GLOBAL",3)~ EXIT
  IF ~OR(2) Global("LK#NindeRomanceActive","GLOBAL",1) Global("LK#NindeRomanceActive","GLOBAL",2)~ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END


// After Underdark transformation
// ------------------------------
IF ~Global("LK#Ninde_transformation","GLOBAL",2) GlobalTimerExpired("LK#Ninde_transformationTimer","GLOBAL")~ LK#NindeUD_begin
  SAY @1478 /* Magnificent. I really do feel quite the changed woman. Almost as changed as that dreadful incident with the chicken during my school days. I never should've been paired with that ghastly Scintilla Fairweather. Her transmutation was so utterly off; I ended up spending three memorable days as a hen. */
  = @1479 /* A rather stylish Ornamental Moonshae Bantam, but a hen nonetheless. This Drow business will take a similar amount of getting used to, but it's preferable to poultrydom. */
  ++ @1480 /* A hen? A bundle of feathery, squawking irritation. That sounds about right. */ DO ~IncrementGlobal("LK#Ninde_transformation","GLOBAL",1)~ + LK#NindeUD_aboutright
  ++ @1481 /* Such incompetence we are forced to endure. */ DO ~IncrementGlobal("LK#Ninde_transformation","GLOBAL",1)~ + LK#NindeUD_main1
  ++ @1482 /* A chicken? Hah! Hopefully that reigned your ego in a little. */ DO ~IncrementGlobal("LK#Ninde_transformation","GLOBAL",1)~ + LK#NindeUD_egoin
  ++ @1483 /* I'm not used to being this short and spiky. Truth be told, I'm just looking forward to getting this over with and getting my old body back. */ DO ~IncrementGlobal("LK#Ninde_transformation","GLOBAL",1)~ + LK#NindeUD_bodback
  ++ @1484 /* I'm enjoying myself terrifically, actually! I haven't quite got the natural-Drow-grace sorted out, but other then the constant bumping into things, the Underdark is funner than a barrel of monkeys! */ DO ~IncrementGlobal("LK#Ninde_transformation","GLOBAL",1)~ + LK#NindeUD_barrelo
+ ~OR(2) Class(Player1,MAGE_ALL) Class(Player1,DRUID_ALL)~ + @1485 /* I've transmuted myself into a fair few things in my time, but never a chicken. */ DO ~IncrementGlobal("LK#Ninde_transformation","GLOBAL",1)~ + LK#NindeUD_nevchick
END

IF ~~ LK#NindeUD_aboutright
  SAY @1486 /* I'm sure you wouldn't stop squawking, either, if you were constantly forced to compromise your abilities by aligning yourself with ditsy school-girls and amateurish adventuring-types. */
  IF ~~ + LK#NindeUD_main1
END

IF ~~ LK#NindeUD_main1
  SAY @1487 /* Other people, I have discovered, have a tendency to rather cock things up--if you'll excuse the pun. */
  ++ @1488 /* If that's how you feel, then why are you travelling with us now? */ + LK#NindeUD_travwith
  ++ @1489 /* I'm sure you've made a fair few mistakes in your time, as well. */ + LK#NindeUD_fairmist
  ++ @1490 /* Quite right. One needs to look out for oneself, and the rest be damned. */ + LK#NindeUD_baydamnd
END

IF ~~ LK#NindeUD_egoin
  SAY @1491 /* Does it seem like it reigned in my ego, <CHARNAME>? Quite the opposite. It simply proved to me that I can only rely upon myself. */
  IF ~~ + LK#NindeUD_main1
END

IF ~~ LK#NindeUD_bodback
  SAY @1492 /* Hmm...and you're probably not used to being so handsome, either, honeybunch. Red eyes suit very few, but they suit you. Yet I appreciate your point. That silver beast appears to have significantly downsized some of my more...infamous...appendages. */
  = @1493 /* Same thing happen to you, honeybunch? Want me to...take a look, hmm? */
  IF ~~ EXIT
END

IF ~~ LK#NindeUD_barrelo
  SAY @1494 /* For once I agree with you, darling. The journey has taken a most exciting turn. I'd still rather be curled up somewhere warm, but failing that--this isn't so terribly awful. */
  IF ~~ EXIT
END

IF ~~ LK#NindeUD_nevchick
  SAY @1495 /* You are most fortunate, then. Fortunately I have noticed very few side effects, except an over-fondness for chewing sunflower seeds. Not awful, I concede, but still difficult to explain to strangers. */
  IF ~~ EXIT
END

IF ~~ LK#NindeUD_travwith
  SAY @1496 /* Operating alone was enjoyable, but was also a challenge. Young women want to be challenged, but I am no longer so very young. But oh, it has its advantages. */
  IF ~~ EXIT
END

IF ~~ LK#NindeUD_fairmist
  SAY @1497 /* Most certainly. And that is why other people making mistakes is so very unpalatable to me. */
  IF ~~ EXIT
END

IF ~~ LK#NindeUD_baydamnd
  SAY @1498 /* All for one, and everything for me. */
  IF ~~ EXIT
END


// Ninde Drunk
// -----------
IF ~Global("LK#NindeDrunk","GLOBAL",1)~ LK#NindeDrunk
  SAY @1499 /* Ha-loo, Bhaalspawn! Bhaal...spawn. Ah! Are you Bhaal's...spawn, or Bhaal's pawn! That's what I want to know! */
  = @1500 /* (Ninde lurches toward you and gives you a sharp tap in the shoulder, like an irritable librarian, her expression comically inquisitive and wide-eyed. A slight tang of whisky hangs on her breath.) */
  ++ @1501 /* Oh, Ninde. Have you been at the dwarven stout again? */ DO ~IncrementGlobal("LK#NindeDrunk","GLOBAL",1)~ + LK#NindeDrunk_dwarso
  ++ @1502 /* Er, well...I'd like an answer to that, too. */ DO ~IncrementGlobal("LK#NindeDrunk","GLOBAL",1)~ + LK#NindeDrunk_natooz
  ++ @1503 /* It's beginning to look as though I'm both. */ DO ~IncrementGlobal("LK#NindeDrunk","GLOBAL",1)~ + LK#NindeDrunk_imboof
  ++ @1504 /* I am nobody's pawn! */ DO ~IncrementGlobal("LK#NindeDrunk","GLOBAL",1)~ + LK#NindeDrunk_natooz
END

IF ~~ LK#NindeDrunk_dwarso
  SAY @1505 /* (Ninde wrinkles her nose and flops back into her chair.) */
  = @1506 /* It's none of your bees...beeswax what I have and haven't been (hic) at. I could've been at the coronation of the King of--the King of...of--where's that place with the thing again? */
  ++ @1507 /* Ladies and gentleman, I give you Ninde, the graceful, the eloquent, spellcaster extraordinaire! */ + LK#NindeDrunk_extraire
  ++ @1508 /* The place with the thing? You couldn't elucidate slightly? */ + LK#NindeDrunk_lucidate
  ++ @1509 /* Riiight. Er, Ninde, I think you're ever-so-slightly drunk. Perhaps we should think about taking you off to bed, mm? How's that sound? Nice warm bed? */ + LK#NindeDrunk_wanbed
END

IF ~~ LK#NindeDrunk_natooz
  SAY @1510 /* (Ninde sniffs with dissatisfaction and flops back into her chair, before leaning across and giving your knee a re-assuring squeeze.) */
  = @1511 /* Well I am (hic) Ni--Ninde and I think you're a lovely, lovely, lovely, lovely <PRO_MANWOMAN>. Yes. Yes I do. I think you are almost as lovely as the--the man with--the man with the...the--who's that man with that thing again? */
  ++ @1507 /* Ladies and gentleman, I give you Ninde, the graceful, the eloquent, spellcaster extraordinaire! */ + LK#NindeDrunk_extraire
  ++ @1508 /* The place with the thing? You couldn't elucidate slightly? */ + LK#NindeDrunk_lucidate
  ++ @1509 /* Riiight. Er, Ninde, I think you're ever-so-slightly drunk. Perhaps we should think about taking you off to bed, mm? How's that sound? Nice warm bed? */ + LK#NindeDrunk_wanbed
END

IF ~~ LK#NindeDrunk_imboof
  SAY @1512 /* (Ninde grasps your shoulders and gives you a little shake which you can only assume was intended as re-assurance, before falling back into her chair.) */
  = @1513 /* You are ever so...ever such a (hic) silly. Always being all dark and broody like a big and...and a big--dark...dark broody thing. Shar, is it me or is this room slightly on a slope? I feel... */
  ++ @1514 /* Like a big drunken ninny? Because that's how I'd feel if I were you. */ + LK#NindeDrunk_extraire
  ++ @1515 /* If this sentence ends with 'like I'm going to be sick', I'll be very upset. */ + LK#NindeDrunk_extraire
  ++ @1507 /* Ladies and gentleman, I give you Ninde, the graceful, the eloquent, spellcaster extraordinaire! */ + LK#NindeDrunk_extraire
  ++ @1509 /* Riiight. Er, Ninde, I think you're ever-so-slightly drunk. Perhaps we should think about taking you off to bed, mm? How's that sound? Nice warm bed? */ + LK#NindeDrunk_wanbed
END

IF ~~ LK#NindeDrunk_extraire
  SAY @1516 /* Don't be cheeky, you little wastrel, or I'll give you a right...a--a right good seeing to! */
  ++ @1517 /* Oh, and now she's threatening me. Great. */ + LK#NindeDrunk_greathr
  ++ @1518 /* Ninde, you're drunk as a fish. */ + LK#NindeDrunk_asafeesh
  ++ @1519 /* I'd like to see you try! */ + LK#NindeDrunk_cyatri
END

IF ~~ LK#NindeDrunk_lucidate
  SAY @1520 /* You know, Bhaalspawn, the funny thing is...I can't because I can't, you know, remember. Hm. I think I may be a tad drunk. */
  ++ @1521 /* Oh, re-e-e-ally? I hadn't noticed. */ + LK#NindeDrunk_extraire
  ++ @1522 /* Nonsense! You're not drunk until you can't stand up straight. Here, I'll pour you another! */ + LK#NindeDrunk_anuvvsa
  ++ @1523 /* Rather. I think maybe you should go and have a lie down. */ + LK#NindeDrunk_lighdon
END

IF ~~ LK#NindeDrunk_wanbed
  SAY @1524 /* Mm...not bad...if I could just grasp your arm for a tiny short moment, this inn seems to have been built on a slope... */
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ LK#NindeDrunk_greathr
  SAY @1525 /* Pfft...threatening. You go on your little way, little Bhaalspawn, I've more to drink! */
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ LK#NindeDrunk_asafeesh
  SAY @1526 /* (Ninde puts a delicate hand to her mouth and giggles.) */
  = @1527 /* Prettier than a fish, though. */
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ LK#NindeDrunk_cyatri
  SAY @1528 /* Oh, don't get so (hic) shirty. You go on your little way, little Bhaalspawn, I've more to drink! */
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ LK#NindeDrunk_anuvvsa
  SAY @1529 /* Oh, Bhaalspawn, I'm not sure that's the best idea.... but--oh, go on then! How could I say know to that face? */
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ LK#NindeDrunk_lighdon
  SAY @1530 /* Hmm...that may just be the most (hic) intelligent thing I've ever heard you say. If I could just grasp your arm for a tiny short moment, this inn seems to have been built on a slope... */
  IF ~~ DO ~RestParty()~ EXIT
END
END


// Haer'Dalis romance conflict dialogue
// ------------------------------------
APPEND HAERDAJ

IF ~Global("LK#NindeHaerConflict","GLOBAL",2)~ nh.1
  SAY @1531 /* Between ourselves, my raven, what think you of our new she-mage? She has the eyes of a fox, does she not? Yellow. Or of a falcon. But no. No birds for her, I don't think. */
  ++ @1532 /* I think she is a good mage, and a worthy companion. What else is there? */ DO ~IncrementGlobal("LK#NindeHaerConflict","GLOBAL",1)~ + nh.WATXELX
  ++ @898 /* Why? */ DO ~IncrementGlobal("LK#NindeHaerConflict","GLOBAL",1)~ + nh.EYEUWHY
  ++ @1533 /* A bit too mouthy for my tastes. I prefer my women a little more submissive. Or at the very least, good-humoured. */ DO ~IncrementGlobal("LK#NindeHaerConflict","GLOBAL",1)~ + nh.GEWDHUME
  ++ @1534 /* Phwoar. What *don't* I think of her? There can't be a finer looking thing outside of the Calishite's harems. */ DO ~IncrementGlobal("LK#NindeHaerConflict","GLOBAL",1)~ + nh.CALISHARES
  ++ @1535 /* She's interesting. Good to talk to. I like her. */ DO ~IncrementGlobal("LK#NindeHaerConflict","GLOBAL",1)~ + nh.ILYGEWD
  ++ @1536 /* She's completely and utterly terrifying, quite frankly. I only keep her around because I'm scared of what she'll do if I try to get rid of her. */ DO ~IncrementGlobal("LK#NindeHaerConflict","GLOBAL",1)~ + nh.GEWDHUME
  ++ @1537 /* There's something about her I don't trust. */ DO ~IncrementGlobal("LK#NindeHaerConflict","GLOBAL",1)~ + nh.SUMFINGBOO
  ++ @1538 /* Nothing in particular. She's a fairly bland creature. */ DO ~IncrementGlobal("LK#NindeHaerConflict","GLOBAL",1)~ + nh.FARBLAND
END

IF ~~ nh.WATXELX
  SAY @1539 /* So much else, my raven. She is more fascinating than most women of the Prime--and the more I speak to her, the less I know of her. Hmm. Perhaps she has enfeebled me, somehow. */
  IF ~~ EXIT
END

IF ~~ nh.EYEUWHY
  SAY @1540 /* I wish to know if it is only I who has been...enfeebled by her. But you answer my question with a question, which is answer enough. */
  IF ~~ EXIT
END

IF ~~ nh.GEWDHUME
  SAY @1541 /* Ahh. 'So happy she that most assured doth rest, but he most happy who such one loves best.' */
  = @1542 /* You ought to remember that, my raven. */
  IF ~~ EXIT
END

IF ~~ nh.CALISHARES
  SAY @1543 /* A tempting form, a testing temper. But what bewitching eyes she has! If I had no sense for these things, I would say she was half demon. She is most certainly all woman. */
  IF ~~ EXIT
END

IF ~~ nh.ILYGEWD
  SAY @1544 /* A tempting form and a testing temper, yet she is still good company. But what bewitching eyes she has! If I had no sense for these things, I would say she was half demon. She is most certainly all woman. */
  IF ~~ EXIT
END

IF ~~ nh.SUMFINGBOO
  SAY @1545 /* Join the legions, my raven. And yet I cannot help but like her! It must be those bewitching eyes of hers. If I had no sense for these things, I would say she was half demon. She is most certainly all woman. */
  IF ~~ EXIT
END

IF ~~ nh.FARBLAND
  SAY @1546 /* I cannot help but suspect we are speaking of different women, my raven. Still, if you don't appreciate those bewitching eyes, all the better for me... */
  IF ~~ EXIT
END

END


// Aran interjection, chapter 3
// ----------------------------
EXTEND_BOTTOM ARAN 27
  IF ~InParty("Ninde") !Dead("Ninde")~ EXTERN ARAN LK#NinAran
END

CHAIN ARAN LK#NinAran
  @1547 /* Ninde? <CHARNAME>, what do you do, bringing her here? */
  == LK#NINDJ @1548 /* Well someone is pleased to see me. Nice little set up you have here, Linny. */
  == ARAN @1549 /* <CHARNAME>, if you have accepted her as a companion, I strongly urge you to reconsider. She is not known for her loyalty--and she herself played a part in the abduction of Imoen. */
  == LK#NINDJ @1550 /* Pish. Imoen? What is an Imoen? It's you and your hatchet-faced patsies who can't let sleeping hounds lie. You cause trouble. You have caused more trouble for <CHARNAME> than I. */
END
  ++ @1551 /* Who I choose to accompany me is my own business, Aran. */ EXTERN ARAN LK#NinAran_OWNBIZZ
  ++ @1552 /* I have thought carefully about whether or not to trust Ninde, and I think that for now, I shall. Worry not, Aran--I'll be keeping a close eye on her. */ EXTERN LK#NINDJ LK#NinAran_IYONHER
  ++ @1553 /* She's got a point, you know. If your lot didn't poke their daggers in everything, I wouldn't be in this mess. */ EXTERN ARAN LK#NinAran_INZEESME
  ++ @1554 /* Come to think of it, you may be right. Perhaps it would be for the best if you took her prisoner, or do whatever you wish to do with her. */ EXTERN ARAN LK#NinAran_WATSWISH

CHAIN ARAN LK#NinAran_OWNBIZZ
  @1555 /* You are right, of course. I was merely offering my advice. I simply don't think it's wise to allow a woman so strongly connected to your enemy as Ninde is- */
EXTERN LK#NINDJ LK#NinAran_next

CHAIN LK#NINDJ LK#NinAran_IYONHER
  @1556 /* Ooh, Aran, you make me feel like a naughty schoolgirl. */
  == ARAN @1557 /* You are in no position for such impudence, Ninde. I could have you- */
  == LK#NINDJ @1558 /* It's awful good fun, though. Impudence, I mean. */
  == ARAN @1559 /* Play nice, Ninde, or suffer the consequences. */
  == LK#NINDJ @1560 /* I can't take threats seriously from a man in electric green britches. */
EXTERN ARAN LK#NinAran_end

CHAIN ARAN LK#NinAran_INZEESME
  @1561 /* Yes, but it is us providing you with a path to Imoen, as well. */
  == LK#NINDJ @1562 /* You haven't done it yet, Linny. */
  == ARAN @1563 /* Silence, Ninde. You are - */
EXTERN LK#NINDJ LK#NinAran_next

CHAIN ARAN LK#NinAran_WATSWISH
  @1564 /* A wise decision <CHARNAME>. Perhaps we shall see how she fairs in the torture chambers...and if she's still in one piece after that, I'm sure some of the more boisterous new recruits could find a use for her. */
  == LK#NINDJ @1565 /* Poor move, <CHARNAME>. And poor judgement, Aran, to think I will be kept here. */
  == ARAN @1566 /* We'll see, won't we. */
  DO ~ClearAllActions() StartCutSceneMode() StartCutScene("lk#nict4")~
EXIT

CHAIN LK#NINDJ LK#NinAran_next
  @1567 /* Lady Amblecrown, to you. */
  == ARAN @1568 /* Oh, well if I haven't forgotten my manners. You'll forgive me for not kissing your hand. */
  == LK#NINDJ @1569 /* Certainly. I'd rather you kiss my boot. */
  == ARAN @1570 /* You really are in no position for such impudence. I could have you- */
  == LK#NINDJ @1571 /* It's awful good fun, though. */
EXTERN ARAN LK#NinAran_end

CHAIN ARAN LK#NinAran_end
  @1572 /* Yes, well. <CHARNAME>, you have succeeded in the task assigned you. It must have been a bloody affair indeed. */
END
  ++ @1573 /* It was. I destroyed many of her followers, but she herself eluded me. */ DO ~AddXPObject(Player1,50000)
AddXPObject(Player2,50000)
AddXPObject(Player3,50000)
AddXPObject(Player4,50000)
AddXPObject(Player5,50000)
AddXPObject(Player6,50000)
ActionOverride("Aran",SetGlobal("spokeTrip","LOCALS",1))~ + 28
  ++ @1574 /* It was, though I am more interested in what she had to say. */ DO ~AddXPObject(Player1,50000)
AddXPObject(Player2,50000)
AddXPObject(Player3,50000)
AddXPObject(Player4,50000)
AddXPObject(Player5,50000)
AddXPObject(Player6,50000)
ActionOverride("Aran",SetGlobal("spokeTrip","LOCALS",1))~ + 29
  ++ @1575 /* You still keep secrets! Bodhi said it was you that attacked Irenicus in the first place! */ DO ~AddXPObject(Player1,50000)
AddXPObject(Player2,50000)
AddXPObject(Player3,50000)
AddXPObject(Player4,50000)
AddXPObject(Player5,50000)
AddXPObject(Player6,50000)
ActionOverride("Aran",SetGlobal("spokeTrip","LOCALS",1))~ + 31

APPEND ARAN

IF ~Global("LK#NindeGivenAran","GLOBAL",1)~ LK#NinAran_end1
  SAY @1572 /* Yes, well. <CHARNAME>, you have succeeded in the task assigned you. It must have been a bloody affair indeed. */
  ++ @1573 /* It was. I destroyed many of her followers, but she herself eluded me. */ DO ~AddXPObject(Player1,50000)
AddXPObject(Player2,50000)
AddXPObject(Player3,50000)
AddXPObject(Player4,50000)
AddXPObject(Player5,50000)
AddXPObject(Player6,50000)
ActionOverride("Aran",SetGlobal("spokeTrip","LOCALS",1))~ + 28
  ++ @1574 /* It was, though I am more interested in what she had to say. */ DO ~AddXPObject(Player1,50000)
AddXPObject(Player2,50000)
AddXPObject(Player3,50000)
AddXPObject(Player4,50000)
AddXPObject(Player5,50000)
AddXPObject(Player6,50000)
ActionOverride("Aran",SetGlobal("spokeTrip","LOCALS",1))~ + 29
  ++ @1575 /* You still keep secrets! Bodhi said it was you that attacked Irenicus in the first place! */ DO ~AddXPObject(Player1,50000)
AddXPObject(Player2,50000)
AddXPObject(Player3,50000)
AddXPObject(Player4,50000)
AddXPObject(Player5,50000)
AddXPObject(Player6,50000)
ActionOverride("Aran",SetGlobal("spokeTrip","LOCALS",1))~ + 31
END

END


// Elhan interjection, chapter 6
// -----------------------------
EXTEND_BOTTOM C6ELHAN2 53
  IF ~InParty("Ninde") !Dead("Ninde")~ EXTERN C6WARSA1 LK#NinElhan
END

CHAIN C6WARSA1 LK#NinElhan
  @1576 /* Wait! You, Ar'Tel'Quessir...something is missing. There is no...no substance... */
  == C6WARSA2 @1577 /* She is--she is as The Exile! */
  == C6ELHAN2 @1578 /* Explain yourself, Ar'Tel'Quessir! */
  == C6WARSA1 @1579 /* Corellon protect me...there is such...such darkness... */
  == LK#NINDJ @1580 /* Keep your ears on, fae-boy, it's not contagious. I'm not here to explain anything to you, I'm here because you're slightly better than your snarky red-eyed counterparts. But I'm starting to re-consider that. At least they didn't subject me to a cryptic inquisition. */
  == C6ELHAN2 @1581 /* Very well, if you will not co-operate. Examine her. */
  == LK#NINDJ @1582 /* *What* me, darling? */
  == C6WARSA2 @1583 /* Such darkness...such darkness I see. */
  == C6WARSA1 @1584 /* But also...the ruins of love. Cold stone. */
  = @1585 /* It was through an act of selflessness she became as she is, Elhan. Through an act of love. */
  == C6ELHAN2 @1586 /* Is this true, Ar'Tel'Quessir? */
  == LK#NINDJ @1587 /* Well, yes--I suppose. */
  == C6ELHAN2 @1588 /* Then...then I am sorry, my Lady. It must have been a great love for you to sacrifice- */
  == LK#NINDJ @1589 /* I was a fool. If you are done with your interrogation, then leave me be. */
END
  IF ~~ EXTERN C6ELHAN2 LK#NinElhan_1
  IF ~!Dead("VICONIA") InParty("Viconia") See("Viconia") !StateCheck("Viconia",STATE_SLEEPING)~ EXTERN C6ELHAN2 55

APPEND C6ELHAN2

IF ~~ LK#NinElhan_1
  SAY @1590 /* As you wish. We are done here. */
  IF ~~ + 54
END

END


/* --------------------- *
 *  Ninde Interjections  *
 * --------------------- */

// Lassal
// ------
ADD_TRANS_TRIGGER LASSAL02 7 ~OR(2) !InParty("Ninde") Dead("Ninde")~

EXTEND_BOTTOM LASSAL02 7
  IF ~InParty("Ninde") !Dead("Ninde")~ EXTERN LASSAL02 LK#Ninde_Lassal
END

CHAIN LASSAL02 LK#Ninde_Lassal
  @1591 /* Wait...ahh. */
  = @1592 /* Ninde, sweet creature, do you remember me? Remember him who you once called master? It has been an amusing show, certainly, watching you put back on your daylight robes, dusting off your wings as though about to fly into a sunrise...when you know it is in the shadow you belong. Abandon this pretence Ninde. You always were a consummate actress. */
  == LK#NINDJ @1593 /* Is your memory as rotten as your face, 'master'? Your guile never did work on me. I suggest we finish this wretch quickly, Bhaalspawn. */
  == LASSAL02 @1594 /* But can you Ninde? Can you add the death throe of yet another – */
  == LK#NINDJ @1595 /* It is finished, Lassal. Watch as your little kingdom falls down around you. */
  == LASSAL02 @1596 /* Fool girl! You think you are the victor in this, while even now all that was yours--all that was *you* - slips from your grasp! Remember how I took it! I remember; that night in Waterdeep, during the Time of Troubles. It had rained, and I mistook the damp for the dew of childhood...still on you. You gave it away, and all for him, that Re- */
  == LK#NINDJ @1597 /* Do not speak his name! I am not your lap dog, though I've bitten enough heels for you. I'll kill you quickly, if that's any mercy, so I might roll over your body all the sooner and never need see your face again! */
  == LASSAL02 @1598 /* Thankless witch! Bodhi was right...I should've drunk you dry twenty years ago. No matter, perhaps like a fine wine, you have matured. Tonight I will savour every sweet drop. */
  DO ~ActionOverride("LASSAL02",Enemy())~
EXIT


// Salvanas
// --------
CHAIN IF WEIGHT #-1 ~InParty("Ninde") See("Ninde") !StateCheck("Ninde",CD_STATE_NOTVALID) Global("LK#Ninde_salvanas","GLOBAL",0) IsGabber("Ninde")~ THEN SALVANAS LK#Ninde_salvanas
  @1599 /* Fondest greetings to you, my sweet nymph...forgive me if I stare, but I am quite in raptures at your beauty. You are quite enough to make the succubi themselves weep with envy, dearest. */
  DO ~IncrementGlobal("LK#Ninde_salvanas","GLOBAL",1)~
  == LK#NINDJ @1600 /* Were I you, I'd be careful not to use that line on someone with the power to summon a couple of them. Then we will see who is weeping. */
  == SALVANAS @1601 /* Ha! A sweet face so often comes with a sour temper! I so rarely encounter one of my own kind these days that your arrival is doubly as miraculous, dear elfin angel. But you need not disguise your attraction to me, my lovely fey... */
  == LK#NINDJ @1602 /* Believe me, I abhor disguise of all kinds. Well, that was a lie. I actually thrive on deception, but as Shar is my witness, I'm telling the complete unhindered truth when I say that if you don't remove your hand from there this very instant, you'll regret the very day you developed a libido. Let us just say your not my...'type'. */
  == SALVANAS @1603 /* Oh come now, sugarkitten...is there any way I can prove my intentions honourable? I am quite enchanted by you, sun elf...the very thought of my hands upon your supple...er, shoulders...drives me insane with desi- */
  == LK#NINDJ @1604 /* Ooh...well, if you put it *that* way. Although I suppose I should warn you, it takes a very special kind of man to satisfy my appetites... */
  == SALVANAS @1605 /* And so it should be! So few men are worthy of such beauty as yours...Pray tell, my love, of your 'special' appetites... */
  == LK#NINDJ @1606 /* (whispers) */
  == SALVANAS @1607 /* Aghh...erm. (gulp) I think I, ah, hear ...something...Farewell! */
  == LK#NINDJ @1608 /* Toodles, Pip! */
  DO ~ActionOverride("Salvanas",MoveToPoint([1063.1366]))~
EXIT


// Belmin the Elf Hater
// --------------------
CHAIN IF WEIGHT #-1 ~InParty("Ninde") See("Ninde") !StateCheck("Ninde",CD_STATE_NOTVALID) RandomNum(2,1) Global("LK#Ninde_belmin","GLOBAL",0)~ THEN BELMIN LK#Ninde_belmin
  @1609 /* You! The sheer self-satisfaction of your manner tells me all. Another of the vile elven ilk dares walk abroad! */
  == LK#NINDJ @1610 /* Why, aren't you a quaint little xenophobe! Despite the noise, you add such color to the locality. */
  == BELMIN @1611 /* Am I nothing more than a joke to you, rank sylvan, as you befoul the promenade so? */
  == LK#NINDJ @1612 /* Befouling...hmm. Come, aren't there things you'd rather be doing to me than yelling abuse? I know this marvelous little inn near- */
  == BELMIN @1613 /* Vile fornicatress! To think I would be dissuaded even a moment by such an offer. Fiend! You shall burn. */
  == LK#NINDJ @1614 /* I'm afraid I have heard all this before, duckling. You ought to take your queer little self away before my casting hand starts to itch. */
EXIT


// Hendak
// ------
CHAIN IF WEIGHT #-1 ~InParty("Ninde") See("Ninde") !StateCheck("Ninde",CD_STATE_NOTVALID) OR(2) Global("HendakReleased","AR0406",3) Global("HendakReleased","AR0406",4) Global("LK#Ninde_hendak","GLOBAL",0)~ THEN HENDAK LK#Ninde_hendak
  @1615 /* Ah, <CHARNAME>, it seems an age since I last saw you. Ah, and I see you have new companions? Greetings, my lady. */
  DO ~SetGlobal("LK#Ninde_hendak","GLOBAL",1)~
  == LK#NINDJ @1616 /* You will address me as Lady Amblecrown, Illuskan. I like what you've done with the place; I hear putrid and dank are in this season. I'm sure all the finest inns in Arabel will be following suit with such delightful decor. */
  == HENDAK @1617 /* Yes, well...it is always nice to see a new patron. */
  == LK#NINDJ @1618 /* I am not new, dear. I used to visit often before the change in management. You looked far better bloodied in the fighting pit then you do affecting civility behind that bar. */
  == HENDAK @1619 /* As you might've looked more at ease amidst the drabs of Madame Nin than swanning about and calling yourself a lady. */
  == LK#NINDJ @1620 /* Jumped-up barbarian. */
EXIT


// Ginia (Brynnlaw)
// ----------------
I_C_T PIRCOR02 13 LK#Ninde_ginia
  == LK#NINDJ IF ~InParty("Ninde") !StateCheck("Ninde",CD_STATE_NOTVALID)~ THEN
  @1621 /* Are we really to spend our time and gold sending this trollop back home? Really, whoring is not so bad. And pickpocketing! If you ask me, these children are learning trades they can ply in any city in the realms. This island is a veritable academy. */
END


// Adalon (end of Underdark)
// ---
I_C_T2 UDSILVER 57 LK#Ninde_adalon
  == LK#NINDJ IF ~InParty("Ninde") !StateCheck("Ninde",CD_STATE_NOTVALID)~ THEN
  @1622 /* Adalon, your human form makes you look fat. Take note. */
END

// Sahuagin Rebel Prince
// ---------------------
INTERJECT SAHPR2 12 LK#Ninde_rebelprince
  == LK#NINDJ IF ~InParty("Ninde") !StateCheck("Ninde",CD_STATE_NOTVALID)~ THEN
  @1623 /* Phheww. */
  == SAHPR2 @1624 /* Why do you make such noises, pink and puny one? */
  == LK#NINDJ @1625 /* Oh, no reason. Just--I didn't know a fish could have garlic breath. Or that anything could be uglier than that two-headed goblin I saw at the circus; but you've proved me oh-so-very wrong. Today has been a day of discovery! */
  == SAHPR2 @1626 /* Hmph. I will ignore you, pointy-eared one, and instead talk to your leader, for <PRO_HESHE> seems far more clever. <CHARNAME>, let us return to the matter at hand; help ensure our species survives and- */
  == LK#NINDJ @1627 /* What on Faerun makes you think we'd want to do that? Your species is ugly, smelly, spiky, and probably somehow offensive to the other two senses as well. Unless you're some sort of exotic delicacy? Though somehow I doubt it, tuna-boy. */
  == SAHPR2 @1628 /* Tuna boy?! What is this, small one?! Do you mock me? I am Prince- */
  == LK#NINDJ @1629 /* Prince Gogotixylixfifideluxe, or something? Shar, 'tis a wonder you manage to remember such names, considering what they say about fishes' brains... */
  == SAHPR2 @1630 /* Gragh! I will not take this from a puny landling! */
EXTERN SAHPR4 11


// Trademeet Gypsy
// ---------------
EXTEND_BOTTOM TRGYP02 2
  IF ~!InPartySlot(LastTalkedToBy,0) Name("Ninde",LastTalkedToBy)~ EXTERN TRGYP02 LK#NindeGypsy_0
END

APPEND TRGYP02
IF ~~ LK#NindeGypsy_0
  SAY @1631 /* You have a generous spirit, dear woman, but do not let your past losses cloud your vision. Let the strength within you come forth, and do not fall to the temptation to wait for the next sunrise. */
  IF ~~ EXTERN LK#NINDJ LK#NindeGypsy_1
END
END

APPEND LK#NINDJ
IF ~~ LK#NindeGypsy_1
  SAY @1632 /* I appreciate the advice, dear, but there is no danger of that. */
  IF ~~ EXIT
END
END


// Brats
// -----
CHAIN IF ~See("Ninde")
InParty("Ninde")
!StateCheck("Ninde",CD_STATE_NOTVALID)
RandomNum(5,1)
Global("LK#Ninde_brat","AR0700",0)~ THEN BRAT1 LK#Ninde_brat1
@1633 /* Missus, you're real pretty! Are you a princess? */
== LK#NINDJ @1634 /* No. I'm not a princess. I'm a witch. An evil, evil witch. */
== BRAT1 @1635 /* A w-witch? */
== LK#NINDJ @1636 /* That's what I said. And there's a great tradition of witches eating small, irritating children. I thought it a little barbaric, but perhaps there's something to be said for the old ways. Boil a pot and pass me the carving knife! */
== BRAT1 @1637 /* Mummy! */
EXIT

CHAIN IF ~See("Ninde")
InParty("Ninde")
!StateCheck("Ninde",CD_STATE_NOTVALID)
RandomNum(5,1)
Global("LK#Ninde_brat","AR0700",0)~ THEN BRAT2 LK#Ninde_brat1
@1633 /* Missus, you're real pretty! Are you a princess? */
== LK#NINDJ @1634 /* No. I'm not a princess. I'm a witch. An evil, evil witch. */
== BRAT2 @1635 /* A w-witch? */
== LK#NINDJ @1636 /* That's what I said. And there's a great tradition of witches eating small, irritating children. I thought it a little barbaric, but perhaps there's something to be said for the old ways. Boil a pot and pass me the carving knife! */
== BRAT2 @1637 /* Mummy! */
EXIT

CHAIN IF ~See("Ninde")
InParty("Ninde")
!StateCheck("Ninde",CD_STATE_NOTVALID)
RandomNum(5,1)
Global("LK#Ninde_brat","AR0700",0)~ THEN BRAT1 LK#Ninde_brat3
@1633 /* Missus, you're real pretty! Are you a princess? */
== LK#NINDJ @1634 /* No. I'm not a princess. I'm a witch. An evil, evil witch. */
== BRAT3 @1635 /* A w-witch? */
== LK#NINDJ @1636 /* That's what I said. And there's a great tradition of witches eating small, irritating children. I thought it a little barbaric, but perhaps there's something to be said for the old ways. Boil a pot and pass me the carving knife! */
== BRAT3 @1637 /* Mummy! */
EXIT


// In Hell
// -------
I_C_T3 PLAYER1 25 LK#Ninde_Hell
  == LK#NINDJ IF ~InParty("Ninde") !StateCheck("Ninde",CD_STATE_NOTVALID) !Global("LK#NindeRomanceActive","GLOBAL",2)~ THEN @1638 /* It couldn't have just been easy. He couldn't have just died. Once again, life unfolds with tedious inevitability. */
  == LK#NINDJ IF ~InParty("Ninde") !StateCheck("Ninde",CD_STATE_NOTVALID) !Global("LK#NindeRomanceActive","GLOBAL",2)~ THEN @1639 /* If I didn't know better I'd think I just got very, very drunk last night. Oh well. Let's get this over with, <CHARNAME>, and find a way out of here before all these hot breezes wreak further havoc on my split ends. */
  == LK#NINDJ IF ~InParty("Ninde") !StateCheck("Ninde",CD_STATE_NOTVALID) Global("LK#NindeRomanceActive","GLOBAL",2)~ THEN @1640 /* So you really *do* end up here if you go round kissing all the boys. */
END


// Irenicus in Hell
// ----------------
I_C_T HELLJON 7 LK#Nep_Iren
== LK#NINDJ IF ~InParty("Ninde") !StateCheck("Ninde",CD_STATE_NOTVALID)~ THEN @1641 /* They say it seems the stars have stooped downward to watch this age unfold...and I think we are about to see why. I am with you, <CHARNAME>. I am with you. */
END

I_C_T HELLJON 8 LK#Nep_Iren1
== LK#NINDJ IF ~InParty("Ninde") !StateCheck("Ninde",CD_STATE_NOTVALID)~ THEN @1641 /* They say it seems the stars have stooped downward to watch this age unfold...and I think we are about to see why. I am with you, <CHARNAME>. I am with you. */
END

I_C_T HELLJON 9 LK#Nep_Iren2
== LK#NINDJ IF ~InParty("Ninde") !StateCheck("Ninde",CD_STATE_NOTVALID)~ THEN @1641 /* They say it seems the stars have stooped downward to watch this age unfold...and I think we are about to see why. I am with you, <CHARNAME>. I am with you. */
END

I_C_T HELLJON 10 LK#Nep_Iren3
== LK#NINDJ IF ~InParty("Ninde") !StateCheck("Ninde",CD_STATE_NOTVALID)~ THEN @1641 /* They say it seems the stars have stooped downward to watch this age unfold...and I think we are about to see why. I am with you, <CHARNAME>. I am with you. */
END


// Tree of Life
// ------------
EXTEND_BOTTOM PLAYER1 33
  IF ~InParty("Ninde") InMyArea("Ninde") !StateCheck("Ninde",CD_STATE_NOTVALID) Global("LK#NindeTreeofLife","GLOBAL",0) !Global("LK#NindeRomanceActive","GLOBAL",2)~ EXTERN PLAYER1 LK#NindeToL
  IF ~InParty("Ninde") InMyArea("Ninde") !StateCheck("Ninde",CD_STATE_NOTVALID) Global("LK#NindeTreeofLife","GLOBAL",0) Global("LK#NindeRomanceActive","GLOBAL",2)~ EXTERN PLAYER1 LK#NindeToL1
END


CHAIN PLAYER1 LK#NindeToL
  @1642 /* Whatever reservations you may have had about the wordy, wry and flirtatious Ninde, she has proved a steadfast companion thus far. Despite her bleak exterior, you know she has a longing for both life and for love. */
END
  ++ @1643 /* This is my battle, Ninde. It's too dangerous--I won't risk your life to avenge what was taken from me. */ DO ~SetGlobal("LK#NindeTreeofLife","GLOBAL",1)~ EXTERN LK#NINDJ LK#NindeToL_1
  ++ @1644 /* You don't need to come with me, Ninde. You've done more than enough already. */ DO ~SetGlobal("LK#NindeTreeofLife","GLOBAL",1)~ EXTERN LK#NINDJ LK#NindeToL_1
  ++ @1645 /* Are you with me, Ninde? I'll need all the help I can get to defeat Irenicus. */ DO ~SetGlobal("LK#NindeTreeofLife","GLOBAL",1)~ EXTERN LK#NINDJ LK#NindeToL_1


APPEND LK#NINDJ
  IF ~~ LK#NindeToL_1
    SAY @1646 /* I've thought long and hard about this moment, dear. Wondered which way I was to turn when my fate stared me in the face - and I have decided. I might leave now and wither away in some quiet corner of Faerun, but that wouldn't be very me, would it? No, if there is any excitement left to be had before the oncoming oblivion, I will be there to have it! */
    COPY_TRANS PLAYER1 33
  END
END


CHAIN PLAYER1 LK#NindeToL1
  @1642 /* Whatever reservations you may have had about the wordy, wry and flirtatious Ninde, she has proved a steadfast companion thus far. Despite her bleak exterior, you know she has a longing for both life and for love. */
END
  ++ @1643 /* This is my battle, Ninde. It's too dangerous--I won't risk your life to avenge what was taken from me. */ DO ~SetGlobal("LK#NindeTreeofLife","GLOBAL",1)~ EXTERN LK#NINDJ LK#NindeToL1_1
  ++ @1647 /* You don't need to come with me, Ninde. */ DO ~SetGlobal("LK#NindeTreeofLife","GLOBAL",1)~ EXTERN LK#NINDJ LK#NindeToL1_1
  ++ @1645 /* Are you with me, Ninde? I'll need all the help I can get to defeat Irenicus. */ DO ~SetGlobal("LK#NindeTreeofLife","GLOBAL",1)~ EXTERN LK#NINDJ LK#NindeToL1_1

APPEND LK#NINDJ
  IF ~~ LK#NindeToL1_1
  SAY @1648 /* Perhaps not, but I have come this far. Do not think I fight for you--I simply know that a raucous defeat is better than a quiet expiration. */
  COPY_TRANS PLAYER1 33
END
END


/* --------------------------------- *
 *  Ninde Player Initiated Dialogue  *
 * --------------------------------- */
APPEND LK#NINDJ

// Clicky-click
// -------------
IF ~IsGabber(Player1) CombatCounter(0) InParty("Ninde") !StateCheck("Ninde",CD_STATE_NOTVALID) GlobalLT("LK#NindeLoveTalks","GLOBAL",9) GlobalLT("LK#NindeFriendTalks","GLOBAL",5)~ LK#NindePID1
  SAY @1649 /* (You approach Ninde with a sense of trepidation--one can never be sure what the lusty sun elf will do next.) */
  ++ @1650 /* (Ask Ninde a question) */ + LK#NindeChat
  + ~OR(2) Global("LK#NindeRomanceActive","GLOBAL",1)  Global("LK#NindeRomanceActive","GLOBAL",2)~ + @1651 /* (Flirt with Ninde) */ + LK#NindeFlirt
  ++ @1652 /* (Leave Ninde alone) */ EXIT
END

IF ~IsGabber(Player1) CombatCounter(0) InParty("Ninde") !StateCheck("Ninde",CD_STATE_NOTVALID) OR(2) GlobalLT("LK#NindeLoveTalks","GLOBAL",17) GlobalLT("LK#NindeFriendTalks","GLOBAL",9) OR(2) GlobalGT("LK#NindeLoveTalks","GLOBAL",8) GlobalGT("LK#NindeFriendTalks","GLOBAL",4)~ LK#NindePID2
  SAY @1653 /* (Although the mean-spirited lady appears to be tolerating you a little more these days, you can't suppress a nervous smile as her yellow gaze shifts up to your face.) */
  ++ @1650 /* (Ask Ninde a question) */ + LK#NindeChat
  + ~OR(2) Global("LK#NindeRomanceActive","GLOBAL",1)  Global("LK#NindeRomanceActive","GLOBAL",2)~ + @1651 /* (Flirt with Ninde) */ + LK#NindeFlirt
  ++ @1652 /* (Leave Ninde alone) */ EXIT
END

IF ~IsGabber(Player1) CombatCounter(0) InParty("Ninde") !StateCheck("Ninde",CD_STATE_NOTVALID) OR(2) GlobalLT("LK#NindeLoveTalks","GLOBAL",27) GlobalLT("LK#NindeFriendTalks","GLOBAL",13) OR(2) GlobalGT("LK#NindeLoveTalks","GLOBAL",16) GlobalGT("LK#NindeFriendTalks","GLOBAL",8)~ LK#NindePID3
  SAY @1654 /* (It is not unusual for Ninde to look bored, and neither is it unusual for her to seek your company when she is so. Seeing her maudlin expression as she picks at her manicured nails, you decide to seize the opportunity.) */
  ++ @1650 /* (Ask Ninde a question) */ + LK#NindeChat
  + ~OR(2) Global("LK#NindeRomanceActive","GLOBAL",1)  Global("LK#NindeRomanceActive","GLOBAL",2)~ + @1651 /* (Flirt with Ninde) */ + LK#NindeFlirt
  ++ @1652 /* (Leave Ninde alone) */ EXIT
END

IF ~IsGabber(Player1) CombatCounter(0) InParty("Ninde") !StateCheck("Ninde",CD_STATE_NOTVALID) OR(2) GlobalGT("LK#NindeFriendTalks","GLOBAL",12) GlobalGT("LK#NindeLoveTalks","GLOBAL",26)~ LK#NindePID4
  SAY @1655 /* (As you approach Ninde, she throws you one of her rare, languid smiles.) */
  ++ @1650 /* (Ask Ninde a question) */ + LK#NindeChat
  + ~OR(2) Global("LK#NindeRomanceActive","GLOBAL",1)  Global("LK#NindeRomanceActive","GLOBAL",2)~ + @1651 /* (Flirt with Ninde) */ + LK#NindeFlirt
  ++ @1652 /* (Leave Ninde alone) */ EXIT
END

IF ~~ LK#NindeChat
  SAY @1656 /* Out with it then, Bhaalspawn, I haven't all day, you know. */
  ++ @1657 /* Ninde, what is your favourite colour? */ + LK#NindeChat_colour
  ++ @1658 /* Ninde, what is your favourite flower? */ + LK#NindeChat_flower
  + ~Gender(Player1,MALE)~ + @1659 /* Have you ever...been with a man? */ + LK#NindeChat_man
  + ~Gender(Player1,FEMALE)~ + @1659 /* Have you ever...been with a man? */ + LK#NindeChat_man
  ++ @1660 /* Have you ever been in love? */ + LK#NindeChat_love
  ++ @1661 /* What's your favourite place? */ + LK#NindeChat_place
  ++ @1662 /* Do you have a favourite food? */ + LK#NindeChat_food
  ++ @1663 /* Have you ever kissed a woman? */ + LK#NindeChat_kissedgirl
  + ~Gender(Player1,MALE)~ + @1664 /* What do you think of me? */ + LK#NindeChat_opinion
  + ~Gender(Player1,FEMALE)~ + @1664 /* What do you think of me? */ + LK#NindeChat_opinion2
  ++ @1665 /* How long have you been a mage for, Ninde? */ + LK#NindeChat_mage
  ++ @1666 /* What were your parents like? */ + LK#NindeChat_parents
  ++ @1667 /* Do you have any siblings? */ + LK#NindeChat_siblings
  ++ @1668 /* Where did you grow up? */ + LK#NindeChat_growup
  ++ @1669 /* Why is it that you're evil, Ninde? */ + LK#NindeChat_evil
  ++ @1670 /* If you could be an animal, what would you be? */ + LK#NindeChat_animal
  ++ @1671 /* What does your name mean? */ + LK#NindeChat_name
  + ~RandomNum(2,1)~ + @1672 /* Ninde, what do you look for in a man? */ + LK#NindeChat_lookfor1
  + ~RandomNum(2,2)~ + @1672 /* Ninde, what do you look for in a man? */ + LK#NindeChat_lookfor2
  + ~OR(6) AreaCheck("AR1500") AreaCheck("AR1512") AreaCheck("AR1513") AreaCheck("AR1514") AreaCheck("AR1515") AreaCheck("AR1516")~ + @1673 /* Have you any advice for me, Ninde? */ + LK#NindeChat_advicespellhold
  + ~OR(2) AreaCheck("AR2100") AreaCheck("AR2200")~ + @1673 /* Have you any advice for me, Ninde? */ + LK#NindeChat_adviceunderdark
  + ~RandomNum(4,1) GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ + @1673 /* Have you any advice for me, Ninde? */ + LK#NindeChat_advicech6
  + ~RandomNum(4,2) GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) !AreaCheck("AR2100") !AreaCheck("AR2200") !AreaCheck("AR1500") !AreaCheck("AR1512") !AreaCheck("AR1513") !AreaCheck("AR1514") !AreaCheck("AR1515") !AreaCheck("AR1516")~ + @1673 /* Have you any advice for me, Ninde? */ + LK#NindeChat_advice1
  + ~RandomNum(4,3) GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) !AreaCheck("AR2100") !AreaCheck("AR2200") !AreaCheck("AR1500")  !AreaCheck("AR1512") !AreaCheck("AR1513") !AreaCheck("AR1514") !AreaCheck("AR1515") !AreaCheck("AR1516")~ + @1673 /* Have you any advice for me, Ninde? */ + LK#NindeChat_advice2
  + ~RandomNum(4,4) GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) !AreaCheck("AR2100") !AreaCheck("AR2200") !AreaCheck("AR1500")  !AreaCheck("AR1512") !AreaCheck("AR1513") !AreaCheck("AR1514") !AreaCheck("AR1515") !AreaCheck("AR1516")~ + @1673 /* Have you any advice for me, Ninde? */ + LK#NindeChat_advice3
  + ~RandomNum(3,1) !GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) !AreaCheck("AR2100") !AreaCheck("AR2200") !AreaCheck("AR1500") !AreaCheck("AR1512") !AreaCheck("AR1513") !AreaCheck("AR1514") !AreaCheck("AR1515") !AreaCheck("AR1516")~ + @1673 /* Have you any advice for me, Ninde? */ + LK#NindeChat_advice1
  + ~RandomNum(3,2) !GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) !AreaCheck("AR2100") !AreaCheck("AR2200") !AreaCheck("AR1500")  !AreaCheck("AR1512") !AreaCheck("AR1513") !AreaCheck("AR1514") !AreaCheck("AR1515") !AreaCheck("AR1516")~ + @1673 /* Have you any advice for me, Ninde? */ + LK#NindeChat_advice2
  + ~RandomNum(3,3) !GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) !AreaCheck("AR2100") !AreaCheck("AR2200") !AreaCheck("AR1500")  !AreaCheck("AR1512") !AreaCheck("AR1513") !AreaCheck("AR1514") !AreaCheck("AR1515") !AreaCheck("AR1516")~ + @1673 /* Have you any advice for me, Ninde? */ + LK#NindeChat_advice3
  ++ @1674 /* What were you like as a child? */ + LK#NindeChat_child
  ++ @1675 /* Do you have a favourite word, Ninde? */ + LK#NindeChat_word
  ++ @1676 /* What, in your opinion, is the best thing to be discovered by men and gods? */ + LK#NindeChat_best
  + ~RandomNum(6,1)~ + @1677 /* Ninde, you're very beautiful. */ + LK#NindeChat_pretty1
  + ~RandomNum(6,2)~ + @1677 /* Ninde, you're very beautiful. */ + LK#NindeChat_pretty2
  + ~RandomNum(6,3)~ + @1677 /* Ninde, you're very beautiful. */ + LK#NindeChat_pretty3
  + ~RandomNum(6,4)~ + @1677 /* Ninde, you're very beautiful. */ + LK#NindeChat_pretty4
  + ~RandomNum(6,5)~ + @1677 /* Ninde, you're very beautiful. */ + LK#NindeChat_pretty5
  + ~RandomNum(6,6)~ + @1677 /* Ninde, you're very beautiful. */ + LK#NindeChat_pretty6
  + ~OR(2) Global("LK#NindeRomanceActive","GLOBAL",1)  Global("LK#NindeRomanceActive","GLOBAL",2)~ + @1678 /* Er, Ninde - I think you may have the wrong idea about us. I'd rather we remained friends. If you have friends. */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ + LK#NindeChat_justfriends
  + ~OR(2) Global("LK#NindeRomanceActive","GLOBAL",1)  Global("LK#NindeRomanceActive","GLOBAL",2)~ + @1679 /* Ninde, I'm not sure quite how to put this. You seem to think I'm interested in you...romantically. And I am quite simply not. It's nothing personal, it's just...I'm not like that. I play for the other team. Drink from the other side of the goblet. Play the pink oboe. I...well. I like men. */ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3) SetGlobal("LK#Ninde_pcisgay","GLOBAL",1)~ + LK#NindeChat_gay
  ++ @1652 /* (Leave Ninde alone) */ EXIT
END

IF ~~ LK#NindeFlirt
  SAY @1680 /* What is it? */
  + ~RandomNum(12,1)~ + @1681 /* (Watch Ninde) */ + LK#NindeFlirt_watch1
  + ~RandomNum(12,2)~ + @1681 /* (Watch Ninde) */ + LK#NindeFlirt_watch2
  + ~RandomNum(12,3)~ + @1681 /* (Watch Ninde) */ + LK#NindeFlirt_watch3
  + ~RandomNum(12,4)~ + @1681 /* (Watch Ninde) */ + LK#NindeFlirt_watch4
  + ~RandomNum(12,5)~ + @1681 /* (Watch Ninde) */ + LK#NindeFlirt_watch5
  + ~RandomNum(12,6)~ + @1681 /* (Watch Ninde) */ + LK#NindeFlirt_watch6
  + ~RandomNum(12,7)~ + @1681 /* (Watch Ninde) */ + LK#NindeFlirt_watch7
  + ~RandomNum(12,8)~ + @1681 /* (Watch Ninde) */ + LK#NindeFlirt_watch8
  + ~RandomNum(12,9)~ + @1681 /* (Watch Ninde) */ + LK#NindeFlirt_watch9
  + ~RandomNum(12,10)~ + @1681 /* (Watch Ninde) */ + LK#NindeFlirt_watch10
  + ~RandomNum(12,11)~ + @1681 /* (Watch Ninde) */ + LK#NindeFlirt_watch11
  + ~RandomNum(12,12)~ + @1681 /* (Watch Ninde) */ + LK#NindeFlirt_watch12
  + ~RandomNum(4,1) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1682 /* (Play with Ninde's hair) */ + LK#NindeFlirt_hair1
  + ~RandomNum(4,2) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1682 /* (Play with Ninde's hair) */ + LK#NindeFlirt_hair2
  + ~RandomNum(4,3) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1682 /* (Play with Ninde's hair) */ + LK#NindeFlirt_hair4
  + ~RandomNum(4,4) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1682 /* (Play with Ninde's hair) */ + LK#NindeFlirt_hair7
  + ~RandomNum(7,1) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1682 /* (Play with Ninde's hair) */ + LK#NindeFlirt_hair1
  + ~RandomNum(7,2) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1682 /* (Play with Ninde's hair) */ + LK#NindeFlirt_hair2
  + ~RandomNum(7,3) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1682 /* (Play with Ninde's hair) */ + LK#NindeFlirt_hair3
  + ~RandomNum(7,4) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1682 /* (Play with Ninde's hair) */ + LK#NindeFlirt_hair4
  + ~RandomNum(7,5) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1682 /* (Play with Ninde's hair) */ + LK#NindeFlirt_hair5
  + ~RandomNum(7,6) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1682 /* (Play with Ninde's hair) */ + LK#NindeFlirt_hair6
  + ~RandomNum(7,7) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1682 /* (Play with Ninde's hair) */ + LK#NindeFlirt_hair7
  + ~RandomNum(7,1) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010") CheckStatGT(Player1,8,DEX) OR(4) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HALFORC) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1683 /* (Dance with Ninde) */ + LK#NindeFlirt_dance1
  + ~RandomNum(7,2) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010") CheckStatGT(Player1,8,DEX) OR(4) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HALFORC) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1683 /* (Dance with Ninde) */ + LK#NindeFlirt_dance2
  + ~RandomNum(7,3) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010") CheckStatGT(Player1,8,DEX) OR(4) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HALFORC) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1683 /* (Dance with Ninde) */ + LK#NindeFlirt_dance3
  + ~RandomNum(7,4) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010") CheckStatGT(Player1,8,DEX) OR(4) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HALFORC) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1683 /* (Dance with Ninde) */ + LK#NindeFlirt_dance4
  + ~RandomNum(7,5) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010") CheckStatGT(Player1,8,DEX) OR(4) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HALFORC) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1683 /* (Dance with Ninde) */ + LK#NindeFlirt_dance5
  + ~RandomNum(7,6) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010") CheckStatGT(Player1,8,DEX) OR(4) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HALFORC) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1683 /* (Dance with Ninde) */ + LK#NindeFlirt_dance6
  + ~RandomNum(7,7) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010") CheckStatGT(Player1,8,DEX) OR(4) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HALFORC) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1683 /* (Dance with Ninde) */ + LK#NindeFlirt_dance7
  + ~RandomNum(3,1) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010") CheckStatGT(Player1,8,DEX) OR(4) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HALFORC) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1683 /* (Dance with Ninde) */ + LK#NindeFlirt_dance4
  + ~RandomNum(3,2) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010") CheckStatGT(Player1,8,DEX) OR(4) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HALFORC) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1683 /* (Dance with Ninde) */ + LK#NindeFlirt_dance5
  + ~RandomNum(3,3) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010") CheckStatGT(Player1,8,DEX) OR(4) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HALFORC) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1683 /* (Dance with Ninde) */ + LK#NindeFlirt_dance6
  + ~RandomNum(8,1) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010") CheckStatGT(Player1,8,DEX) OR(3) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,DWARF) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1683 /* (Dance with Ninde) */ + LK#NindeFlirt_dance21
  + ~RandomNum(8,2) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010") CheckStatGT(Player1,8,DEX) OR(3) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,DWARF) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1683 /* (Dance with Ninde) */ + LK#NindeFlirt_dance22
  + ~RandomNum(8,3) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010") CheckStatGT(Player1,8,DEX) OR(3) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,DWARF) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1683 /* (Dance with Ninde) */ + LK#NindeFlirt_dance23
  + ~RandomNum(8,4) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010") CheckStatGT(Player1,8,DEX) OR(3) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,DWARF) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1683 /* (Dance with Ninde) */ + LK#NindeFlirt_dance24
  + ~RandomNum(8,5) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010") CheckStatGT(Player1,8,DEX) OR(3) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,DWARF) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1683 /* (Dance with Ninde) */ + LK#NindeFlirt_dance25
  + ~RandomNum(8,6) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010") CheckStatGT(Player1,8,DEX) OR(3) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,DWARF) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1683 /* (Dance with Ninde) */ + LK#NindeFlirt_dance26
  + ~RandomNum(8,7) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010") CheckStatGT(Player1,8,DEX) OR(3) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,DWARF) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1683 /* (Dance with Ninde) */ + LK#NindeFlirt_dance27
  + ~RandomNum(8,8) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010") CheckStatGT(Player1,8,DEX) OR(3) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,DWARF) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1683 /* (Dance with Ninde) */ + LK#NindeFlirt_dance28
  + ~RandomNum(6,1) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010") CheckStatGT(Player1,8,DEX) OR(3) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,DWARF) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1683 /* (Dance with Ninde) */ + LK#NindeFlirt_dance21
  + ~RandomNum(6,2) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010") CheckStatGT(Player1,8,DEX) OR(3) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,DWARF) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1683 /* (Dance with Ninde) */ + LK#NindeFlirt_dance22
  + ~RandomNum(6,3) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010") CheckStatGT(Player1,8,DEX) OR(3) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,DWARF) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1683 /* (Dance with Ninde) */ + LK#NindeFlirt_dance23
  + ~RandomNum(6,4) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010") CheckStatGT(Player1,8,DEX) OR(3) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,DWARF) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1683 /* (Dance with Ninde) */ + LK#NindeFlirt_dance24
  + ~RandomNum(6,5) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010") CheckStatGT(Player1,8,DEX) OR(3) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,DWARF) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1683 /* (Dance with Ninde) */ + LK#NindeFlirt_dance25
  + ~RandomNum(6,6) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010") CheckStatGT(Player1,8,DEX) OR(3) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,DWARF) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1683 /* (Dance with Ninde) */ + LK#NindeFlirt_dance26
  + ~RandomNum(5,1) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1684 /* (Smile at Ninde) */ + LK#NindeFlirt_smile1
  + ~RandomNum(5,2) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1684 /* (Smile at Ninde) */ + LK#NindeFlirt_smile2
  + ~RandomNum(5,3) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1684 /* (Smile at Ninde) */ + LK#NindeFlirt_smile3
  + ~RandomNum(5,4) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1684 /* (Smile at Ninde) */ + LK#NindeFlirt_smile4
  + ~RandomNum(5,5) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1684 /* (Smile at Ninde) */ + LK#NindeFlirt_smile5
  + ~RandomNum(13,1) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1684 /* (Smile at Ninde) */ + LK#NindeFlirt_smile1
  + ~RandomNum(13,2) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1684 /* (Smile at Ninde) */ + LK#NindeFlirt_smile2
  + ~RandomNum(13,3) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1684 /* (Smile at Ninde) */ + LK#NindeFlirt_smile3
  + ~RandomNum(13,4) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1684 /* (Smile at Ninde) */ + LK#NindeFlirt_smile4
  + ~RandomNum(13,5) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1684 /* (Smile at Ninde) */ + LK#NindeFlirt_smile5
  + ~RandomNum(13,6) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1684 /* (Smile at Ninde) */ + LK#NindeFlirt_smile6
  + ~RandomNum(13,7) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1684 /* (Smile at Ninde) */ + LK#NindeFlirt_smile7
  + ~RandomNum(13,8) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1684 /* (Smile at Ninde) */ + LK#NindeFlirt_smile8
  + ~RandomNum(13,9) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1684 /* (Smile at Ninde) */ + LK#NindeFlirt_smile9
  + ~RandomNum(13,10) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1684 /* (Smile at Ninde) */ + LK#NindeFlirt_smile10
  + ~RandomNum(13,11) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1684 /* (Smile at Ninde) */ + LK#NindeFlirt_smile11
  + ~RandomNum(13,12) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1684 /* (Smile at Ninde) */ + LK#NindeFlirt_smile12
  + ~RandomNum(13,13) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1684 /* (Smile at Ninde) */ + LK#NindeFlirt_smile13
  + ~RandomNum(4,1) GlobalLT("LK#NindeLoveTalks","GLOBAL",19) GlobalLT("LK#NindeFlirt_hugs","LOCALS",4)~ + @1685 /* (Hug Ninde) */ DO ~IncrementGlobal("LK#NindeFlirt_hugs","LOCALS",1)~ + LK#NindeFlirt_hug1
  + ~RandomNum(4,2) GlobalLT("LK#NindeLoveTalks","GLOBAL",19) GlobalLT("LK#NindeFlirt_hugs","LOCALS",4)~ + @1685 /* (Hug Ninde) */ DO ~IncrementGlobal("LK#NindeFlirt_hugs","LOCALS",1)~ + LK#NindeFlirt_hug2
  + ~RandomNum(4,3) GlobalLT("LK#NindeLoveTalks","GLOBAL",19) GlobalLT("LK#NindeFlirt_hugs","LOCALS",4)~ + @1685 /* (Hug Ninde) */ DO ~IncrementGlobal("LK#NindeFlirt_hugs","LOCALS",1)~ + LK#NindeFlirt_hug3
  + ~RandomNum(4,4) GlobalLT("LK#NindeLoveTalks","GLOBAL",19) GlobalLT("LK#NindeFlirt_hugs","LOCALS",4)~ + @1685 /* (Hug Ninde) */ DO ~IncrementGlobal("LK#NindeFlirt_hugs","LOCALS",1)~ + LK#NindeFlirt_hug4
  + ~Global("LK#NindeFlirt_hugs","LOCALS",4) GlobalLT("LK#NindeLoveTalks","GLOBAL",19)~ + @1685 /* (Hug Ninde) */ DO ~IncrementGlobal("LK#NindeFlirt_hugs","LOCALS",1)~ + LK#NindeFlirt_hugno
  + ~Global("LK#NindeFlirt_hugs","LOCALS",5) GlobalLT("LK#NindeLoveTalks","GLOBAL",19)~ + @1685 /* (Hug Ninde) */ DO ~IncrementGlobal("LK#NindeFlirt_hugs","LOCALS",1)~ + LK#NindeFlirt_hugno_final
  + ~RandomNum(5,1) GlobalGT("LK#NindeLoveTalks","GLOBAL",18)~ + @1685 /* (Hug Ninde) */ + LK#NindeFlirt_hug5
  + ~RandomNum(5,2) GlobalGT("LK#NindeLoveTalks","GLOBAL",18)~ + @1685 /* (Hug Ninde) */ + LK#NindeFlirt_hug6
  + ~RandomNum(5,3) GlobalGT("LK#NindeLoveTalks","GLOBAL",18)~ + @1685 /* (Hug Ninde) */ + LK#NindeFlirt_hug7
  + ~RandomNum(5,4) GlobalGT("LK#NindeLoveTalks","GLOBAL",18)~ + @1685 /* (Hug Ninde) */ + LK#NindeFlirt_hug8
  + ~RandomNum(5,5) GlobalGT("LK#NindeLoveTalks","GLOBAL",18)~ + @1685 /* (Hug Ninde) */ + LK#NindeFlirt_hug9
  + ~RandomNum(6,1) CheckStatGT(Player1,12,DEX) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1686 /* (Tickle Ninde) */ + LK#NindeFlirt_tickle1
  + ~RandomNum(6,2) CheckStatGT(Player1,12,DEX) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1686 /* (Tickle Ninde) */ + LK#NindeFlirt_tickle2
  + ~RandomNum(6,3) CheckStatGT(Player1,12,DEX) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1686 /* (Tickle Ninde) */ + LK#NindeFlirt_tickle3
  + ~RandomNum(6,4) CheckStatGT(Player1,12,DEX) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1686 /* (Tickle Ninde) */ + LK#NindeFlirt_tickle4
  + ~RandomNum(6,5) CheckStatGT(Player1,12,DEX) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1686 /* (Tickle Ninde) */ + LK#NindeFlirt_tickle5
  + ~RandomNum(6,6) CheckStatGT(Player1,12,DEX) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1686 /* (Tickle Ninde) */ + LK#NindeFlirt_tickle6
  + ~RandomNum(7,1) CheckStatLT(Player1,13,DEX) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1686 /* (Tickle Ninde) */ + LK#NindeFlirt_tickle1
  + ~RandomNum(7,2) CheckStatLT(Player1,13,DEX) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1686 /* (Tickle Ninde) */ + LK#NindeFlirt_tickle2
  + ~RandomNum(7,3) CheckStatLT(Player1,13,DEX) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1686 /* (Tickle Ninde) */ + LK#NindeFlirt_tickle3
  + ~RandomNum(7,4) CheckStatLT(Player1,13,DEX) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1686 /* (Tickle Ninde) */ + LK#NindeFlirt_tickle4
  + ~RandomNum(7,5) CheckStatLT(Player1,13,DEX) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1686 /* (Tickle Ninde) */ + LK#NindeFlirt_tickle5
  + ~RandomNum(7,6) CheckStatLT(Player1,13,DEX) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1686 /* (Tickle Ninde) */ + LK#NindeFlirt_tickle6
  + ~RandomNum(7,7) CheckStatLT(Player1,13,DEX) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1686 /* (Tickle Ninde) */ + LK#NindeFlirt_tickle7
  + ~RandomNum(7,1) CheckStatGT(Player1,12,DEX) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1686 /* (Tickle Ninde) */ + LK#NindeFlirt_tickle1
  + ~RandomNum(7,2) CheckStatGT(Player1,12,DEX) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1686 /* (Tickle Ninde) */ + LK#NindeFlirt_tickle2
  + ~RandomNum(7,3) CheckStatGT(Player1,12,DEX) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1686 /* (Tickle Ninde) */ + LK#NindeFlirt_tickle3
  + ~RandomNum(7,4) CheckStatGT(Player1,12,DEX) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1686 /* (Tickle Ninde) */ + LK#NindeFlirt_tickle4
  + ~RandomNum(7,5) CheckStatGT(Player1,12,DEX) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1686 /* (Tickle Ninde) */ + LK#NindeFlirt_tickle5
  + ~RandomNum(7,6) CheckStatGT(Player1,12,DEX) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1686 /* (Tickle Ninde) */ + LK#NindeFlirt_tickle6
  + ~RandomNum(7,7) CheckStatGT(Player1,12,DEX) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1686 /* (Tickle Ninde) */ + LK#NindeFlirt_tickle8
  + ~RandomNum(8,1) CheckStatLT(Player1,13,DEX) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1686 /* (Tickle Ninde) */ + LK#NindeFlirt_tickle1
  + ~RandomNum(8,2) CheckStatLT(Player1,13,DEX) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1686 /* (Tickle Ninde) */ + LK#NindeFlirt_tickle2
  + ~RandomNum(8,3) CheckStatLT(Player1,13,DEX) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1686 /* (Tickle Ninde) */ + LK#NindeFlirt_tickle3
  + ~RandomNum(8,4) CheckStatLT(Player1,13,DEX) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1686 /* (Tickle Ninde) */ + LK#NindeFlirt_tickle4
  + ~RandomNum(8,5) CheckStatLT(Player1,13,DEX) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1686 /* (Tickle Ninde) */ + LK#NindeFlirt_tickle5
  + ~RandomNum(8,6) CheckStatLT(Player1,13,DEX) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1686 /* (Tickle Ninde) */ + LK#NindeFlirt_tickle6
  + ~RandomNum(8,7) CheckStatLT(Player1,13,DEX) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1686 /* (Tickle Ninde) */ + LK#NindeFlirt_tickle7
  + ~RandomNum(8,7) CheckStatLT(Player1,13,DEX) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1686 /* (Tickle Ninde) */ + LK#NindeFlirt_tickle8
  + ~RandomNum(4,1) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1687 /* (Pat Ninde's behind) */ + LK#NindeFlirt_pat1
  + ~RandomNum(4,2) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1687 /* (Pat Ninde's behind) */ + LK#NindeFlirt_pat2
  + ~RandomNum(4,3) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1687 /* (Pat Ninde's behind) */ + LK#NindeFlirt_pat3
  + ~RandomNum(4,4) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1687 /* (Pat Ninde's behind) */ + LK#NindeFlirt_pat4
  + ~RandomNum(4,1) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1687 /* (Pat Ninde's behind) */ + LK#NindeFlirt_pat5
  + ~RandomNum(4,2) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1687 /* (Pat Ninde's behind) */ + LK#NindeFlirt_pat6
  + ~RandomNum(4,3) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1687 /* (Pat Ninde's behind) */ + LK#NindeFlirt_pat7
  + ~RandomNum(4,4) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1687 /* (Pat Ninde's behind) */ + LK#NindeFlirt_pat8
  + ~RandomNum(5,1) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1688 /* (Ogle Ninde) */ + LK#NindeFlirt_ogle1
  + ~RandomNum(5,2) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1688 /* (Ogle Ninde) */ + LK#NindeFlirt_ogle2
  + ~RandomNum(5,3) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1688 /* (Ogle Ninde) */ + LK#NindeFlirt_ogle3
  + ~RandomNum(5,4) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1688 /* (Ogle Ninde) */ + LK#NindeFlirt_ogle4
  + ~RandomNum(5,5) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1688 /* (Ogle Ninde) */ + LK#NindeFlirt_ogle5
  + ~RandomNum(10,1) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1688 /* (Ogle Ninde) */ + LK#NindeFlirt_ogle1
  + ~RandomNum(10,2) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1688 /* (Ogle Ninde) */ + LK#NindeFlirt_ogle2
  + ~RandomNum(10,3) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1688 /* (Ogle Ninde) */ + LK#NindeFlirt_ogle3
  + ~RandomNum(10,4) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1688 /* (Ogle Ninde) */ + LK#NindeFlirt_ogle4
  + ~RandomNum(10,5) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1688 /* (Ogle Ninde) */ + LK#NindeFlirt_ogle5
  + ~RandomNum(10,6) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1688 /* (Ogle Ninde) */ + LK#NindeFlirt_ogle6
  + ~RandomNum(10,7) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1688 /* (Ogle Ninde) */ + LK#NindeFlirt_ogle7
  + ~RandomNum(10,8) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1688 /* (Ogle Ninde) */ + LK#NindeFlirt_ogle8
  + ~RandomNum(10,9) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1688 /* (Ogle Ninde) */ + LK#NindeFlirt_ogle9
  + ~RandomNum(10,10) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1688 /* (Ogle Ninde) */ + LK#NindeFlirt_ogle10
  + ~RandomNum(5,1) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1689 /* (Wink at Ninde) */ + LK#NindeFlirt_wink1
  + ~RandomNum(5,2) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1689 /* (Wink at Ninde) */ + LK#NindeFlirt_wink2
  + ~RandomNum(5,3) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1689 /* (Wink at Ninde) */ + LK#NindeFlirt_wink3
  + ~RandomNum(5,4) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1689 /* (Wink at Ninde) */ + LK#NindeFlirt_wink4
  + ~RandomNum(5,5) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1689 /* (Wink at Ninde) */ + LK#NindeFlirt_wink5
  + ~RandomNum(10,1) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1689 /* (Wink at Ninde) */ + LK#NindeFlirt_wink1
  + ~RandomNum(10,2) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1689 /* (Wink at Ninde) */ + LK#NindeFlirt_wink2
  + ~RandomNum(10,3) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1689 /* (Wink at Ninde) */ + LK#NindeFlirt_wink3
  + ~RandomNum(10,4) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1689 /* (Wink at Ninde) */ + LK#NindeFlirt_wink4
  + ~RandomNum(10,5) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1689 /* (Wink at Ninde) */ + LK#NindeFlirt_wink5
  + ~RandomNum(10,6) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1689 /* (Wink at Ninde) */ + LK#NindeFlirt_wink6
  + ~RandomNum(10,7) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1689 /* (Wink at Ninde) */ + LK#NindeFlirt_wink7
  + ~RandomNum(10,8) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1689 /* (Wink at Ninde) */ + LK#NindeFlirt_wink8
  + ~RandomNum(10,9) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1689 /* (Wink at Ninde) */ + LK#NindeFlirt_wink9
  + ~RandomNum(10,10) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1689 /* (Wink at Ninde) */ + LK#NindeFlirt_wink10
  + ~RandomNum(5,1) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1690 /* (Hold Ninde's hand) */ + LK#NindeFlirt_hold1
  + ~RandomNum(5,2) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1690 /* (Hold Ninde's hand) */ + LK#NindeFlirt_hold2
  + ~RandomNum(5,3) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1690 /* (Hold Ninde's hand) */ + LK#NindeFlirt_hold3
  + ~RandomNum(5,4) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1690 /* (Hold Ninde's hand) */ + LK#NindeFlirt_hold4
  + ~RandomNum(5,5) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1690 /* (Hold Ninde's hand) */ + LK#NindeFlirt_hold5
  + ~RandomNum(5,1) GlobalGT("LK#NindeLoveTalks","GLOBAL",14) GlobalLT("LK#NindeLoveTalks","GLOBAL",21)~ + @1691 /* (Offer Ninde a massage) */ + LK#NindeFlirt_massage1
  + ~RandomNum(5,2) GlobalGT("LK#NindeLoveTalks","GLOBAL",14) GlobalLT("LK#NindeLoveTalks","GLOBAL",21)~ + @1691 /* (Offer Ninde a massage) */ + LK#NindeFlirt_massage2
  + ~RandomNum(5,3) GlobalGT("LK#NindeLoveTalks","GLOBAL",14) GlobalLT("LK#NindeLoveTalks","GLOBAL",21)~ + @1691 /* (Offer Ninde a massage) */ + LK#NindeFlirt_massage3
  + ~RandomNum(5,4) GlobalGT("LK#NindeLoveTalks","GLOBAL",14) GlobalLT("LK#NindeLoveTalks","GLOBAL",21)~ + @1691 /* (Offer Ninde a massage) */ + LK#NindeFlirt_massage4
  + ~RandomNum(5,5) GlobalGT("LK#NindeLoveTalks","GLOBAL",14) GlobalLT("LK#NindeLoveTalks","GLOBAL",21)~ + @1691 /* (Offer Ninde a massage) */ + LK#NindeFlirt_massage5
  + ~RandomNum(6,1) GlobalGT("LK#NindeLoveTalks","GLOBAL",20)~ + @1691 /* (Offer Ninde a massage) */ + LK#NindeFlirt_massage1
  + ~RandomNum(6,2) GlobalGT("LK#NindeLoveTalks","GLOBAL",20)~ + @1691 /* (Offer Ninde a massage) */ + LK#NindeFlirt_massage2
  + ~RandomNum(6,3) GlobalGT("LK#NindeLoveTalks","GLOBAL",20)~ + @1691 /* (Offer Ninde a massage) */ + LK#NindeFlirt_massage3
  + ~RandomNum(6,4) GlobalGT("LK#NindeLoveTalks","GLOBAL",20)~ + @1691 /* (Offer Ninde a massage) */ + LK#NindeFlirt_massage4
  + ~RandomNum(6,5) GlobalGT("LK#NindeLoveTalks","GLOBAL",20)~ + @1691 /* (Offer Ninde a massage) */ + LK#NindeFlirt_massage5
  + ~RandomNum(6,6) GlobalGT("LK#NindeLoveTalks","GLOBAL",20)~ + @1691 /* (Offer Ninde a massage) */ + LK#NindeFlirt_massage6
  + ~RandomNum(5,1) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1692 /* (Kiss Ninde's hand) */ + LK#NindeFlirt_kisshand1
  + ~RandomNum(5,2) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1692 /* (Kiss Ninde's hand) */ + LK#NindeFlirt_kisshand2
  + ~RandomNum(5,3) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1692 /* (Kiss Ninde's hand) */ + LK#NindeFlirt_kisshand3
  + ~RandomNum(5,4) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1692 /* (Kiss Ninde's hand) */ + LK#NindeFlirt_kisshand4
  + ~RandomNum(5,5) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + @1692 /* (Kiss Ninde's hand) */ + LK#NindeFlirt_kisshand5
  + ~RandomNum(10,1) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1692 /* (Kiss Ninde's hand) */ + LK#NindeFlirt_kisshand1
  + ~RandomNum(10,2) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1692 /* (Kiss Ninde's hand) */ + LK#NindeFlirt_kisshand2
  + ~RandomNum(10,3) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1692 /* (Kiss Ninde's hand) */ + LK#NindeFlirt_kisshand3
  + ~RandomNum(10,4) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1692 /* (Kiss Ninde's hand) */ + LK#NindeFlirt_kisshand4
  + ~RandomNum(10,5) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1692 /* (Kiss Ninde's hand) */ + LK#NindeFlirt_kisshand5
  + ~RandomNum(10,6) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1692 /* (Kiss Ninde's hand) */ + LK#NindeFlirt_kisshand6
  + ~RandomNum(10,7) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1692 /* (Kiss Ninde's hand) */ + LK#NindeFlirt_kisshand7
  + ~RandomNum(10,8) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1692 /* (Kiss Ninde's hand) */ + LK#NindeFlirt_kisshand8
  + ~RandomNum(10,9) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1692 /* (Kiss Ninde's hand) */ + LK#NindeFlirt_kisshand9
  + ~RandomNum(10,10) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + @1692 /* (Kiss Ninde's hand) */ + LK#NindeFlirt_kisshand10
  ++ @1652 /* (Leave Ninde alone) */ EXIT
END


// Utility options
// ---------------
IF ~~ LK#NindeChat_justfriends
  SAY @1693 /* (Ninde's lips turn up into a smile, but her eyes remain devoid of any good humor. She is composed as she turns toward you.) */
  = @1694 /* Ninde does not have friends, she has sycophants. And there is always room for more of those, dear. */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_gay
  SAY @1695 /*  (Ninde looks momentarily suprised, before grinning at you companionably.) */
  = @1696 /* Well, call me Godwin and send me to the Vilhon Reach! That's something of a suprise. But honestly darling, I sympathise; I've a fair few taboo proclivities of my own, in the bed chamber. We'll have to speak a little more on this. But thank you for telling me - t'would have left more than one red face, had you not. */
  IF ~~ EXIT
END


// Question answers
// ----------------
IF ~~ LK#NindeChat_colour
  SAY @1697 /* Black, I suppose. Imagine the stains if I wore, say, yellow, in my line of work. */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_flower
  SAY @1698 /* Fly Traps, darling. There's something delightfully predatory about them, don't you think? */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_man
  SAY @1699 /* Ooh...More then you can count on your toes and fingers, Bhaalspawn. Possibly even more than the hairs on your back! */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_man2
  SAY @1700 /* Ooh...More then you can count on your toes and fingers, Bhaalspawn. */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_love
  SAY @1701 /* Enough to know that love is very frightful and powerful thing, and not to be bandied about. */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_place
  SAY @1702 /* I suppose it would have been my...my home in Waterdeep, although it was burnt to the ground during the Time of Troubles. There used to be this beautiful silver birch in the courtyard. When I was a child I would make holes in the leaves and stare through them up at the sun. */
  = @1703 /* And it just smelt so...so clean. With the lemon grass and the pines in the gardens. But Shar, I'm being sentimental again. */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_food
  SAY @1704 /* Sugared pears, liquorice mice, gingerbread, pancakes in syrup. I do have quite the sweet tooth, although it is difficult to indulge in such luxuries whilst traveling. */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_kissedgirl
  SAY @1705 /* That would be one fit of debauchery too many. Apologies if I've just dashed any dreams of yours. */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_opinion
  SAY @1706 /* I think you're sufficiently wealthy and attractive to maintain my interest, and isn't that all that matters, Bhaalspawn? */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_opinion2
  SAY @1707 /* I think you're sufficiently wealthy and interesting to maintain my interest, and isn't that all that matters, Bhaalspawn? */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_mage
  SAY @1708 /* I was very young when I began spell casting, ten perhaps. It was one of the only pursuits, simpering aside, thought suitable for a girl of my wealth. Suitably hygienic, pleasingly weapon-free, and I couldn't abide the thought of sitting around embroidering cushions or some such. */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_parents
  SAY @1709 /* They were evidently moon gazing fey who misplaced one of their children during a Drow attack, if you mean my blood parents. My adoptive father was a Waterdhavian merchant of some repute. */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_siblings
  SAY @1710 /* Not of my knowledge, although I may have a few long-eared brothers and sisters knocking about Evereska. I...I did have a human brother, growing up, although he's long since dead. Poor Respen never could tell the nice girls from the ones who were going to steal his money and slit his throat, the dear boy. */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_growup
  SAY @1711 /* Waterdeep, the jewel of the north. A beauty of a place, a city of contrast and surprises at every turn. I always felt slightly out of place there, however, amidst the preening human nobles. My heritage always caused me to be curiosity of sorts to them. */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_evil
  SAY @1712 /* Me? Evil? I'm positively scandalized, <CHARNAME>. I may be a little on the naughty side from time to time but I feel that generally I'm an upstanding young citizen. (Ninde smiles and places her hand over her heart in mock civic pride, but with a luxuriant little sigh, seems to become distracted by the bulk of her left breast beneath her robe.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_animal
  SAY @1713 /* One of those irritating little yappy dogs that wealthy old women like to keep in their wizened laps. A life of little pink ribbons and biting at footmen for Ninde! */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_name
  SAY @1714 /* Something very ugly and very well-suited to me. */
  = @1715 /* But I shan't tell. */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_lookfor1
  SAY @1716 /* A hefty purse and the muscle to lift it. */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_lookfor2
  SAY @1717 /* Wealthy and infamy. Or at least, the ambition to possess both. */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_advicespellhold
  SAY @1718 /* Riddles give you headaches, gemstones give you monsters and monsters give you a hard time. */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_adviceunderdark
  SAY @1719 /* Generally speaking, the funnier something looks, the more it likes eating brains. */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_advicech6
  SAY @1720 /* Never trust a man whose brows meet in the middle. Or is called Saemon. */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_advice1
  SAY @1721 /* Never wear purple and orange together. */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_advice2
  SAY @1722 /* It's not the size of your weapon, it's what you do with it, darling. */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_advice3
  SAY @1723 /* All that glitters is not gold, but we still might be able to foist it off on some scatter-brained merchant when we're next in town. */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_child
  SAY @1724 /* Your usual precocious little brat who wore her hair in messy braids and wanted to be a unicorn tamer. */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_word
  SAY @1725 /* 'Fecund'. */
  = @1726 /* Hmm...either that, or 'morsel'. Both just roll off the tongue, don't you think? */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_best
  SAY @1727 /* My heaving bosom. No, honestly, just look at them! I rather think it's the chance to catch me unlacing my bodice that keeps Helm so famously vigilant. */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_pretty1
  SAY @1728 /* Oh, Bhaalspawn, I bet you say that to all the Necromancers. */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_pretty2
  SAY @1729 /* Yes, well. Stop going on about it and create some sort of lasting tribute. A sculpture or epic poem ought to do it. */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_pretty3
  SAY @1730 /* You're not so very bad yourself. */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_pretty4
  SAY @1731 /* Almost too beautiful, in fact. */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_pretty5
  SAY @1732 /* A sweet face and a mean spell is a winning combination, I suppose. */
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_pretty6
  SAY @1733 /* Oh...But it is what's inside that counts, Bhaalspawn... */
  = @1734 /* Ha! You thought me serious for a moment, there. */
  IF ~~ EXIT
END


// Flirt responses
// ---------------
IF ~~ LK#NindeFlirt_watch1
  SAY @1735 /* (You find that this time, it is Ninde's face that arrests your attention. She isn't conventionally pretty, not at all, yet the daring unsymmetrical has an unspeakable appeal. Perhaps it is the way her rude scarlet mouth always looks slightly, childishly petulant. Perhaps it is the gentle tilt of her eyes, at once lively and appraising. Either way, the sensuality of the sun elf's character is ever at play in her features.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_watch2
  SAY @1736 /* (Although you begin admiring Ninde's figure, you soon notice her gait; and you could swear, she is the proud possessor of the most arrogant walk you have ever seen on a woman. Abandoning the sensual swing she usually adopts when the party is at leisure, while marching, she canters boldly forward. It isn't the usual adventurer's trudge, or the walk of a woman aware of her insignificance. No. Ninde's walk is the walk of a woman on her way to a very good time, and fully aware of how much she deserves it.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_watch3
  SAY @1737 /* (As occasionally happens during the toil of the day, you find a brief moment to steal a glance at Ninde. When she bends down to reach for a waterskin, you find yourself studying the wild, racehorse look her slender body gives her. Built a little more solidly than many of her race, you watch as she rolls up the sleeves of her robe. Her forearms, ridged by not the smallest of scars, look like they would be soft to the touch, if you dared to touch them.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_watch4
  SAY @1738 /* (There is a suspiciously hard look in Ninde's face, today, and you surmise that to approach her could be more then a little hazardous. You can still watch from afar, however, as annoyance sparks behind her eyes, like a chunk of yellow amber catching the sunlight. The button nose crinkles at every hold-up, every small annoyance, and her red mouth twitches more impetuously than ever.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_watch5
  SAY @1739 /* (Walking behind Ninde is more of a pleasure than you dare admit. Whether she is aware of your gaze or not, she trots in front of you with the most practiced sway of the hips, demonstrating precisely how very aware she is of the mesmeric qualities of the curvaceous female form. Your scrutiny is prematurely curtailed, however, as you decide you best shift your attention before Ninde becomes aware of it. You know you'll never hear the end of it, if she does.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_watch6
  SAY @1740 /* (Ninde has lowered her hood, and is re-arranging her hair, drawing its silky black mass back into a neat braid. Her profile is more delicate than her face when viewed from the front, perhaps because of the spidery lashes, the daintily projecting lips.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_watch7
  SAY @1741 /* (To your surprise, you find Ninde reciprocating your gaze. At first she looks suspicious, but then her hard mouth breaks into an easy, devil-may-care smile, drawing her black-gold eyes across your shoulders, your jaw. She gives you an insouciant wink, before turning away.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_watch8
  SAY @1742 /* (Ninde's skin is tan, though not the same shade as a field labourer in the summer; more honey and cinnamon than coarse bronze. She strolls up beside you, and you notice how even in the dimmest settings her cheekbones gleam, and in the brightest light, she glows as though she has been rolling in gold dust.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_watch9
  SAY @1743 /* You take advantage of a break in marching to watch Ninde. She stands opposite you, examining your surrounding with faint interest, before leaning forward to remove something from her pack. As she does so, her silk robe, loose as a whisper about her shoulders, slips forward, giving you an admirable view of her cleavage. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_watch10
  SAY @1744 /* (As you turn to take a glance at Ninde, you find she is one step ahead; her curved eyes, sickle sharp, meet yours. The light touches their lower rims, highlighting flecks of almost-green. Her eyes are not yellow. They are not black. They are not hazel. They are the colour of an old statue, left in a woodland glen, gold abandoned to decay.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_watch11
  SAY @1745 /* (Today, Ninde looks self-satisfied. Like a cat that got the cream. As you reflect on the old adage, you notice their is something very leonine about the elf's features, with its wide, high cheekbones, button nose and turned-up mouth. You suspect that if you drew a hand across her naked shoulders, she'd purr. You suspect that if you tried to hold her, she'd claw. Perhaps she is more lion than domesticated feline.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_watch12
  SAY @1746 /* (As you take a break, Ninde sits, radiating indolence and a carefree disinterest in everything but her own hands, which she modestly folds on her knees. Gazing around a little, her eyes meet yours, and with a sudden change of expression, she sticks her tongue out at you and giggles.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hair1
  SAY @1747 /* (Ninde's hood is lowered, but her hair is twisted into a neat braid. This school-madam style seems oddly incongruous with the rest of Ninde, who brims, walks, speaks, breathes a naughty sensuality. You reach across a hand, and gently smooth an errant strand of dark hair back behind her hear. Ninde does not react, however, frowning and twitching her ear, as though a fly had alighted there, and not your hand.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hair2
  SAY @1748 /* (Ninde's hair is loose and falls sweet and soft across her shoulders, and half of her face. As you reach forward to touch a black tumble of it, the elf tosses her head in a practiced manner and turns to look at you.) */
  = @1749 /* Beautiful, isn't it? Put every satin gown I owned to shame. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hair3
  SAY @1750 /* (For some reason Ninde stands with her eyes closed, as though in some kind of trance. You take the opportunity to run a hand through her dark hair. As you do so, Ninde murmurs as though gently awoken, and a smile spreads across her lips.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hair4
  SAY @1751 /* (Ninde is re-arranging her hair, drawing it into a neat plait at the back of her head. With some idea of offering assistance, you reach forward, only to find your fingers slapped away by the tortoiseshell comb she efficaciously brandishes.) */
  = @1752 /* Tsk! One doesn't interfere with Ninde's hair, dear. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hair5
  SAY @1753 /* (When Ninde leans forward, her hair falls, a dark curtain, behind her elegant profile. You reach to draw it back behind her shoulder. To your suprise, she seems to momentarily press the side of her face against your hand, a movement at once cat-like and vulnerable. A moment later, and she withdraws.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hair6
  SAY @1754 /* (Ninde is still, her features perched above her spell book with a studious frown. Her hair obscures half her face, and she seems not to notice as you begin to run your fingers through it's smoky waves. She is still unmoved from her studies as you begin to inexpertly braid small sections of it, and the pair of you sit undisturbed for quite a while. Ninde, absorbed in the runic wonders of her art, and you in the carbon glory of her tresses.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hair7
  SAY @1755 /* (As you gently brush your fingertips against a few fly away strands of the sun elf's hair, you find your attentions met with a harsh glare.) */
  = @1756 /* I'm an archmage, darling, not a pony. Kindly leave off the stroking. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_dance1
  SAY @1757 /* (Ninde is sitting at the edge of the group, observing the crowd and practising her characteristic cat-like indolence. You decide she could do with a little cheering up, so you offer her a dance.) */
  = @1758 /* (As you speak, Ninde's scornful expression is replaced by an almost bashful smile.) */
  = @1759 /* You're a brave man, <CHARNAME>. Didn't you see my contempt-face? (She giggles again, before taking your offered hand. The dancefloor is crowded, and a fast-paced, jostling song is played. You place your hand on Ninde's waist, and her nut-brown arms encircle your shoulders. The dance is not especially romantic, neither is it graceful, but it is companionable.) */
  = @1760 /* (You talk throughout, and as the song draws to a close, you comment on the lacklustre vocal stylings of the Bard involved, and Ninde laughs, her head lingering on your shoulder for a few moments, before you return to the rest of the party.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_dance2
  SAY @1761 /* (Ninde looks pensive, her body particularly rigid at your table, and so, as a jolly tune is struck up, you think a dance might perhaps enliven her.) */
  = @1762 /* (Ninde looks at your proffered hand, then up into your face, then takes it without a second word. As you lead her to the floor, a Bard begins to sing a ballad you remember from your childhood--a song about a gold dragon whose elven lover is killed. Ninde fixes her arms around you, and you begin to dance, slowly, swaying.) */
  = @1763 /* (The elf's grace, though not otherworldly, is obvious, and she moves as though herself caught in ecstasies of sorrow. As the last notes of the love song drip from the harp, you are held close together, Ninde's eyes closed, her expression soft and dreamlike. As she releases you, she sighs.) */
  = @1764 /* I haven't heard that song...in so long. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_dance3
  SAY @1765 /* Very well. If you step on my toes, however, I shall break you in ways you never imagined. */
  = @1766 /* (Despite these discouraging words, the pair of you proceed. To your dismay, a formal court dance is played--and one Ninde knows all the steps too. You manage to keep up well enough though, and you notice a coy smile playing about Ninde's lips as your arm encircles her waist for the final turn.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_dance4
  SAY @1767 /* Dance? With you? I think not. I'd rather marry a jolly, jolly peatbog farmer from the Moonshaes and spend the rest of my days lolling about in a straw hat and clogs. */
  = @1768 /* Clogs do nothing for my posture. So that would be a no. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_dance5
  SAY @1769 /* (Ninde looks down at your hand, and apparently disregarding your question, pulls a face.) */
  = @1770 /* When was the last time you scrubbed beneath your nails? I think there's dirt under there that pre-dates The Simbul and breadcrumbs that could be considered antique. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_dance6
  SAY @1771 /* (As you ask her to dance, Ninde sighs, and restlessly gazes about her.) */
  = @1772 /* My apologies, <CHARNAME>. I am not in the mood this evening. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_dance7
  SAY @1773 /* (Ninde purses her lips for a moment, before grinning.) */
  = @1774 /* Why, how could I resist taking the Bhaalspawn for a song? */
  = @1775 /* (With a gracious, somewhat ironic curtsy, she takes your hand and the pair of you join the other couples as a quaint, bouncing piece begins. Ninde seems cheerful enough, and dances charmingly, her dark skirts flowing, her hand barely touching yours. As the tune ends, she laughs, and grasps your arms, quite out of breath.) */
  = @1776 /* Not bad at all, <CHARNAME>. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_dance21
  SAY @1777 /* You dance? Perhaps you may be willing to provide the locals with a little amusement, but I would take little pleasure in such humiliation. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_dance22
  SAY @1778 /* Shoot up a couple more feet and perhaps I'll consider it. I don't dance with people who's head's are more or less parallel to my midriff. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_dance23
  SAY @1767 /* Dance? With you? I think not. I'd rather marry a jolly, jolly peatbog farmer from the Moonshaes and spend the rest of my days lolling about in a straw hat and clogs. */
  = @1768 /* Clogs do nothing for my posture. So that would be a no. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_dance24
  SAY @1769 /* (Ninde looks down at your hand, and apparently disregarding your question, pulls a face.) */
  = @1770 /* When was the last time you scrubbed beneath your nails? I think there's dirt under there that pre-dates The Simbul and breadcrumbs that could be considered antique. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_dance25
  SAY @1771 /* (As you ask her to dance, Ninde sighs, and restlessly gazes about her.) */
  = @1772 /* My apologies, <CHARNAME>. I am not in the mood this evening. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_dance26
  SAY @1761 /* (Ninde looks pensive, her body particularly rigid at your table, and so, as a jolly tune is struck up, you think a dance might perhaps enliven her.) */
  = @1779 /* (Ninde looks at your proffered hand, then down into your face, then takes it without a second word. As you lead her to the floor, a Bard begins to sing a ballad you remember from your childhood--a song about a gold dragon whose elven lover is killed. Ninde fixes her arms around you, and you begin to dance, slowly, swaying.) */
  = @1780 /* (The elf's grace, though not otherworldly, is obvious, and she moves as though herself caught in ecstasies of sorrow. As the last notes of the love song drip from the harp, she holds you closer to her, almost protectively.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_dance27
  SAY @1781 /* (Ninde smiles with quiet amusement as you offer her your hand, but not cruelly.) */
  = @1782 /* I'm not sure I quite feel up to for dancing these eve. Sit and talk with me, instead? */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_dance28
  SAY @1773 /* (Ninde purses her lips for a moment, before grinning.) */
  = @1774 /* Why, how could I resist taking the Bhaalspawn for a song? */
  = @1783 /* (With a gracious, somewhat ironic curtsy, she takes your hand and the pair of you join the other couples as a quaint, bouncing piece begins. Ninde seems cheerful enough, and dances charmingly, her dark skirts flowing, her hand barely touching yours. As the tune ends, she laughs, and grasps your hands, quite out of breath.) */
  = @1784 /* Not bad at all, <CHARNAME>. Not bad at all. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_smile1
  SAY @1785 /* (You smile with camaraderie, but in response she quirks a brow and gazes at you with weary disgust.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_smile2
  SAY @1786 /* Why the idiot grin, <CHARNAME>? It doesn't endear you to me at all. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_smile3
  SAY @1787 /* (To your surprise, Ninde leans forward and closer to your face as you grin at her. You think for a brief, uncertain moment that she is about to kiss you. The illusion is predictably shattered as a high, apalled little cry issues from her.) */
  = @1788 /* Broccoli! You have broccoli in your teeth. How freakish you look! */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_smile4
  SAY @1789 /* Why does the young Bhaalspawn look so pleased? Has he finally figured out how to button his tunic without Gorion helping him? Hm? */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_smile5
  SAY @1790 /* If you smiled any harder, your face would split in half. I've seen it happen actually, very horrible sort of magical accident, that. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_smile6
  SAY @1791 /* (Ninde notices your smile and returns the gesture, gazing coyly at you from under her black lashes.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_smile7
  SAY @1792 /* (Ninde's gaze is curious as you fix her with your best boyish grin. After a moment she smiles back at you, though cautiously. Her two front teeth are just visible between her lips, the silky mouth red and enticing.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_smile8
  SAY @1793 /* (You smile at Ninde and she laughs breezily, skipping ahead of you a few steps, before looking over her shoulder at you. A loose tendril of hair grazes her golden cheek as she offers you her own subtle smile, and the sight is a pleasing one.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_smile9
  SAY @1794 /* (You begin to think you have upset Ninde, as in stead of returning your casual smirk in kind, she frowns. She steps towards you, and raises her hand. Almost instinctively you draw away from it, but then she touches your lips softly, and gazes at them with an almost dream-like sensuality. A moment later she clears her throat and leaves you again.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_smile10
  SAY @1795 /* (Ninde returns your smile, though with no particular intensity. She seem distracted as she turns away from you, gazing downward.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_smile11
  SAY @1796 /* (The sun elf's smile is confident and youthful. You imagine roughly the same smile she used to insinuate her and her deep gold eyes into dozens of young Waterdhavian hearts around forty years previously. You can see why it was so effective in inspiring attraction, as she offers you a final eyelash flutter.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_smile12
  SAY @1797 /* (Ninde is very rarely quiet, and yet, as she smiles at you, you wonder why she is so attached to words when she is able to communicate so much through mouth and eyes alone. Her face, though not kind, inspires some strange confidence - which has no doubt contributed to her continued survival.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_smile13
  SAY @1798 /* (Nothing about Ninde seems fresh or new or clean but the smile she offers you, now. Casually teasing her hair out of her face, holding the tie between her lips, she twitches her nose and winks at you before turning away.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hug1
  SAY @1799 /* (You make to wrap your arms around Ninde, but she pushes you away with a snarl.) */
  = @1800 /* Can I make it any clearer, Bhaalspawn? I am not interested. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hug2
  SAY @1801 /* (As you move toward her, Ninde stamps petulantly on your foot and storms off.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hug3
  SAY @1802 /* (It seems to take Ninde a moment to realise what you have done as she is crushed to your chest, but once she does she wriggles so violently you release her. You are confronted with her almost comically vicious smile as she huffs and folds her arms across her chest, marching away from you.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hug4
  SAY @1803 /* (You fold Ninde in your arms, and for a few moments everything is serene, her black hair fragrant as it rustles against the collar of your tunic. Her hand ests on your neck, light as a spring leaf, and you sigh with contentment - just before you begin feel her manicured nails sink into the flesh of your throat.) */
  = @1804 /* (Ninde grins as you back away, rubbing your neck. This lady clearly doesn't like to be hugged.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hugno
  SAY @1805 /* Bhaalspawn, for the last time, would you desist?! I'd rather get up close and personal with a mangy Bugbear than feel your clammy hands anywhere on, or near my immaculate person. */
  ++ @1806 /* I apologise. I did not realise you were so averse to it, and certainly won't attempt to embrace you again. */ + LK#NindeFlirt_hugno_GOOAPOL
  ++ @1807 /* Psh, lighten up, Ninde. It's not as though I meant anything by it. */ + LK#NindeFlirt_hugno_MEANSCE
  ++ @1808 /* I will hug who I choose, and no sun elf can stop me! */ + LK#NindeFlirt_hugno_STORMEY
END

IF ~~ LK#NindeFlirt_hugno_GOOAPOL
  SAY @1809 /* I should hope not! There should be nothing to communicate to me that can't be communicated perfectly well through the medium of speech. Or presents. Presents are acceptable, I think. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hugno_MEANSCE
  SAY @1810 /* I shan't 'lighten up' until you agree to keep your sticky hands to yourself. There is nothing you could wish to communicate to me outside the medium of speech, Bhaalspawn. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hugno_STORMEY
  SAY @1811 /* You are a wilful young Bhaalspawn, though you ought to try and let something other than your loins do the thinking for once. We wouldn't get into half as many scrapes. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hugno_final
  SAY @1812 /*  (As you stretch your arms out to Ninde, being the very definition of amicability, she lets out a startling cry, and seems to wobble with aggravation, pushing you hard away.) */
  = @1813 /* I don't want you, I have no interest in you! There, will you leave me alone now, Bhaalspawn? */
  IF ~~ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ LK#NindeFlirt_hug5
  SAY @1814 /* (You hold out your arms to Ninde, but gently brushing your arms aside, she shakes her head.) */
  = @1815 /* I don't think so, <CHARNAME>. For your sake as much as mine. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hug6
  SAY @1816 /* (Ninde allows you to embrace her, but her small body sits awkwardly against your chest, her arms oddly angled. It seems she is attempting to maintain a good distance between you even during this affectionate act.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hug7
  SAY @1817 /* (Ninde allows you to hold her, but seemingly on the condition that you don't object to how utterly bored she looks while you do it. As she separates from you, you notice she was examining her cuticles over your shoulder.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hug8
  SAY @1818 /* (You place your arms about Ninde's waist, and to your surprise, she squirms with delight, pressing herself up against your chest. She is warm, her waist the sort that asks for an arm to be slung about it, and as she rests her dark head on your shoulder, you can't help but think this might all work out.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hug9
  SAY @1819 /* (You pull Ninde close, and with a little hiccough of surprise, she settles easily into you, her hand wandering up and down your chest, an idle smile teasing at her lips.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_tickle1
  SAY @1820 /* (You creep towards Ninde with the idea of tickling her, but as you reach for the spot just above her waist, she hops away, turning to glare at you.) */
  = @1821 /* Keep your hands to yourself, Bhaalspawn. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_tickle2
  SAY @1822 /* (You reach across and run your fingers down her sides, but Ninde simply tuts and brushes them away. She seems to regard you as little more than a nuisance.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_tickle3
  SAY @1823 /* (With impressive dexterity you reach out to grasp Ninde's wrist and teasingly run your fingers from her wrist to her elbow in a light, brushing movement. She giggles, but then pulls away, her expression turning to one of aggravation.) */
  = @1824 /* Next time you tickle me, I shall tickle you back--with my knife. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_tickle4
  SAY @1825 /*  (Taking great care to go unnoticed, you reach out, and caress the tender area just behind the sun elf's long ear. She lets out a sweet burst of laughter, before slapping away your hand. She turns, and clearing her throat, attempts to re-gain her composure before chastising you.) */
  = @1826 /* We're adventurers, <CHARNAME>, and must always be aware of our environment, our surroundings...or something. Either way, next time you do that, I may just mistake your finger for the tentacle of a displacer beast, and then you might just find yourself on the wrong end of a magic missile. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_tickle5
  SAY @1827 /* (You give Ninde a sly tickle on the shoulder, but she doesn't move, or seem to react at all. A moment later she turns to you, her eyes insolent and dark.) */
  = @1828 /* I'm not ticklish, <CHARNAME>...well, maybe in just one little place... */
  = @1829 /* (You watch as she lifts a smooth leg and pulls back the folds of her robe to her mid-thigh. Her calves are shapely and there is a dark violet bruise is splashed across her knee, no doubt from a recent battle. Your attention is drawn away from this imperfection, however, as she runs a finger seductively up the back of her bare leg, just where a stocking seam would be.) */
  = @1830 /* Here...I am ticklish *just* here. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_tickle6
  SAY @1831 /* (You feel more than a little triumphant as you manage to grab Ninde, and assail her with small tickling motions. She seems distinctly unimpressed however, dryly pushing you away after a few moments.) */
  = @1832 /* I am not ticklish, <CHARNAME>. Give up while you still can. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_tickle7
  SAY @1833 /* (You attempt to tickle Ninde ferociously, and she responds in kind, by pushing you over, and placing a booted foot on the center of your chest, an imperious glow about her features.) */
  = @1834 /* There. And I'm not letting you get up until you promise to desist. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_tickle8
  SAY @1835 /* (With a sudden decisive movement, you catch Ninde off guard and bombard her with tickling. The elf squirms with mirth, and in between gasps of laughter, tries to wriggle from your arms. She eventually succeeds, giving you a little mock-chastisement in the form of a slap on the wrist and girlish little scowl.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_pat1
  SAY @1836 /* (Seeing Ninde in front of you, her body swaying gently as she walks, you reach out and give her cherry-ripe posterior a playful pinch. Ninde, suddenly stopping, turns to you with an expression of profound disgust.) */
  = @1837 /* What are you? An in-bred parnsip farmer? Because you behave like one. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_pat2
  SAY @1838 /* As you reach across to deliver a little slap to Ninde's shapely rear, she catches your wrist with surprising dexterity, and turns to look you in the eye, her eyes yellow and hateful as she squeezes your wrist.) */
  = @1839 /* You don't want to know where the last man who tried to do that to me is. You don't, darling. */
  = @1840 /* (She hisses these words, and feel a strange prickling on your arm, where Ninde is touching you. Then the tang of singed flesh. You pull away just as she releases you, your wrist only slightly blackened and stinging. Ninde seems to think she has got her point across, as she rolls her yellow eyes from you, bored, angry, repelled.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_pat3
  SAY @1841 /* You seem to be laboring in the belief that I find you attractive. I do not. I find you offensive to every sense I posses, so not desire your company, Bhaalspawn. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_pat4
  SAY @1842 /* (You brush your hand along the tempting curve of Ninde's behind and she jumps away, surprised and evidently irritated. You expect her to issue her customary verbal reprimand, or put down, but instead, she slaps you hard across your face.) */
  IF ~~ DO ~ApplyDamage(Player1,10,CRUSHING)~ EXIT
END

IF ~~ LK#NindeFlirt_pat5
  SAY @1843 /* <CHARNAME>! One ought to show respect to a Lady; particularly one of my high standing. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_pat6
  SAY @1844 /* (As you place your hand against the soft roundness of Ninde's posterior, she does not react with anger or violence, or seem to resist in any particular way, but sighs deeply.) */
  = @1845 /* Lady Ninde Amblecrown - fallen from the shining heights of the Waterdhavian elite, desired and admired by all, to being physically accosted by a rough northern killer with breath like a fireball and arms like a wolfwere. Joy. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_pat7
  SAY @1846 /* (With a playful chuckle, you draw up beside Ninde and run your hand down across the small of her back, across the pleasing, full curves of her rear. Having had somewhat unpleasant experiences when attempting such intimacy with Ninde before, you brace yourself for cross words, or even a blow, but none come. Ninde is looking sidelong into your face, her expression curious.) */
  = @1847 /* (A moment later you feel her hand running down your back to your thigh.) */
  = @1848 /* So, can <CHARNAME> receive as he gives? */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_pat8
  SAY @1849 /* If I'm completely honest, sugarbunch, there are other things I'd prefer you to touch...but by no means is that an invitation. At least, not yet. */
  IF ~~ EXIT
END


IF ~~ LK#NindeFlirt_ogle1
  SAY @1850 /* (Noticing your leer, Ninde fixes you with the stoniest of expressions.) */
  = @1851 /* Pick your jaw up off the floor, lest I wallop you in it. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_ogle2
  SAY @1852 /* (Looking at you blankly, Ninde quirks a brow.) */
  = @1853 /* Careful, Bhaalspawn, or your eyeballs will fall out. And then I'd have to use them for spell components. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_ogle3
  SAY @1854 /* (Ninde doesn't seem particularly pleased to be attracting your lusty gaze, and fixes you with the fiercest glare you've seen since Gorion caught Imoen putting fire ants in Winthrop's underwear draw.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_ogle4
  SAY @1855 /* Oh, Bhaalspawn...well, I suppose it only natural that you should stare. */
  = @1856 /* (Allowing herself a triumphant smile, Ninde turns away from you with a practiced toss of her glossy black hair.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_ogle5
  SAY @1857 /* Really, Bhaalspawn, must you rubberneck at me like a sailor on leave? There are more becoming postures. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_ogle6
  SAY @1858 /* (Ninde is leafing through the pages of her spellbook, and as she looks up, you fix her with an admiring gaze. She does not respond, but neither does she glare at you. A breeze teases a few tendrils of dark hair against her warm brown cheek as she closes up the book.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_ogle7
  SAY @1859 /* Seeing that your gaze is fixed on her, Ninde's buttercup eyes glint deviously. She stretches as she walks, seemingly conscious of your appraisal of her long, slender arms, short, graceful torso and of course, the brown, inevitable legs.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_ogle8
  SAY @1860 /* (As you ogle her, Ninde begins to giggle.) */
  = @1861 /* Oh <CHARNAME>, it's hopeless, you know. I'm never going to like you. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_ogle9
  SAY @1862 /* (You provocatively raise a brow at Ninde as she walks by you, seemingly engrossed in the state of her nails, which she makes a habit of meticulously cleaning every morning. Her eyes flicker up as she passes by you, however, and noticing your expression, she smiles bashfully, and looking downward, smooths a dark tress behind her long ear.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_ogle10
  SAY @1863 /* (Ninde laughs breezily as run your eyes across the smooth skin of her throat and décolletage.) */
  = @1864 /* Mm...If you like that, <CHARNAME>...you ought to see me without this... */
  = @1865 /* (The elf provocatively runs a hand along the inner seam of the tight silk bodice that compresses her breasts.) */
  IF ~~ EXIT
END


IF ~~ LK#NindeFlirt_wink1
  SAY @1866 /* What on Toril is the matter with your eye, Bhaalspawn? You have a nervous twitch? How comical. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_wink2
  SAY @1867 /* (Ninde rolls her sullen dark gold eyes, and her voice is laden with sarcasm when she speaks.) */
  = @1868 /* Clearly, Bhaalspawn, you are a master of seduction. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_wink3
  SAY @1869 /* (A devious smile spreads across Ninde's pillowy mouth, swiftly followed by an expression of tender sympathy.) */
  = @1870 /* Oh, Bhaalspawn...excessive ocular irritation is a symptom of Thayvian Rot, you know. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_wink4
  SAY @1871 /* (As you wink at her, Ninde pulls a face like a displeased child, wrinkling her button nose and narrowing her eyes.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_wink5
  SAY @1872 /* Oh Bhaalspawn, you can't be serious, can you? */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_wink6
  SAY @1873 /* (Ninde smiles tentatively, fixing you with a sly wink of her own.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_wink7
  SAY @1874 /* (The sun elf seems pleased enough by your attentions, and tilts her pretty head in acknowledgment of your wink, a wave of dark hair falling across her smiling lips.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_wink8
  SAY @1875 /* (The normally querulous woman giggles, and takes a playful swat at you.) */
  = @1876 /* Why <CHARNAME>, you positive cad! */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_wink9
  SAY @1877 /* (Ninde is looking particularly stormy, when in an effort to break her heavy frown, you bestow on her a disastrously exaggerated wink. At first, her expression remains stony, and she quirks a brow with elegant contempt. Thankfully, a moment later she snorts with laughter, and grins girlishly at you. You appear to have cheered her up.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_wink10
  SAY @1878 /* (The elf bristles with delight at your wink, and strolls ahead of you with a womanly sway in her step.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hold1
  SAY @1879 /* (Ninde throws your hand away from you, like something repulsive.) */
  =  @1880 /* What on Toril are you trying to do, <CHARNAME>? I mean, really. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hold2
  SAY @1881 /* (As your fingers brush hers, Ninde stops abruptly, and stares you in the face with something like disgust. With a deep breath she composes herself, and a smile, pale and condescending, twitches on the corners of her mouth.) */
  = @1882 /* Do...do I seem like the handholding type, darling? */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hold3
  SAY @1883 /* (Ninde's face is gorgeously melancholic and tilted downward. As you draw up beside her she looks at you, a grey lethargy settled in her usually vivid eyes. She looks tired, you think, and decide to giver her hand a re-assuring little squeeze.) */
  = @1884 /* (Her fingers lie warm in yours for just a few seconds, before she wordlessly pulls her hand away.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hold4
  SAY @1885 /* (You stroll confidently to Ninde's side, and reach across to clasp her balletic hand in your own. She does not pull away from you - quite to the contrary. With an alluring sideways look at you, she slowly draws your hand to her mouth. You assume she is going to press it against her lips, before remembering that a kiss on the hand is probably a little too conventional for Ninde.) */
  = @1886 /* (Sure enough, she parts her lips at the last moment, and bites down on your thumb, gently and provocatively. The hot silk of her mouth sends a wave of pleasure down your spine, and Ninde drops your hand with a pretty, reckless laugh, cantering away from you.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hold5
  SAY @1887 /* (You press your hand into the sun elf's, and she lets out a tremulous sigh and casts her eyes down. Flattening out your palm like a piece of sheet music, she runs her fingers across its light, meandering indents, before nodding studiously.) */
  = @1888 /* It is as I thought. You've an artist's hands. And by Shar...I'm familiar with those... */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_massage1
  SAY @1889 /* A massage? And that would involve having those slimy sweat-sticky things on the end of your arms touching my body? I'd rather have my mouth lacerated. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_massage2
  SAY @1890 /* (As you speak, Ninde's eyes run down your body, mellifluous, appraising. Eventually, she condescends to give you a regal smile.) */
  = @1891 /* Mm...so the Bhaalspawn is sensitive to the desires of his party members, after all. */
  = @1892 /* (The woman seats herself and turns her back to you, unclasping her cloak so that her shoulders and smooth throat are naked. She throws her black hair to one side, and casts a beckoning look across to you. Running your hands across her collar, you notice the unnatural warmth of her skin, almost feverish, and the fine hairs that down the nape of her neck, so fine they are disturbed by the movement of the air as you stoop to rub the mage's upper arms. Ninde groans luxuriantly as you press against her neck, just below her ears, and allows you to continue for some time, before shrugging you off and drawing her cloak back up.) */
  = @1893 /* That wasn't at all unsatisfactory, Bhaalspawn...you have Lady Amblecrown's seal of approval. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_massage3
  SAY @1894 /* (Ninde claps her hands, and smiles.) */
  = @1895 /* What a delightful suggestion, dear Bhaalspawn. */
  = @1896 /* (To your suprise, Ninde throws herself down and tugs off her leather boots, seeming to relish the inelegance of it all as she wriggles her newly-liberated pink toes. Her feet are comically small - doll like - and precisely manicured, and a feathered serpent with an ugly head is inked coiling around her left ankle. A little thrown by the prospect of giving a foot massage, you hesitate, and only decide you has best go ahead when Ninde clears her throat imperiously. She does, you remind yourself, have very pretty feet, despite the grotesque body art.) */
  = @1897 /* (Kneeling before her, you begin by running your thumbs firmly across the soles of her feet, and she wriggles with pleasure as you do so. It is soon clear that the elf's feet are almost as sensitive as her ears, and her body quivers at every subtle touch. She seems to be enjoying it, however, and as you finish, you cannot help gently tickling the base of her toes. Ninde yelps and giggles, kicking her feet until you release her, before swiftly pulling her boots back on.) */
  = @1898 /* Hmm, Bhaalspawn...I'll have to remember not to place myself before you in such a position of...naked vulnerability again. Unless you ask *very* nicely, that is... */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_massage4
  SAY @1899 /* (Ninde laughs musically, and places a hand on your chest.) */
  = @1900 /* I suppose you could try, my dear Bhaalspawn...but you'll be competing with a multitude of limber Mulhorandi serving boys, with decades of training in such arts, who have offered me precisely the same thing before. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_massage5
  SAY @1901 /* Current circumstances force me to decline, Bhaalspawn. That said...I adore a man skilled with his hands... */
  = @1902 /* (Ninde brushes her hand across your chest, her eyes bright. She is, after all, a good part pixie.) */
  = @1903 /* ...especially when he is liberal in their use. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_massage6
  SAY @1904 /* (Ninde bites her lip and gazes darkly at you.) */
  = @1905 /* Very well. When we next rest at an inn, you shall have the pleasure. */
  IF ~~ DO ~SetGlobal("LK#Ninde_massageflirt","GLOBAL",1)~ EXIT
END

IF WEIGHT #-1 ~Global("LK#Ninde_massageflirt","GLOBAL",2)~ LK#NindeFlirt_massage6.2
  SAY @1906 /* I hope you have not forgotten your promise of a massage, <CHARNAME>? Here...follow me... */
  = @1907 /* (Ninde leads you through the rigmarole of the inn, to her room, the air thick and candlelit, the sounds of dancing and drinking barely audible through the soft chalky walls. Coiling her dark hair up, Ninde asks you to turn your back for a moment, and you do, listening with delight to the unmistakable hiss of skin ridding itself of silk, and then the creak of the mahogany tester bed in the center of the room.) */
  = @1908 /* Come here, <CHARNAME>. */
  = @1909 /* (You turn to face her, your throat dry, vaguely drunk on the idea of her undressing, and the sight you are confronted with does not dissapoint. Ninde, apparently naked, is lying face down in bed, the heavy covers resting just past the small of her back, her arms folded under her head, the swell of her full breasts tempting, pressed down against the crisp sheets, her black hair coiled at the nape of her neck. Her face, host to an expectant smile, is placid and gentle. One gold eye flickers open, and you are reminded of a languorous cat caught dozing.) */
  = @1910 /* Well, <CHARNAME>...? */
  = @1911 /* (Ninde motions to you to continue, and you do so, approaching the bed, and laying your hands on the brown skin of her back, enjoying its heat, its strange exotic gleam. You begin to rhythmically rub from her shoulders to the base of her spine, encouraged by her soft, even breathing, the way she settles more deeply into her feather pillows, the smile of casual contentment just visible at the corner of her mouth. You are not sure how long you are there, your hands resting on Ninde, immersed in her heat, her unspeakable softness. Gradually, the noise from downstairs dies, and Ninde yawns.) */
= @1912 /* Mmm...very wonderful, <CHARNAME>... */
= @1913 /* (You realise that Ninde is half asleep, and cannot suppress a smile. The elf makes a few snuffling sounds as you draw the blankets up about her shoulders, and make your way to your own room.) */
  IF ~~ DO ~IncrementGlobal("LK#Ninde_massageflirt","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ LK#NindeFlirt_kisshand1
  SAY @1914 /* (With a gentlemanly flourish, you take Ninde's hand and lift it to your lips, feeling the cold metal of her jewelery against your mouth. Astoundingly, Ninde does not seem to mind. In fact, she smiles with dignified pleasure.) */
  = @1915 /* 'Tis nice to see there are still a few gentlemen left. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_kisshand2
  SAY @1916 /* (You pause opposite Ninde, and hastily catch her fingers up in your hand. Sweeping it to your mouth, you pause, as you notice an expression of intense mortification has made its way on to the elf's face.) */
  = @1917 /* What are you doing, Bhaalspawn? Noticed a few crumbs left from breakfast? Frankly, I'd expect more decorum even from you. */
  = @1918 /* (Ninde pulls her hand away, seeming to take priggish pleasure in her cruelty as she sweeps away.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_kisshand3
  SAY @1919 /* (Your hand has barely enfolded Ninde's when she brushes you away with a practiced efficacy and restraint.) */
  = @1920 /* Tsk, no touching. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_kisshand4
  SAY @1921 /* (You hold Ninde's soft hand to your lips, and as you let it fall, you look up to find yourself confronted by one of the elf's condescending smiles.) */
  = @1922 /* How sweet. The hedge-born northerner has gentlemanly pretensions! */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_kisshand5
  SAY @1923 /* (Ninde tugs her hand away from you quite sharply.) */
  = @1924 /* A little bit of finishing school wisdom for you, Bhaalspawn; there are hands for stirring ladles, and there are hands for touching Ladies. A man has one, or the other. Guess where you fall? */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_kisshand6
  SAY @1925 /* (Ninde stops as you touch her fingers to your mouth, and you look up, still holding her hand in yours. The elf is looking at you, yes, with a gamine smile illuminating her round face. She giggles. You smirk.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_kisshand7
  SAY @1926 /*  Oh <CHARNAME>, the way you carry on, you'd think there was a masked ball to invite me to. */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_kisshand8
  SAY @1927 /* (As you stoop to grace it with a kiss, the sun elf retrieves her hand from your grasp, and lays a balletic finger under your chin. Coaxingly tilting your face upward to meet her gaze, she looks at you appraisingly, although this was a Thayvian slave market, and she was thinking of buying you.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_kisshand9
  SAY @1928 /* (You take Ninde's hand in your own, but before you have had time to move it toward your face, she has pulled you toward her and pressed your palm against her substantial, silk-clad left breast.) */
  = @1929 /* (You are only able to appreciate it's warmth and weight for a moment, however, as Ninde draws your touch down across her narrow waist, and limber thigh. It all seems to be over in a matter of seconds as she once more displays her capricious nature, and presses you away like an unwanted suitor, self-satisfied smile playing in the gold loop of her eye.) */
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_kisshand10
  SAY @1930 /* (Strangely, Ninde allows you to kiss her hand without comment, observing you, dumb and prettily compliant as a Nixie. The lack of reaction is somewhat disconcerting, until you notice, as she draws away from you, she has touched the hand you kissed to her neck, and does not lower it for quite some time.) */
  IF ~~ EXIT
END

END