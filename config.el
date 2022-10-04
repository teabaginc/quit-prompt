;;; quit-prompt/config.el -*- lexical-binding: t; -*-
;; A cool module to prompt the user if they want to quit Emacs
;; and adds far too many references.
;; Exported and made standalone by @teabaginc from doomemacs/doomemacs made by @hlissner.
;; All credits go to him, not me.

(defvar +quit-messages
  '(;; from Doom 1
    "Please don't leave, there's more demons to toast!"
    "Let's beat it -- This is turning into a bloodbath!"
    "I wouldn't leave if I were you. The Terminal is much worse."
    "Don't leave yet -- There's a demon around that corner!"
    "Ya know, next time you come in here I'm gonna toast ya."
    "Go ahead and leave. See if I care."
    "Are you sure you want to quit this great editor?"
    ;; from Doom 2                            
    "Don't go now, there's a dimensional shambler waiting at the terminal prompt!"
    "Get outta here and go back to your boring programs."
    "If I were your boss, I'd deathmatch ya in a minute!"
    "Look, bud. You leave now and you forfeit your body count!"
    "You're lucky I don't smack you for thinking about leaving."
    ;; from Portal
    "Thank you for participating in this Aperture Science computer-aided enrichment activity."
    "You can't fire me, I quit!"
    "I don't know what you think you are doing, but I don't like it. I want you to stop."
    "This isn't brave. It's murder. What did I ever do to you?"
    "I'm the man who's going to burn your house down! With the lemons!"
    "Okay, look. We've both said a lot of things you're going to regret..."
    ;; Custom
    "(setq nothing t everything 'permitted)"
    "Emacs will remember that."
    "Emacs, Emacs never changes."
    "Hey! Hey, M-x listen!"
    "It's not like I'll miss you or anything, b-baka!"
    "Wake up, Mr. Stallman. Wake up and smell the ashes."
    "You are *not* prepared!"
    "Please don't go. The drones need you. They look up to you."
    ;; Custom (Titanfall 2)
    "Ashes to ashes, ashes to Ash. Ash to ashes..."
    "Just doing my job."
    "Protocol Three: Protect the Pilot."
    "Arch 1, Vim's on station. Your journey ends here, Emacs. Nowhere to edit, nowhere to save."
    "If you don't win together, you die together."
    "Trust me."
    "I will avoid all shortcuts."
    "The 6-4's a family, and we'll kick your ass!"
    "Together we stand. Divided we ambush."
    "Stand by for Titanfall!"
    "I am 50% in love."
    "It is good to see you too, Editor."
    "You need to move a little faster than that, son. *Speed is Life.*"
    "Airspeed is life, altitiude is life insurance." ;; Taken from the line before.
    ;; Custom (Apex Legends)
    ;; Rampart
    "Live today, die tomorrow! Heh, better than the other way around..."
    "Eh, we both woke up today! Not a bad start."
    "Right, time to turn crap into gold."
    "Chal dhoom machate hain... It's party time!"
    "Take a long look at me, that's the price you have to pay."
    "Between you and me, maybe give it a rest. Try a real job, just a thought."
    "How's your ma?"
    "Sorry - We all need a bathroom break."
    "Mhm. I make things look good, don't I?"
    ;; Wraith
    "Trust me - I know what I'm doing."
    "I know all the roads. They all lead to the same place."
    "Pain... death... nothing phases me."
    "I don't fear anything. Can you say the same?"
    "Another day, another road."
    "I saw this coming."
    ;; Mirage
    "You're gonna see a lot of me."
    "Don't worry, I'm just perfect."
    "Hope you're ready for some fun."
    "I love when the spotlight's on me."
    ;; Fuse
    "Been puttin' the 'bomb' in bombtastic since 1976." ; Emacs' first official release is 1976
    "Hold on to me Coldie, this won't take a second."
    "Fightin' fire, with fire."
    "This ain't me first rodeo, mate."
    "Mate, I wasn't born to be subtle."
    "Fair effort, mate. Next round's on me."
    "Hahaha. Oh ya got bloody smashed, mate."
    "Just wasn't your moment, kid."
    "Tell the devil Fuse sent ya."
    "Valhalla's gonna have to wait, Houndy."
    ;; Ash
    "True mastery can't be programmed."
    "Rest assured I will accept nothing less than perfection."
    "Focus. Fight. Win."
    "Follow me. I will cut a path to perfection."
    "'You can't trust her, she'll kill--' '--anything that gets in my way.'"
    "That little voice holding you back? Kill it."
    "Good luck, Editor."
    "Mmmmm... ashes to ashes."
    "Pathetic."
    "My former colleagues would've eaten you alive."
    "Show no mercy."
    ;; Pathfinder
    "Good luck. Have fun. Don't die."
    "You and me, friend!"
    ;; Custom (Team Fortress 2)
    "Son! I'm gonna blow that darn look right off your stupid face."
    "Oops! Zat vas not Medizin!"
    "It might be you! It might be me! It may even be-"
    "Right behind you."
    "Thank you for being such a dear *friend*."
    "Hsssssssss!"
    "Go to *hell*, and take your cheap suit with you!"
    "I'll see you in hell... you *handsome* rogue!"
    "Oh, they're gonna glue you back together - in hell!"
    "Aw! Bless your heart, you're doing your best."
    "Oh, *not the pocket!*"
    "Oh, you're *kidding* me!"
    "I'm not proud of you, but I'm not unproud of you."
    "This is as good as you're gonna do."
    "**I just bagged the world's fattest man!**"
    "God bless the Badlands. Thank you and good night."
    "Here's the contract fee. You earned it."
    "Let's uh... call this a learning experience?"
    "Go to Heaven and tell The Devil I'M DRUNK!"
    "I have been bitten by like *sixty* raccoons. Do raccoons have rabies?"
    "One of the raccoons is eyeballing me. You gotta problem pal?"
    "Okay, back to my stupid vacation."
    "Remarkable! You are like Icarus, if he never flew too close to the sun. Or flew at all."
    ;; Custom (BioShock with emacs mentionings in)    
    "A man chooses, a slave obeys."
    "My Muse is a fickle b***h with a very short attention span!"
    "Imagine the will it took to create a file like this. And what have you built? Nothing."
    "We all make choices, but in the end our choices make us."
    "I chose more... I chose The Impossible... I chose Emacs."
    "No Gods or Kings, only Emacs."
    "Look at it this way: at least it'll be quick and painless."
    "Well done! You won a battle of wits with a TEXT EDITOR!"
    "GET OUT OF MY FUCKIN' OFFICE!!!")
  "A list of quit messages, picked randomly by `+quit-fn'. Taken from
http://doom.wikia.com/wiki/Quit_messages and elsewhere.")

(defun quit-p (&optional prompt)
  "Prompt the user for confirmation when killing Emacs."
  (or (not (ignore-errors (buffer-list)))
      (yes-or-no-p (format "%s" (or prompt "Really quit Emacs?")))
      (ignore (message "Aborted"))))

(defun +quit-fn (&rest _)
 (quit-p
  (format "%s  %s"
	  (propertize (nth (random (length +quit-messages))
                            +quit-messages)
                       'face '(italic default))
          "Really quit Emacs?")))

;;
(setq confirm-kill-emacs #'+quit-fn)
