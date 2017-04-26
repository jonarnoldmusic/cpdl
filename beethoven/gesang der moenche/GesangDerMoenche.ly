\version "2.15.34"

\header {
title = "Gesang der Mönche"
subtitle = \markup { \concat { "aus Schillers Schauspiel " \italic "Wilhelm Tell"}}
composer = \markup \right-column { "Ludwig van Beethoven" \small "(1770-1827)" } 
poet = \markup \left-column {"Johann Christoph Friedrich von Schiller" \concat {\italic "Wilhelm Tell" ", IV, 3"}} 
opus = "WoO 104"
%copyright included in tagline for one-page score
%copyright = \markup {\center-column { "Copyright © 2012 by CPDL. This edition can be fully distributed, duplicated, performed, and recorded." #(string-append "Engraved by Jon Arnold using Lilypond v. " (lilypond-version))}}
tagline = \markup {\rounded-box \center-column {
	{"Copyright © 2012 by CPDL. This edition can be fully distributed, duplicated, performed, and recorded."} { #(string-append "Engraved by Jon Arnold using Lilypond v. " (lilypond-version))}	
\concat {"Source: " \italic "Ludwig van Beethovens Werke" ", Serie 23: Lieder und Gesänge mit Begleitung des Pianoforte, No.255."} {"Leipzig: Breitkopf & Härtel, 1862-1890. Plate B.255."}}}

}
 
global = { 
\dynamicUp
\partial 4
\key c \minor
\override DynamicTextSpanner #'style = #'none
}

bassNotes = \relative c { c4\sf | c8\p c c4. c8 d8. c16 | c2( b4) r8\fermata b8 |
		b c d4.\sf-> d8 c8. bes16 | d4( c) c r8\fermata ees8 |
		d8.\sf\> d16 d8 d8 d4\p d4 | ees2. r8\fermata ees8 |
		ees\sf\> ees ees d d4\p d | d2 d4 r8\fermata d8 |
		g,8.\cresc g'16 g8 f ees4\!-> r8 e\p | f4 f des2\sf-> |
		des8\fp-> des16\< des16 des8 des\! c4 b | c2\p c4\fermata r4 }

tenoreIINotes = \relative c { ees4\sf | ees8\p ees ees4. ees8 f8. ees16 | ees2( d4) r8\fermata d8 |
		d ees f4.\sf-> f8 ees8. d16 | f4( ees) ees r8\fermata g8 |
		f8.\sf\> f16 f8 f8 f4\p f4 | f4( ees2) r8\fermata g8 |
		g\sf\> g g g fis4\p g | g4.( fis8) fis4 r8\fermata d8 |
		d8.\cresc d16 d8 g g4\!-> r8 g\p | g4 f f2\sf-> |
		f8\fp-> f16\< f16 f8 f\! f4 f | f2\p e4\fermata r4 }

tenoreINotes = \relative c' { \tempo "Ziemlich langsam" g4\sf | g8\p g g4. g8 g8. g16 | g2. r8\fermata g8 |
		g g g4.\sf-> g8 g8. g16 | g2 g4 r8\fermata g8 |
		bes8.\sf\> bes16 bes8 bes8 bes4\p aes4 | aes4( g2) r8\fermata g8 |
		c\sf\> c c bes a4\p bes | bes4.( a8) a4 r8\fermata a8 |
		b8.\cresc b16 b8 b c4\!-> r8 bes\p | bes4 aes! aes2\sf-> |
		aes8\fp-> aes16\< aes16 aes8 aes\! aes4 aes | aes2\p g4\fermata r4 }

words = \lyricmode { Rasch tritt der Tod den Men- schen an;
es ist ihm kei- ne Frist ge- ge- ben. 
Es stürzt ihn mit- ten in der Bahn,
es reisst ihn for vom vol- len Le- ben. 
Be- rei- tet o- der nicht,
zu ge- hen, er, er muss vor sei- nem Rich- ter ste- hen! 
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
        \words
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
        \words
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
        \words
      }
    >>
\layout{
  #(layout-set-staff-size 16.5)
  }
  \midi{
  	 \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 60 4)
    }  
  }
  
}

\paper {
#(set-paper-size "a4")
system-system-spacing #'basic-distance = #20

}
