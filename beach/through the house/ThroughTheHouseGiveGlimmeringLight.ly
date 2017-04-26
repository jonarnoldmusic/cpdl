\version "2.18.2"

\header {
  title = "Through the house give glimmering light"
  composer = "Amy Marcy Cheney Beach"
  poet = "William Shakespeare"
  piece = "Midsummer Night‘s Dream"
  opus = "Op. 39, No. 3"
  
  copyright = \markup {\small "Copyright © 2016 by CPDL. This edition can be fully distributed, duplicated, performed, and recorded." }
  tagline = \markup {\rounded-box \center-column { 
    {\small "Published Boston: Arthur P. Schmidt, 1897. Plate A.P.S. 4478-4."}
    {\small #(string-append "Engraved by Jon Arnold using Lilypond v. " (lilypond-version))} 
                     }
  }
}

\paper {
  #(set-paper-size "letter")
}
#(set-global-staff-size 17)

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key f \major
  \numericTimeSignature
  \time 3/4
  \tempo "Allegro grazioso"
  \override DynamicTextSpanner #'style = #'none
  \dynamicUp

}

dimERallSource = \markup {\normal-text \italic "dim. e rall."}
dimERall = #(make-dynamic-script dimERallSource)
ppATempoSource = \markup {pp \normal-text \italic "a tempo"}
ppATempo = #(make-dynamic-script ppATempoSource)
pATempoSource = \markup {p \normal-text \italic "a tempo"}
pATempo = #(make-dynamic-script pATempoSource)
pMarcatoSource = \markup {p \normal-text \italic "marcato"}
pMarcato = #(make-dynamic-script pMarcatoSource)

pageBreaker = {
s2.*5 \break
s2.*7 \pageBreak
s2.*7 \break
s2.*7 \break
s2.*6 \pageBreak
s2.*7 \break
s2.*6 \break
s2.*5 \pageBreak
s2.*6 \break
s2.*6 \break
s2.*6 \pageBreak
s2.*6 \break
s2.*7 \break
s2.*6 \pageBreak
s2.*6 \break
s2.*7 \break
s2.*6 \pageBreak
s2.*6 \break
s2.*6 \break
s2.*7 \bar "|."
}

sopranoOne = \relative c'' {
  \global
  c4(\p f) d | c2 d4 | e4. d8 c4 | c2. | r4 d a | 
  c2 a4 | a8( b c4) d | c2. | r4 e f | d2. | r4 d e\cresc | c2 c4 |
  %score page 3
  a'4(\mf g f | g f e | f d)\dimERall e | c2. | c2\ppATempo d4 | e r d | d( c) f |
  d2. | c4 r d | e r d | d( c) f | d2. | d2\cresc es4 | d2 d4 |
  d(\f a' g | f e!) d | f r r | r d\pp a | c2 c4 | e4.( d8) c4 |
  %page 4
  c4 r r | r c\< d | f2(\f e4 | g2 f4) | r4 e d | << {a2.(~} {s4 s4\dim s4} >> | a4 c) d |
  a4\> r^\markup {\italic "poco rit."} g | f2\fermata\pp r4\fermata | e2\pATempo a4 | cis2\< e4\! | e4( d) b | e,2. |
  a4( e) a | cis2\< e4 | e8\!( d e d) b4 | cis8( b cis b) gis4 | cis2 r4 |
  %page 5
  r4 e\mf e | e2 b4 | cis2 fis4 | e2.~\< | e2.~ | e4\! r r |
  R2. | e,2\p a4 | cis2 e4 | e( d) b | e,2. | a4( e) a\< |
  cis2 e4\! | e8( d e d) b4 | cis8( b cis b) gis4 | cis2 r4 | r e\f e | g2. |
  %page 6
  r4 e e | fis2 d4\> | b2 e4 | cis\! r r | r e\pp e | e2 r4 | 
  r e d | cis2 r4 | r cis\dim e | e2. | r4 c!^\markup {\italic "dolcissimo"} e | e2.~ | e2.~\< |
  e2 d4\! | e2\cresc f4^\markup {\italic "rit."} | g2\f\fermata r4\fermata | c,4\ppATempo( f) d | c2 d4 | e4. d8 c4 |
  %page 7
  c2. | r4 d a | c2 a4 | a8( b c4) d | c2. | r4 e f |
  d2. | r4 d\cresc e | c2 c4\mf | a'( g f | g\dimERall f e | f d) e4 | c2. |
  c2\ppATempo d4 | e4 r d | d( c) f | d2. | c4 r d | e r d | 
  %page 8
  d( c) f | d2. | r4 d\cresc es4 | d2 d4 | d\f( a' g | f e) d4 | 
  f4 r r | r d\pp a4 | c2 c4 | e4.( d8) c4 | c4 r r | r c\cresc d |
  f2\f( e4 | g2 f4) | r e d | c2.~( | c4^\markup {\italic "rall."} bes) d | g2~ g8 f | f2.\fermata
  \bar "|."
  
}

sopranoTwo = \relative c'' {
  \global
  a2\p a4 | a2 c4 | c4. d8 c4 | bes2. | a2 f4 | 
  e( a) e4 | f8( g a4) b | g2. | c2 c4 | d( c) bes | bes4. bes8 bes4\cresc | c4( bes a |
  %page 3
  c2.) | c2\mf c4 | c( d)\dimERall b | a2( c4) | bes2\ppATempo bes4 | bes r bes | a2 a4 |
  a2. | bes4 r bes | bes r bes | a2 a4 | a2. | a2\cresc a4 | a2 a4 |
  bes\f( f' e | d e) f | c r r | r a\pp a | bes2 bes4 | bes2 bes4 |
  %page 4
  a4 r r | R2. | r4 c\f c | c2.( | a2.) | << {f~(} {s4 s\dim s4} >> | f4 a) a | 
  a4\> r^\markup {\italic "poco rit."} e4 | f2\fermata\pp r4\fermata | e2.\pATempo~ | e2\< e4\! | e2 e4\< | e'\!( d) b |
  cis4 r r | r e, a | gis2\< b4 | e8(\! d e d) b4 | a2 r4 |
  %page 5
  r4 cis cis | b2 gis4 | a2 a4 | gis(\< a b | a b) cis | d2\! b4\> |
  gis2.\> | e2.~\p | e2 e4 | e2 e4 | e'4( d) b4 | cis4 r r |
  r e, a | gis2\< b4 | e8(\! d e d) b4 | a2 r4 | r cis\f cis | e2. |
  %page 6
  r4 cis4 cis | d2 a4\> | gis2 b4 | a4\! r r | r cis\pp cis | d2 r4 |
  r4 gis, gis | a2 r4 | r4 a\dim cis | cis2. | r4 a^\markup {\italic "dolcissimo"} c!4 | c2.~ | c2.~\< |
  c2 c4\! | c2\cresc d4^\markup {\italic "rit."} | c2\f\fermata  r4\fermata | a2\ppATempo a4 | a2 c4 | c4. d8 c4 |
  %page 7
  bes2. | a2 f4 | e( a) e | f8( g a4) b4 | g2. | c2 c4 | 
  d( c) bes | bes4.\cresc bes8 bes4 | c( bes a | c2.)\mf | c2\dimERall c4 | c( d) b4 | a2( c4) |
  bes2 bes4 | bes4 r bes | a2 a4 | a2. | bes4 r bes | bes r bes |
  %page 8
  a2 a4 | a2. | a2\cresc a4 | a2 a4 | bes\f( f' e | d e) f | 
  c4 r r | r a\pp a | bes2 bes4 | bes2 bes4 | a r r | R2. |
  r4 c\f c | c2.( | a2.) | fis( | g2)^\markup {\italic "rall."} d'4 | e2~\ff e8 c | c2.\fermata
  \bar "|."
}

altoOne = \relative c' {
  \global
  f2\p f4 | a2 a4 | bes4. bes8 bes4 | g4. f8 e4 | f2. |
  c4( e) a | f2 f4 | f2( e4) | R2.*4 |
  %page 3
  f4\mf( e) d | e( d) c | << {a'2 gis4} {s4 s4\dimERall s4} >> e2( a4) | g2\ppATempo g4 | g4 r4 g | a2 f4 |
  f2. | g4 r g | g r g | a2 f4 | f2. | fis2\cresc fis4 | a2 fis4 |
  bes2.~\f | bes2 bes4 | a r r | r f\pp f | g4.( f8) e4 | g4.( f8) e4 |
  %page 4
  f4 r r | R2. | R2. | r4 e(\f f | g2) f4 | << {f2.~} {s4 s4\dim s4} >> | f2 f4 |
  e4\> r^\markup {\italic "poco rit."} c | c2\fermata\pp r4\fermata | cis2\pATempo e4 | a2\< a4\! | cis( b) e, | e2. |
  a,4( cis) e | a2\< cis4 | b2\! gis4 | e2. | r4 cis\mf e |
  %page 5
  a2.( | gis2) e4 | e2 dis4 | e(\< fis gis | fis gis) a4 | b2\! gis4\> | 
  e2. | cis2\p e4 | a2 a4 | cis( b) e, | e2. | a,4( cis) e\< | a2 cis4\! | 
  b2 gis4 | e2. | r4 cis\cresc e | a2.\! | R2. |
  %page 6
  r4 g\f e | d2 fis4\> | gis2. | e4\pMarcato( a4) fis | e2 fis4 | gis4.( fis8) e4 |
  e2 r4 | e4\dim( a) fis | e2. | e4( a) f!4 | e2. | R2. | c4\p\<( e) a |
  c2 c4\! | bes2\cresc bes4^\markup {\italic "rit."} | bes2\f\fermata r4 \fermata | a2\ppATempo f4 | a2 a4 | bes4. bes8 bes4 |
  %page 7
  g4. f8 e4 | f2. | c4( e) a | f2 f4 | f2( e4) | R2. |
  R2.*3 | f4\mf( e) d4 | e(\dimERall d) c | a'2 gis4 | e2( a4) |
  g2\ppATempo g4 | g r g | a2 f4 | f2. | g4 r g | g r g |
  %page 8
  a2 f4 | f2. | fis2\cresc fis4 | a2 fis4 | bes2.~\f | bes2 bes4 |
  a4 r r | r f\pp f | g4.( f8) e4 | g4.( f8) e4 | f4 r r | R2. |
  R2. | r4 e( f | g2) f4 | es2.( | d2)^\markup {\italic "rit."} g4 | bes2~\ff bes8 a | a2.\fermata
  \bar "|."
  
}

altoTwo = \relative c' {
  \global
  f2\p c4 | f2 c4 | g'4. f8 e4 | e4. d8 c4 | c2( d4 |
  a2) c4 | d2 g,4 | c2. | a'2 a4 | bes( a) g | g4.\cresc g8 g4 | a4( g f) |
  R2. | r4 r g\mf | a4( f)\dimERall e | a,2. | e'2\ppATempo d4 | c r d8( e) | f2 c4 |
  f2( c4) | e4 r d | c r d8( e) | f2 c4 | f2( c4) | r r c\cresc | fis2 c4 |
  g'2.~\f | g2. | c,4\mf( f) d | c2 d4 | e4.\>( d8) c4 | c2\! r4 |
  %page 4
  r4 c\cresc f | a2( bes4 | a2\f) g4 | bes2 a4 | d,2. | r4 a\dim b4 | c2 c4 |
  c\> r^\markup {"poco rit."} bes! | a2\pp\fermata r4\fermata | a2.~\pATempo | a2\< cis4\! | e2 e4\< | cis'4(\! b) e,4 |
  e4 r4 r | r e e | e2\< e4 | gis2\! e4 | e2 r4 |
  %page 5
  r4 r e\mf | b2.~ | b2 b4 | e r r | R2. | r4 r e\p |
  d4\>( cis) b | a2.~\p | a2 cis4 | e2 e4 | cis'( b) e, | e r r |
  r e e | e2\< e4 | gis2\! e4 | e r r | R2. | r4 cis\f e
  %page 6
  a2.~ | a2 d,4 | e2 e4 | a,4 r r | R2. | r4 r e'\pp |
  d4.( cis8) b4 | a4 r r | R2.*4 | a4(\p\< c) e | 
  a2 a4\! | g2\cresc f4^\markup {\italic "rit."} | e2\fermata\f r4\fermata | f2\ppATempo c4 | f2 c4 | g'4. f8 e4 |
  %page 7
  e4. d8 c4 | c2( d4 | a2) c4 | d2 g,4 | c2. | a'2 a4 | 
  bes4( a) g | g4.\cresc g8 g4 | a4( g f) | R2. | r4 r g\p | a4(^\markup {\italic "rall."} f)\> e4 | a,2.\! |
  e'2\ppATempo d4 | c r d8( e) | f2 c4 | f2( c4) | e4 r d | c4 r d8( e) |
  %page 8
  f2 c4 | f2( c4) | r4 r c | fis2\< c4 | g'2.~\f | g |
  c,4(^\markup {\italic "marcato"} f) d4 | << {c2} {s4 s\dim} >> d4 | e4.( d8) c4 | c2 r4 | r c\cresc f | a2( bes4 |
  a2) g4 | bes2 a4 | d,2. | r4 a a^\markup {\italic "rall."} | bes2 bes4 | c2~\ff c8 f | f2.\fermata |
  \bar "|." 
  
}

sopranoOneVerse = \lyricmode {
  Through the house give glim -- mer -- ing light,
  By the dead and drow -- sy fire.
  Through the house, through the house,
  By drow -- sy fire;

  Ev' -- ry elf and fai -- ry sprite 
  Hop as light as bird from brier; 
  And this dit -- ty, af -- ter me,
  Sing and dance it trip -- ping -- ly,
  Sing and dance, Sing and dance it trip -- ping -- ly.

  First re -- hearse your song by rote,
  To each word a war -- bling, war -- bling note:
  Hand in hand, with fai -- ry grace,
  First re -- hearse your song by rote,
  To each word a war -- bling. war -- bling note:
  Hand in hand, hand in hand, with fai -- ry grace,
  Hand in hand, hand in hand,
  Will we sing, will we sing and bless this place.

  Through the house give glim -- mer -- ing light,
  By the dead and drow -- sy fire.
  Through the house, through the house,
  By drow -- sy fire;

  Ev' -- ry elf and fai -- ry sprite 
  Hop as light as bird from brier; 
  And this dit -- ty, af -- ter me,
  Sing and dance it trip -- ping -- ly,
  Sing and dance, Sing and dance it trip -- ping -- ly.
}

sopranoTwoVerse = \lyricmode {
  Through the house give glim -- mer -- ing light,
  By the dead and drow -- sy fire.
Through the house give glim -- mer -- ing light,
  By the drow -- sy fire;

Ev' -- ry elf and fai -- ry sprite 
  Hop as light as bird from brier; 
  And this dit -- ty, af -- ter me,
  Sing and dance it trip -- ping -- ly,
  Sing and dance, dance it trip -- ping ly.

  First re -- hearse your song by rote,
  To each word a war -- bling note:
  Hand in hand, with fai -- ry grace, with fai -- ry grace,
  First re -- hearse your song by rote,
  To each word a war -- bling note:
  Hand in hand, hand in hand, with fai -- ry grace,
  Hand in hand, hand in hand,
Will we sing, will we sing and bless this place.

Through the house give glim -- mer -- ing light,
  By the dead and drow -- sy fire.
Through the house give glim -- mer -- ing light,
  By the drow -- sy fire;

Ev' -- ry elf and fai -- ry sprite 
  Hop as light as bird from brier; 
  And this dit -- ty, af -- ter me,
  Sing and dance it trip -- ping -- ly,
  Sing and dance, dance it trip -- ping -- ly.
}

altoOneVerse = \lyricmode {
  Through the house give glim -- mer -- ing, glim -- mer -- ing light,
  By the drow -- sy fire,
  By the dead and drow -- sy fire;

Ev' -- ry elf and fai -- ry sprite 
  Hop as light as bird from brier; 
  And this dit -- ty, af -- ter me,
  Sing and dance it trip -- ping -- ly,
  Sing and dance it trip -- ping -- ly.

  First re -- hearse your song by rote,
  To each word a war -- bling note:
  Hand in hand with fai -- ry grace, with fai -- ry grace,
  First re -- hearse your song by rote,
  To each word a war -- bling note:
  Hand in hand, hand in hand, with grace,
  Hand in hand, with fai -- ry grace,
Will we sing, will we sing, will we sing and bless this place.

Through the house give glim -- mer -- ing, glim -- mer -- ing light,
  By the drow -- sy fire,
  By the dead and drow -- sy fire;

Ev' -- ry elf and fai -- ry sprite 
  Hop as light as bird from brier; 
  And this dit -- ty, af -- ter me,
  Sing and dance it trip -- ping -- ly,
  Sing and dance it trip -- ping -- ly.
}

altoTwoVerse = \lyricmode {
  Through the house give glim -- mer -- ing, glim -- mer -- ing light,
  By drow -- sy fire, 
  Through the house give glim -- mer -- ing light,
  By drow -- sy fire;

Ev' -- ry elf and fai -- ry sprite 
  Hop as light as bird from brier; 
  this dit -- ty, Sing, __
  sing and dance it trip -- ping -- ly,
  Sing and dance it trip -- ping -- ly,
  Sing and dance it trip -- ping -- ly.

  First re -- hearse your song by rote,
  To each word a war -- bling note:
  with fai -- ry grace, with fai -- ry grace,
  re -- hearse your song by rote,
  To each word a war -- bling note:
  Hand in hand, with fai -- ry grace, with fai -- ry grace,
will we sing and bless this place.

Through the house give glim -- mer -- ing, glim -- mer -- ing light,
  By drow -- sy fire, 
  Through the house give glim -- mer -- ing light,
  By drow -- sy fire;

Ev' -- ry elf and fai -- ry sprite 
  Hop as light as bird from brier; 
  this dit -- ty, Sing,
  sing and dance it trip -- ping -- ly,
  Sing and dance it trip -- ping -- ly,
  Sing and dance it trip -- ping -- ly.
}

pianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \sopranoOne \\
      \sopranoTwo
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \altoOne \\
      \altoTwo
    >>
  }
>>

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano1" \new Voice = "soprano1" { \sopranoOne }
     \new Staff = "soprano2" \new Voice = "soprano2" { \sopranoTwo }
     \new Staff = "alto1" \new Voice = "alto1" { \altoOne }
     \new Staff = "alto2" \new Voice = "alto2" { \altoTwo }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 132 4)
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
  <<
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = "Soprano I"
      } { <<\sopranoOne
           % \pageBreaker 
      >> }
      \addlyrics { \sopranoOneVerse }
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = "Soprano II"
      } { \sopranoTwo }
      \addlyrics { \sopranoTwoVerse }
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = "Alto I"
      } { \altoOne }
      \addlyrics { \altoOneVerse }
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = "Alto II"
      } { \altoTwo }
      \addlyrics { \altoTwoVerse }
    >>
   % \pianoReduction
  >>
  \layout { }
  \midi {
    \tempo 4=132
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano1"
  \score {
    \rehearsalMidi "soprano1" "soprano sax" \sopranoOneVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "soprano2"
  \score {
    \rehearsalMidi "soprano2" "soprano sax" \sopranoTwoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto1"
  \score {
    \rehearsalMidi "alto1" "soprano sax" \altoOneVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto2"
  \score {
    \rehearsalMidi "alto2" "soprano sax" \altoTwoVerse
    \midi { }
  }
}

