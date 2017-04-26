\version "2.18.2"

\header {
  title = "Das Göttliche"
  subtitle = "Six-voice Canon"
  composer = \markup {
    \override #'(baseline-skip . 2)
    \right-column {
      "Ludwig van Beethoven"
      "(1770 – 1827)"
      "WoO 185 (1823)"
    }
  }
  poet = \markup {
    \override #'(baseline-skip . 2)
    \left-column {
      "Johann Wolfgang von Goethe"
      "(1749 – 1832)"
    }
  }
  copyright = \markup {\small "Copyright © 2016 by CPDL. This edition can be fully distributed, duplicated, performed, and recorded." }
  tagline = \markup {\rounded-box \center-column { 
    \small \concat { "Source: " \italic "Ludwig van Beethovens Werke, Serie 23: Lieder und Gesänge, Nr.256"}  
    {\small "Leipzig: Breitkopf und Härtel, 1864. Plate B.256."}
    {\small #(string-append "Engraved by Jon Arnold using Lilypond v. " (lilypond-version))} 
                     }
  }
}

\paper {
  #(set-paper-size "letter")
  %systems-per-page = 3
}
#(set-global-staff-size 16)

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
  \context {
    \Staff
    %\RemoveEmptyStaves
    %\override VerticalAxisGroup.remove-first = ##t
  }
}

global = {
  \key e \major
  \numericTimeSignature
  \time 2/4
  \partial 8
  \tempo "Langsam, doch nicht zu sehr, und mit Gefuhl und Wurde"
  \override TextScript.color = #red
}

origBreaker = {
  s8 | s2*6 %\break
               s2*6 %\break
               s2*6 %\pageBreak
               %page 2
               s2*5 %\break
               s2*5 %\break
               s2*2 \repeat volta 2 { s2*3 %\pageBreak
               %page 3
               s2*5 %\break
               s2*6 %\break
               s2*6 %\pageBreak
               %page 4
               s2*6 %\break
               s2*5 %\break
               s2*5 }
}

partA = {
    b8~ b8. a16 gis8 e | cis'4 r | a8.( gis16) fis8 b | gis4 r | r8 b gis r | b4 gis8 r8 | r4 r8 }
partB = {
  
  e8~ e8. dis16 cis8 a | fis'4 r | e8.( dis16) cis8 fis | dis r r e | dis dis e \noBeam }
partC = {
  
  gis8~ gis8. fis16 e8 fis16( gis) | a4 r | fis8.( e16) dis( e) fis( dis) | e8 gis16( fis) e8 a |
         fis8 r r gis | fis fis gis4 |}
partD = {
  e16( fis) gis( a) b( cis) dis( e) | cis4 r | fis16( e) dis( cis) b( a) gis fis | e4 a | dis,16( e) fis dis gis( a) b( gis) | dis( e) fis dis gis8 r8 | R2 |}
partE = {
  a,16( b) cis( dis) e( fis) gis( a) | b,4 r | e16( fis) gis( a) a( e) cis( a) |
  b( cis) dis b e( gis) gis( e) | b( cis) dis b e8 }
partF = {
  e8~ | e4 e | a, a8( cis) b2 |
  cis4 cis8 a | b2~ | b8 b' e, \noBeam}


sopranoOne = \relative c'' {
  \global
  \partA 
  \partB
  \partC
  \partD 
  \partE
  \partF
  \transpose b b' \partA
  \partB
  \partC
  \partD
  %final part E
  a,16( b) cis( dis) e( fis) gis( a) | b,4 r | e16( fis) gis( a) a( e) cis( a) |
  b( cis) dis b e( gis) gis( e) | b( cis) dis b e8-\parenthesize \fermata \noBeam e\laissezVibrer
}

sopranoTwo = \relative c'' {
  \global
  r8 | R2*5 | r4 r8 \partA
  \partB
  \partC
  \partD 
  \partE
  \partF
  \transpose b b' \partA
  \partB
  \partC
  %final part D
  e16( fis) gis( a) b( cis) dis( e) | cis4 r | fis16( e) dis( cis) b( a) gis fis | e4 a | dis,16( e) fis dis gis( a) b( gis) | dis( e) fis dis gis8-\parenthesize \fermata r8 |
}

alto = \relative c'' {
  \global
  r8 | R2*11 | r4 r8 \partA 
  \partB
  \partC
  \partD
  \partE
  \partF
  \transpose b b' \partA
  \partB
  %final part C
  gis8~ gis8. fis16 e8 fis16( gis) | a4 r | fis8.( e16) dis( e) fis( dis) | e8 gis16( fis) e8 a |
         fis8 r r gis | fis fis gis4-\parenthesize \fermata |
}

tenorOne = \relative c'' {
  \global
  r8 | R2*17 | r4 r8 \partA
  \partB
  \partC
  \partD
  \partE
  \partF
  \transpose b b' \partA
  %final part B
  e8~ e8. dis16 cis8 a | fis'4 r | e8.( dis16) cis8 fis | dis r r e | dis dis e-\parenthesize \fermata \noBeam gis~\laissezVibrer
}

tenorTwo = \relative c'' {
  \global
  r8 | R2*18 |
  R2*5 |
  r4 r8
  \partA
  \partB
  \partC
  \partD
  \partE
  \partF
  %final part A
  b'8~ b8. a16 gis8 e | cis'4 r | a8.( gis16) fis8 b | gis4 r | r8 b gis r | b4 gis8-\parenthesize \fermata r8
}

bass = \relative c'' {
  \global
  r8 | R2*18 |
  R2*11 | r4 r8 \partA
  \partB
  \partC
  \partD
  \partE
  %final part F
  e8~ | e4 e | a, a8( cis) b2 |
  cis4 cis8 a | b2~ | b8 b' e,-\parenthesize \fermata \noBeam b'\laissezVibrer
  
}


partAWords = \lyricmode {
 E -- del sei der Mensch,
 hilf -- reich und gut,
 ja gut, ja gut.
}
partBWords = { \partAWords }
partCWords = \lyricmode {
  E -- del sei der Mensch,
  hilf -- reich und gut,
  hilf -- reich und gut,
  ja gut, ja gut.
}
partDWords = \lyricmode {
  E -- del sei der Mensch,
  hilf -- reich, hilf -- reich und gut, gut!
  hilf -- reich und gut, ja
  hilf -- reich und gut.
}
partEWords = \lyricmode { 
  E -- del sei der Mensch, hilf -- reich,
  hilf -- reich, hilf -- reich und gut,
  ja hilf -- reich und gut.
}
partFWords = \lyricmode {
  E -- del sei der Mensch,
  hilf -- reich und gut,
  ja gut.
}


sopranoOneVerse = \lyricmode {
  \partAWords
  \partBWords
  \partCWords
  \partDWords
  \partEWords
  \partFWords
  \partAWords
  \partBWords
  \partCWords
  \partDWords
  \partEWords
  E __
}

sopranoTwoVerse = \lyricmode {
  \partAWords
  \partBWords
  \partCWords
  \partDWords
  \partEWords
  \partFWords
  \partAWords
  \partBWords
  \partCWords
  \partDWords
  
}

altoVerse = \lyricmode {
  \partAWords
  \partBWords
  \partCWords
  \partDWords
  \partEWords
  \partFWords
  \partAWords
  \partBWords
  \partCWords
  
}

tenorOneVerse = \lyricmode {
  \partAWords
  \partBWords
  \partCWords
  \partDWords
  \partEWords
  \partFWords
  \partAWords
  \partBWords
  E __
  
}

tenorTwoVerse = \lyricmode {
  \partAWords
  \partBWords
  \partCWords
  \partDWords
  \partEWords
  \partFWords
  \partAWords
}

bassVerse = \lyricmode {
  \partAWords
  \partBWords
  \partCWords
  \partDWords
  \partEWords
  \partFWords
  E __
  
}

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano1" \new Voice = "soprano1" { \sopranoOne }
     \new Staff = "soprano2" \new Voice = "soprano2" { \sopranoTwo }
     \new Staff = "alto" \new Voice = "alto" { \alto }
     \new Staff = "tenor1" \new Voice = "tenor1" { \tenorOne }
     \new Staff = "tenor2" \new Voice = "tenor2" { \tenorTwo }
     \new Staff = "bass" \new Voice = "bass" { \bass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 60 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Voice I"
      shortInstrumentName = "I"
    } { << \sopranoOne \origBreaker >> }
    \addlyrics { \sopranoOneVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Voice II"
      shortInstrumentName = "II"
    } { \sopranoTwo }
    \addlyrics { \sopranoTwoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Voice III"
      shortInstrumentName = "III"
    } { \alto }
    \addlyrics { \altoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Voice IV"
      shortInstrumentName = "IV"
    } {  \tenorOne }
    \addlyrics { \tenorOneVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Voice V"
      shortInstrumentName = "V"
    } { \tenorTwo }
    \addlyrics { \tenorTwoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Voice VI"
      shortInstrumentName = "VI"
    } {  \bass }
    \addlyrics { \bassVerse }
  >>
  \layout { }
  \midi {
    \tempo 4=60
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "voice1"
  \score {
    \rehearsalMidi "soprano1" "soprano sax" \sopranoOneVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "voice2"
  \score {
    \rehearsalMidi "soprano2" "soprano sax" \sopranoTwoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "voice3"
  \score {
    \rehearsalMidi "alto" "soprano sax" \altoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "voice4"
  \score {
    \rehearsalMidi "tenor1" "tenor sax" \tenorOneVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "voice5"
  \score {
    \rehearsalMidi "tenor2" "tenor sax" \tenorTwoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "voice6"
  \score {
    \rehearsalMidi "bass" "tenor sax" \bassVerse
    \midi { }
  }
}

