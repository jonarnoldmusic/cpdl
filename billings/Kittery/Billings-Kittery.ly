\version "2.18.2"

\header {
  title = "Kittery"
  composer = \markup {
    \override #'(baseline-skip . 2)
    \right-column {
      "William Billings"
      "(1746 – 1800)"
    }
  }
  poet = \markup {
    \override #'(baseline-skip . 2)
    \left-column {
      "Nicholas Brady and Nahum Tate"
      \concat {\italic "A Supplement to the New Version of Psalms" ", 1700"}
    }
  }
  copyright = \markup {\small "Copyright © 2016 by CPDL. This edition can be fully distributed, duplicated, performed, and recorded."}
  tagline = \markup { \override #'(baseline-skip . 2) \rounded-box \center-column {
    { \small \concat { "Source: " \italic "The Suffolk Harmony, Consisting of Psalm Tunes, Fugues, and Anthems"} }
      {\small "Boston: J. Norman, 1786."}
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
  \key a \minor
  \time 2/2
  \phrasingSlurDashed
  \phrasingSlurUp
}

soprano = \relative c'' {
  \global
  r2 a | c4 b a gis | a a g!8( a) b4 | c8\( d\) e4 d8( c) b4 | a2 r | 
  \repeat volta 2 {R1 |
                   r2 r4 e | a a b b | c e e e | e e e e | a, a b b | c c b b |
                   e e d8\( d\) d4 | e4 e e d | c b a a | a a e' e | e8.( d16) c4 d8.( c16) b4 | }
  \alternative {
    {\set Score.repeatCommands = #'((volta "1, 3")) a2 r}
    {
      \set Score.repeatCommands = #'((volta "2, 4"))
      a1 
      \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
      \override Score.RehearsalMark #'self-alignment-X = #RIGHT
      \mark "D.C. al fine" 
      \bar "||"}
  }
  \pageBreak
  r2^\markup { \musicglyph #"scripts.segno" } a | c4 b a gis | a a g!8( a) b4 | c8( d) e4 d8( c) b4 | a2 r | 
  \repeat volta 2 {R1 |
                   r2 r4 e | a a b b | c e e e | e e e e | a, a b b | c c b b |
                   e e d4 d | e4 e e d | c b a a | a a e' e | e8.( d16) c4 d8.( c16) b4 | }
  \alternative {
    {\set Score.repeatCommands = #'((volta "1, 3")) a2 r}
    {
      \set Score.repeatCommands = #'((volta "2, 4"))
      a1  
      \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
      \override Score.RehearsalMark #'self-alignment-X = #RIGHT
      \mark "D.S. al fine"
      \bar "|."}
  }
}

alto = \relative c' {
  \global
  r2 e | e4 e e e | e e e e | e e8\( e\) f4 e | e2 r |
  \repeat volta 2 { R1*3 |
                    r2 e | g4 g g g8.( f16) | e4 e8.( f16) g4 g | g g g g |
                    g1~ | g2. g4 | a g8.( f16) e4 e | f f e8.( f16) g8.( f16) | e4 f f e | }
  \alternative {
    {e2 r }
    {e1 \bar "||"}
  }
  \pageBreak
  r2 e | e4 e e e | e e e e | e e4 f4 e | e2 r |
  \repeat volta 2 { R1*3 |
                    r2 e | g4 g g g8.( f16) | e4 e8.( f16) g4 g | g g g g |
                    g1~ | g2. g4 | a g8.( f16) e4 e | f f e8.( f16) g8.( f16) | e4 f f e | }
  \alternative {
    {e2 r }
    {e1 \bar "|."}
  }
  
}

tenor = \relative c' {
  \global
  r2 a | a4 gis a b | c c b b | a8\( b\) c4 b8( a) gis4 | a2 r | 
  \repeat volta 2 { r2 r4 e |
                    a4 a b b | c e d d | c c b a8( c) | b2. c4 | e c d b | c b8( a) g4 e |
                    a8\( b\) c4 d8( c) b4 | c2. d4 | e8.( f16) e8.( d16) c4 c | d8.( e16) d8( c) b4 b | c a b gis | }
  \alternative {
    { a2 r }
    {a1 \bar "||"}
  }
  \pageBreak
  r2 a | a4 gis a b | c c b b | a8( b) c4 b8( a) gis4 | a2 r | 
  \repeat volta 2 { r2 r4 e |
                    a4 a b b | c e d d | c c b a8( c) | b2. c4 | e c d b | c b8( a) g4 e |
                    a8( b) c4 d8( c) b4 | c2. d4 | e8.( f16) e8.( d16) c4 c | d8.( e16) d8( c) b4 b | c a b gis | }
  \alternative {
    { a2 r }
    {a1 \bar "|."}
  }
  
}

bass = \relative c {
  \global
  r2 a | a4 e' a e | a a e e8.( d16) | c8\( c\) c4 d4 e | a,2 a | 
  \repeat volta 2 { e'4 e e e |
                    a,4 a e' e8.( d16) | c4 c b b | a2 e' | e e | a g | e4 e e e8.( d16)
                    c8\( d\) e( f) g4 g, | c2. b4 | a4 e' a a | d,4 d e e8.( d16) | c4 f d e |}
  \alternative {
    {a,2 a }
    {a1 \bar "||"}
  }
  \pageBreak
  r2 a | a4 e' a e | a a e e8.( d16) | c4 c d e | a,2 a | 
  \repeat volta 2 { e'4 e e e |
                    a,4 a e' e8.( d16) | c4 c b b | a2 e' | e e | a g | e4 e e e8.( d16)
                    c8( d) e( f) g4 g, | c2. b4 | a4 e' a a | d,4 d e e8.( d16) | c4 f d e |}
  \alternative {
    {a,2 a }
    {a1 \bar "|."}
  }
  
}

sopranoVerseOne = \lyricmode {
  \set stanza = "1."
  Our Fa -- ther who in heav -- en art,
  All hal -- low -- ed be thy name;
  Thy king -- dom come; thy will be done,
  Through -- out this earth -- ly frame.

  Our Fa -- ther who in heav -- en art,
  All hal -- low -- ed be thy name;
  Thy king -- dom come; thy will be done,
  Through -- out this earth -- ly frame. frame.

  \set stanza = "3."
  As we for -- give our en -- e -- mies,
  Thy par -- don, Lord, we crave;
  In -- to temp -- ta -- tion lead us not,
  But us from e -- vil save.
  
  As we for -- give our en -- e -- mies,
  Thy par -- don, Lord, we crave;
  In -- to temp -- ta -- tion lead us not,
  But us from e -- vil save. save.
}

altoVerseOne = \lyricmode {
  \set stanza = "1."
  Our Fa -- ther who in heav -- en art,
  All hal -- low -- ed be thy name;
  Thy king -- dom come; thy will be done,
  Through -- out this earth -- ly frame. __

  Thy king -- dom come; thy will be done,
  Through -- out this earth -- ly frame. frame.
  
  \set stanza = "3."
  As we for -- give our en -- e -- mies,
  Thy par -- don, Lord, we crave;
  In -- to temp -- ta -- tion lead us not,
  But us from e -- vil save.
  
  
  In -- to temp -- ta -- tion lead us not,
  But us from e -- vil save. save.
  
}

tenorVerseOne = \lyricmode {
  \set stanza = "1."
  Our Fa -- ther who in heav -- en art,
  All hal -- low -- ed be thy name;
  Thy king -- dom come; thy will be done,
  Through -- out this earth -- ly frame.

  Our Fa -- ther who in heav -- en art,
  All hal -- low -- ed be thy name;
  Thy king -- dom come; thy will be done,
  Through -- out this earth -- ly frame. frame.
  
  \set stanza = "3."
  As we for -- give our en -- e -- mies,
  Thy par -- don, Lord, we crave;
  In -- to temp -- ta -- tion lead us not,
  But us from e -- vil save.
  
  As we for -- give our en -- e -- mies,
  Thy par -- don, Lord, we crave;
  In -- to temp -- ta -- tion lead us not,
  But us from e -- vil save. save.
}

bassVerseOne = \lyricmode {
  \set stanza = "1."
  Our Fa -- ther who in heav -- en art,
  All hal -- low -- ed be thy name;
  Thy king -- dom come; thy will be done,
  Through -- out this earth -- ly frame.

  Our Fa -- ther who in heav -- en art,
  All hal -- low -- ed be thy name;
  Thy king -- dom come; thy will be done,
  Through -- out this earth -- ly frame. Thy frame.
 
  \set stanza = "3."
  As we for -- give our en -- e -- mies,
  Thy par -- don, Lord, we crave;
  In -- to temp -- ta -- tion lead us not,
  But us from e -- vil save.
  
  As we for -- give our en -- e -- mies,
  Thy par -- don, Lord, we crave;
  In -- to temp -- ta -- tion lead us not,
  But us from e -- vil save. In- save.
 
}

sopranoVerseTwo = \lyricmode {
  \set stanza = "2."
  As cheer -- ful -- ly as 'tis by those
  Who dwell _ __ with thee on high;
  Lord, let thy boun -- ty day by day
  Our dai -- ly food sup -- ply.

  As cheer -- ful -- ly as 'tis by those
  Who dwell _ __  with thee on high;
  Lord, let thy boun -- ty day by day
  Our dai -- ly food sup -- ply. ply.

  \set stanza = "4."
  For king -- dom, pow'r and glo -- ry, all
  Be -- long, O Lord, to thee;
  Thine from e -- ter -- ni -- ty they were,
  And thine shall ev -- er be.

  For king -- dom, pow'r and glo -- ry, all
  Be -- long, O Lord, to thee;
  Thine from e -- ter -- ni -- ty they were,
  And thine shall ev -- er be. be.

}

altoVerseTwo = \lyricmode {
  \set stanza = "2."
  As cheer -- ful -- ly as 'tis by those
  Who dwell with _ __ thee on high;
  Lord, let thy boun -- ty day by day
  Our dai -- ly food sup -- ply.

  Lord, let thy boun -- ty day by day
  Our dai -- ly food sup -- ply. ply.
  
  \set stanza = "4."
  For king -- dom, pow'r and glo -- ry, all
  Be -- long, O Lord, to thee;
  Thine from e -- ter -- ni -- ty they were,
  And thine shall ev -- er be.

  For king -- dom, pow'r and glo -- ry, all
  Be -- long, O Lord, to thee;
  Thine from e -- ter -- ni -- ty they were,
  And thine shall ev -- er be. be.
  
}

tenorVerseTwo = \lyricmode {
  \set stanza = "2."
  As cheer -- ful -- ly as 'tis by those
  Who dwell _ __ with thee on high;
  Lord, let thy boun -- ty day by day
  Our dai -- ly food sup -- ply.

  As cheer -- ful -- ly as 'tis by those
  Who dwell _ __  with thee on high;
  Lord, let thy boun -- ty day by day
  Our dai -- ly food sup -- ply. ply.
  
  \set stanza = "4."
  For king -- dom, pow'r and glo -- ry, all
  Be -- long, O Lord, to thee;
  Thine from e -- ter -- ni -- ty they were,
  And thine shall ev -- er be.

  For king -- dom, pow'r and glo -- ry, all
  Be -- long, O Lord, to thee;
  Thine from e -- ter -- ni -- ty they were,
  And thine shall ev -- er be. be.
  
}

bassVerseTwo = \lyricmode {
  \set stanza = "2."
  As cheer -- ful -- ly as 'tis by those
  Who dwell _ __ with thee on high;
  Lord, let thy boun -- ty day by day
  Our dai -- ly food sup -- ply.

  As cheer -- ful -- ly as 'tis by those
  Who dwell _ __  with thee on high;
  Lord, let thy boun -- ty day by day
  Our dai -- ly food sup -- ply. Lord, ply.
  
  \set stanza = "4."
  For king -- dom, pow'r and glo -- ry, all
  Be -- long, O Lord, to thee;
  Thine from e -- ter -- ni -- ty they were,
  And thine shall ev -- er be.

  For king -- dom, pow'r and glo -- ry, all
  Be -- long, O Lord, to thee;
  Thine from e -- ter -- ni -- ty they were,
  And thine shall ev -- er be. Thine be.
  
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
      \soprano \\
      \alto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \tenor \\
      \bass
    >>
  }
>>

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \repeat volta 2 {\soprano} }
     \new Staff = "alto" \new Voice = "alto" { \repeat volta 2 {\alto} }
     \new Staff = "tenor" \new Voice = "tenor" { \repeat volta 2 {\tenor} }
     \new Staff = "bass" \new Voice = "bass" { \repeat volta 2 {\bass} }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 72 2)
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
        instrumentName = "Soprano"
      } { \soprano }
      \addlyrics { \sopranoVerseOne }
      \addlyrics { \sopranoVerseTwo }
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = "Alto"
      } { \alto }
      \addlyrics { \altoVerseOne }
      \addlyrics { \altoVerseTwo }
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = "Tenor"
      } { \clef "treble_8" \tenor }
      \addlyrics { \tenorVerseOne }
      \addlyrics { \tenorVerseTwo }
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = "Bass"
      } { \clef bass \bass }
      \addlyrics { \bassVerseOne }
      \addlyrics { \bassVerseTwo }
    >>
    \pianoReduction
  >>
  \layout { }
  
}
\score {
  %account for DC and DS in MIDI
  \unfoldRepeats \repeat volta 2 {<< \soprano \alto \tenor \bass >>}
  \midi {
    \tempo 2=72
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \rehearsalMidi "soprano" "soprano sax" \sopranoVerseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \rehearsalMidi "alto" "soprano sax" \altoVerseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "tenor sax" \tenorVerseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "tenor sax" \bassVerseOne
    \midi { }
  }
}

