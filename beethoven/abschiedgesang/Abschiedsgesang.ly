\version "2.15.34"

\header  {
title = "Abschiedsgesang"
subtitle = "für drei Männerstimmen"
composer = \markup \right-column { "Ludwig van Beethoven" \smaller "(1770-1827)" }
poet = "Ignaz von Seyfried"
opus = "WoO 102"
copyright = \markup {\rounded-box \center-column {\small "Copyright © 2012 by CPDL. This edition can be fully distributed, duplicated, performed, and recorded." \small #(string-append "Engraved by Jon Arnold using Lilypond v. " (lilypond-version))}}
tagline = \markup {\rounded-box \center-column { \small
\concat { "Source: " \italic "Ludwig van Beethovens Werke" ", Serie 23: Lieder und Gesänge mit Begleitung des Pianoforte, No.273."}  {\small "Leipzig: Breitkopf & Härtel, 1862-1890. Plate B.273."}}}

}

global = {
\dynamicUp
\key bes \major
\partial 8
\override DynamicTextSpanner #'style = #'none
}

bassNotes= { 
\global
\relative c {
\tempo "Andante ma non troppo."
%set tempo for MIDI
\once \set Score.tempoHideNote = ##t \tempo 4 = 72
bes8^\markup {\dynamic p \italic dolce} | bes4 bes bes4. bes8 | bes4. bes8 a c f ees | ees4 d bes c8 d | ees4 d c bes | f'4. f8 e4 d |
e4. e8 d4 c8( b) | g'( c,) c c c4 bes! | bes( a8) a' g4 g | f8 f g2 a4 | bes4 r8 bes8 bes4. aes8 | g4 g g4. f8 | ees4 ees8 ees ees4. ees8 |
ees4 g aes d, | ees ees ees ees8 ees | d4. cis8 d4 d | g2 g4 g8 g | f4 f bes,( c8) d | ees4 ees8 g g16 g r8 r4 | r8 g g16 g ees8 ees4 c |
a4. a8 a'4 f | bes2 r2 | r2 r4 r8 f | f f g a bes bes, c d | ees ees16 ees d8 c f4 f | g4.(\sf ees8) f4 f | g4.( ees8) f4 f | bes,4\fermata 
%set tempo for MIDI
\time 6/8 \key g \major \tempo "Lebhaft (doch nicht zu sehr)."
\once \set Score.tempoHideNote = ##t \tempo 4. = 72
g'8 g fis g | a g a d, e fis | g g b b a b | c b c fis, g a | b b d d d d | d d d d d d | d d g, g fis g | a g a d, e fis | g g b b a b | a g a d, e fis |
g g g g g g | g g g c, c c | d4 d8 d d d | d d d d' d, d | g4 f8 e e d | c c d e e d | c c e d d c | b c d e e fis | g g r8 r4 r8 | R2. | r4 d8 d e fis |
g a b c c c | b4 e,8 e d c | g'8 g g g4 g8 | g2.~ | g2.~ | g4 c8 c c, c | d d d d d c | b4 c8 d d c | b4 c8 d d d |
\time 4/4 \key bes \major \tempo "Tempo I."
%set tempo for MIDI
\once \set Score.tempoHideNote = ##t \tempo 4 = 72
g4 r8 g g4 g | f4. r8 r4 r8 bes, | bes4 bes bes4. bes8 | bes4. bes8 a c f ees | ees4 d bes c8 d | ees4 d c bes | f'4. f8 e4 d | e4. e8 d4 c8( b) |
g'( c,) c c c4 bes! | bes( a8) a' g4 g | f8 f g2 a4 | bes r8 bes bes4. aes8 | aes( g) g4 g4. f8 | f4( ees8) ees ees4. e8 | e( f) f4 c8( e g) c | f,4 a f2~ | 
f4 f bes, g' | g4. f8 f( ees) ees ees | ees4. e8 e( f) f4 | c8 e g c f,4 a | f2. f4 | bes,1~ | bes4 bes bes2\fermata
}
}

tenoreIINotes= {
\global
\relative c {
r8 r4 r8 f8\p f4 f | f4. f8 f4. f8 | f4 f f f8 f | f4 f a bes | bes4( a8) a g4 f | g4. g8 f4 f | f e8 e fis4 g | e f bes bes | a8 a bes2 c4 | bes r4 r2 |
r4 bes bes4. aes8 | g4 bes bes4. aes8 | g4 bes aes aes | aes g g g8 g | g4. g8 fis4 a | bes2 bes4 bes8 bes | aes4 aes aes4. f8 |
f4 ees r8 bes' bes16 bes r8 | r8 bes bes16 bes g8 g4 ees4 | c4. c8 f4 a | bes2 r2 | r8 f g a bes a bes c d2 d8  d, ees f | ees4. ees'8 d4 c |
bes4.(\sf ees8) d4 c | bes4.( ees8) d4 c | bes4\fermata \time 6/8 \key g \major r8 r4 r8 | R2. | r4 g8 g fis g | a g a d, e fis | g g b b a b |
c b c fis, g a | b b d d d d | d d d d d d | d d g, g fis g | c b c fis, g a | b b b b a g | b a g c a g | fis4 fis8 g fis g | a g a fis e fis | g4 g8 g g g | 
g g g g g g | g g g g g g | g g g g g a | g g r8 r4 r8 | R2. | r4 c8 c c c | b a g fis fis fis | g4 r8 r4 r8 | R2. | r4 g8 g a b | c d e f f f | 
e4 c8 c c c | b a g g a fis | g4 a8 g a fis | g4 a8 g a fis | 
\time 4/4 \key bes \major g4 r8 bes!8 bes4 bes | a4. f8 f4 f | f4. f8 f4 f | f4. f8 f4. f8 | f4 f f f8 f | f4 f a bes |
bes4( a8) a g4 f | g4. g8 f4 f | f e8 e fis4  g | e f bes bes | a8 a bes2 c4 | bes4 r4 r2 | r4 r8 bes8 bes4. aes8 | aes( g) g c c4. bes8 | bes( a) a4 bes4. g8 |
a4 r4 r c | a a bes bes | bes4. aes8 aes( g) g c | c4. bes8 bes( a!) a4 | bes4. g8 a4 r4 | r4 c a a | bes r4 r4 f | f1\fermata
 }
}

tenoreINotes = {
\global
\relative c' {
r8 | r4 r8 d\p d4 d | d4. d8 ees4. c8 | c4 bes d c8 bes | a4 bes c d | 
d4( c8) c c4 c c4. c8 b4 c8( d) | d4 c8 c d4 d | c4. c8 e4 e | f8 f ees!2 f4 | d4 r4 r2 |
R1 | r4 g4 g4. f8 | ees4 ees c c | c bes bes bes8 bes | bes4. bes8 a4\cresc fis' | g2\f ees4\p ees8 ees |
ees4 d f4. aes,8 | aes4 g r4 r8 ees'8 | ees4 ees8 ees ees4 ees | f,4. f8 c'4 f |
d2 r8 f, g a | bes( a) bes( c) d( c) d( ees) | f2 f8 bes, bes bes | ees,4. g'8 f4 ees |
d4.(\sf g8) f4 ees | d4.( g8) f4 a, | bes4\fermata 

\key g \major \time 6/8 r8 r4 r8 | R2. | R2. |
R2. | r4 g8 g fis g | a g a d, e fis | g g b b a b | 
c b c fis, g a | b b d d d d | d d d d d d | d d d d c b |
d c b e c b | a4 a8 b a b | c b c a g a | b4 d8 c c d | e e d c c d | 
e c c b b c | d e d c c d | b b b b a g | d' d d d4 d8 | d2.~ |
d2.~ | d4 r8 r4 r8 | R2. | r4 f8 f f f | e d c b b b |
c4 e8 e e e | d c b b c a | d4 c8 b c a | d4 c8 b c a | \time 4/4 \key bes \major g4 r8 d'8 ees4 ees |
ees4. r8 r2 | r4 r8 d d4 d | d4. d8 ees4. c8 | c4 bes d c8 bes | a4 bes c d |
d4( c8) c c4 c | c4. c8 b4 c8( d) | d4 c8 c d4 d | c4. c8 e4 e | f8 f ees2 f4 | d r4 r2 |
R1 | r4 r8 ees8 ees4. d8 | d( c) c4 g'4. e8 | f4 r4 r2 | r4 f d r |
r2 r4 r8 ees8 | ees4. d8 d( c) c4 | g'4. e8 f4 r4 | r2 f,8( a c) f | d4 d d2~ | d1\fermata
}
}


bassWords = \lyricmode {
	Die Stun- de schlägt, die Stun- de schlägt
	wir müs- sen schei- den,
	bald sucht ver- ge- bens dich mein Blick;
	am Bu- sen länd- lich stil- ler Freu- den
	err- ingst du dir ein neu- es Glück, ein neu- es Glück.
	Ge- lieb- ter Freund! du bleibst uns theu- er,
	Ge- lieb- ter Freund! du bleibst uns theu- er,
	ging auch die Rei- se nach dem Belt;
	doch ist zum gu- ten Glück Stadt Stey- er, 
	Stadt Stey- er, Stadt Stey- er
	noch nicht am En- de die- ser Welt,
	doch ist zum gu- ten Glück Stadt Stey- er
	noch nicht am En- de die- ser Welt,
	die- ser Welt, die- ser Welt.
	%6/8
	Und kom- men die Freun- de um dich zu be- su- chen,
	Und kom- men die Freun- de um dich zu be- su- chen,
	so sei nur hübsch freund- lich und back' ih- nen Ku- chen,
	Und kom- men die Freun- de um dich zu be- su- chen,
	so sei nur hübsch freund- lich und back' ih- nen Ku- chen,
	auch wer- den, so wie sich's für Deut- sche ge- hört,
	auf's Wohl- sein der Gäs- te die Hump- en ge- leert.
	Dann bring- en wir froh im ge- zuck- er- ten Wei- ne
	ein Gläs- chen dem e- wi- gen Freund- schaft- sver- ei- ne,
	%dein Töch- ter- lein ma- che den Ga- ny- med,
	ich weiss, dass sie ger- ne da- zu sich ver- steht,
	dein Töch- ter- lein ma- che den Ga- ny- med,
	ich weiss dass sie ger- ne da- zu sich ver- steht,
	da- zu sich ver- steht, da- zu sich ver- steht.
	%4/4
	Die Stun- de schlägt, die Stun- de schlägt
	die Stun- de schlägt,
	wir müs- sen schei- den,
	bald sucht ver- ge- bens dich mein Blick;
	am Bu- sen länd- lich stil- ler Freu- den
	err- ingst du dir ein neu- es Glück, ein neu- es Glück.
	Ge- lieb- ter Bru- der! le- be wohl,
	ge- lieb- ter Bru- der! le- be wohl,
	leb' wohl, leb' wohl, 
	ge- lieb- ter Bru- der!
	Ge- lieb- ter Bru- der! le- be wohl,
	leb' wohl, leb' wohl, leb' wohl, __ leb' wohl!
	
	
}

tenoreIIWords = \lyricmode {
	Die Stun- de schlägt,
	wir müs- sen schei- den,
	bald sucht ver- ge- bens dich mein Blick;
	am Bu- sen länd- lich stil- ler Freu- den
	err- ingst du dir ein neu- es Glück, ein neu- es Glück.
	Ge- lieb- ter Freund, 
	ge- lieb- ter Freund! du bleibst uns theu- er,
	ging auch die Rei- se nach dem Belt;
	doch ist zum gu- ten Glück Stadt Stey- er, 
	Stadt Stey- er, Stadt Stey- er
	noch nicht am En- de die- ser Welt,
	doch ist zum gu- ten Glück Stadt Stey- er
	noch nicht am En- de die- ser Welt,
	die- ser Welt, die- ser Welt.
	%6/8
	Und kom- men die Freun- de um dich zu be- su- chen,
	Und kom- men die Freun- de um dich zu be- su- chen,
	so sei nur hübsch freund- lich und back' ih- nen Ku- chen,
	so sei nur hübsch freund- lich und back' ih- nen Ku- chen,
	auch wer- den, so wie sich's für Deut- sche ge- hört,
	auf's Wohl- sein der Gäs- te die Hump- en ge- leert.
	Dann bring- en wir froh im ge- zuck- er- ten Wei- ne
	ein Gläs- chen dem e- wi- gen Freund- schaft- sver- ei- ne,
	%dein Töch- ter- lein ma- che den Ga- ny- med,
	ich weiss, dass sie ger- ne da- zu sich ver- steht,
	ich weiss dass sie ger- ne da- zu sich ver- steht,
	ich weiss dass sie ger- ne da- zu sich ver- steht,
	da- zu sich ver- steht, da- zu sich ver- steht.
	%4/4
	Die Stun- de schlägt, die Stun- de schlägt
	die Stun- de schlägt, 
	wir müs- sen schei- den,
	bald sucht ver- ge- bens dich mein Blick;
	am Bu- sen länd- lich stil- ler Freu- den
	err- ingst du dir ein neu- es Glück, ein neu- es Glück.
	Ge- lieb- ter Bru- der, ge- lieb- ter Bru- der! le- be wohl,
	leb' wohl, leb' wohl, 
	ge- lieb- ter Bru- der!
	Ge- lieb- ter Bru- der! le- be wohl,
	leb' wohl, leb' wohl, leb' wohl!
	
	
}

tenoreIWords = \lyricmode {
	Die Stun- de schlägt,
	wir müs- sen schei- den,
	bald sucht ver- ge- bens dich mein Blick;
	am Bu- sen länd- lich stil- ler Freu- den
	err- ingst du dir ein neu- es Glück, ein neu- es Glück.
	Ge- lieb- ter Freund! du bleibst uns theu- er,
	ging auch die Rei- se nach dem Belt;
	doch ist zum gu- ten Glück Stadt Stey- er, 
	Stadt Stey- er
	noch nicht am En- de die- ser Welt,
	doch ist zum gu- ten Glück Stadt Stey- er
	noch nicht am En- de die- ser Welt,
	die- ser Welt, die- ser Welt.
	%6/8
	Und kom- men die Freun- de um dich zu be- su- chen,
	Und kom- men die Freun- de um dich zu be- su- chen,
	so sei nur hübsch freund- lich und back' ih- nen Ku- chen,
	auch wer- den, so wie sich's für Deut- sche ge- hört,
	auf's Wohl- sein der Gäs- te die Hump- en ge- leert.
	Dann bring- en wir froh im ge- zuck- er- ten Wei- ne
	ein Gläs- chen dem e- wi- gen Freund- schaft- sver- ei- ne,
	dein Töch- ter- lein ma- che den Ga- ny- med,
	ich weiss dass sie ger- ne da- zu sich ver- steht,
	ich weiss dass sie ger- ne da- zu sich ver- steht,
	da- zu sich ver- steht, da- zu sich ver- steht.
	%4/4
	Die Stun- de schlägt, 
	die Stun- de schlägt,
	wir müs- sen schei- den,
	bald sucht ver- ge- bens dich mein Blick;
	am Bu- sen länd- lich stil- ler Freu- den
	err- ingst du dir ein neu- es Glück, ein neu- es Glück.
	Ge- lieb- ter Bru- der! le- be wohl,
	leb' wohl!
	Ge- lieb- ter Bru- der! le- be wohl,
	le- be wohl, leb' wohl!
	
	
}

\score {
    \new ChoirStaff <<
    \new Staff = "tenoreI" <<
        \set Staff.instrumentName = #"Tenore I"
        \set Staff.midiInstrument = #"voice oohs"
        \new Voice = "tenoreI" {
          \global
\clef "G_8"
          \tenoreINotes
\bar "|."
        }
      >>
      \new Lyrics \lyricsto "tenoreI" {
        \tenoreIWords
      }
    \new Staff = "tenoreII" <<
        \set Staff.instrumentName = #"Tenore II"
        \set Staff.midiInstrument = #"voice oohs"
        \new Voice = "tenoreII" {
          \global
\clef "G_8"
          \tenoreIINotes
\bar "|."
        }
      >>
      \new Lyrics \lyricsto "tenoreII" {
        \tenoreIIWords
       }
      \new Staff = "bass" <<
        \set Staff.instrumentName = #"Basso"
        \set Staff.midiInstrument = #"voice oohs"
        \new Voice = "bass" {
          \global
\clef bass
          \bassNotes
\bar "|."
        }
      >>
      \new Lyrics \lyricsto "bass" {
        \bassWords
      }
    >>
\layout{
  #(layout-set-staff-size 17)
  }
\midi {

	}
  
}

\paper {
system-system-spacing #'basic-distance = #20	
}