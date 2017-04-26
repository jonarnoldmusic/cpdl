\version "2.18.2"

\header {
  title = "Nächtens"
  subtitle = "Op. 112, No. 2"
  composer = \markup {
    \override #'(baseline-skip . 2)
    \right-column {
      "Johannes Brahms"
      "(1833 – 1897)"
    }
  }
  poet = \markup {
    \override #'(baseline-skip . 2)
    \left-column {
      "Franz Kugler"
      "(1808 – 1858)"
    }
  }
  copyright = \markup {\small "Copyright © 2015 by CPDL. This edition can be fully distributed, duplicated, performed, and recorded." }
  tagline = \markup {\rounded-box \center-column { 
    \small \concat { "Source: " \italic "Johannes Brahms: Sämtliche Werke, Band 20:
Mehrstimmige Gesänge mit Klavier oder Orgel"}  
    {\small "Leipzig: Breitkopf & Härtel, 1926-27. Plate J.B. 108."}
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
  \key d \minor
  \numericTimeSignature
  \time 5/4
  \tempo "Unruhig bewegt"
  
}

vocalGlobal = {
  \dynamicUp
  \autoBeamOff
  \phrasingSlurUp
  \slurUp
  \override DynamicTextSpanner.style = #'none
  
}

barLiner = {
  \repeat unfold 20 { s2 \bar "!" s2. } 
  \set Timing.measureLength = #(ly:make-moment 1/2)
  s2 s2 
  \set Timing.measureLength = #(ly:make-moment 3/4)
  s2. s2. \bar "|."
  
}

%centers rests in half-bars rather than having them left-aligned to the starting beat
halfRest = { s4 r2*1/2 }
dottedHalfRest = { s4 r2.*2/3 }
fullBarRest = { \halfRest \dottedHalfRest }

sottoVoce = \markup {\dynamic p \italic "sotto voce"}
dolce = \markup {\italic "dolce"}

soprano = \relative c'' {
  \global
  \vocalGlobal
  \fullBarRest | a4^\sottoVoce\( << {a 
  b2} {s8 s\< s8\> s4.\!} >> cis4\) | a\( << {a f'2} {s8 s\< s8\> s4.\!} >> e4\) |
  %page 2
  a,4\( << {a b2} {s8 s\< s8\! s8\> s4\!} >> cis4\) | 
  a\( << {a 
  d2} {s8 s\< s4\> s4\!} >> cis4\) | \fullBarRest |
  bes8\( d e\< b\) d\! a\> f4.( e8)\! | 
  d4 r r2 
  \shape #'((-0.5 . 2.25) (0 . 1.0) (0 . 0) (0 . 0)) PhrasingSlur
  a'8\p\( a |
  %page 3
  a4. a8\) << {bes8 bes} {s8.\< s16\!} >> bes4\> g\! |
  \override DynamicLineSpanner.staff-padding = #2.5
  e!4. e8 f f\< g g\! bes4\> | a!4\! r 
  \revert DynamicLineSpanner.staff-padding
  \override DynamicLineSpanner.staff-padding = #3
  \dottedHalfRest | c8^\dolce\<\( d\! f\> es\!\) d c d4.( c8) |
  \revert DynamicLineSpanner.staff-padding
  %page 4
  c4 r bes8 g f4.( es8) | d4 r \dottedHalfRest
  r4 a'8\p a b\< b d\! d\> cis cis\! | r4 a8\cresc a 
  d8 d f f e e | es\f c a c c es! cis4 d |
  %page 5
  es8\f g a([ e]) f cis d([ a]) bes([ g)] |
  f\dim g a4~\> a8 gis a4. d8\! |
  << {a2~\(\p a8[ g] f4.} {s4. s8\< s4\> s4.\!} >> e8\) | d2 | R2 | R2. | R2. |
}

alto = \relative c' {
  \global
  \vocalGlobal
  \fullBarRest | \fullBarRest | \fullBarRest |
  %page 2
  d8^\sottoVoce\( e f e16([\< d)] f8 e16([\! d)] << {f4} {s8.\> s16\!} >> e4\) | 
  d8\( e \override DynamicLineSpanner.staff-padding = #3.5
  f e16([\< d)] f8 e16([\! d)] << {a'4} {s16\f s8\> s32 s\!} >> \revert DynamicLineSpanner.staff-padding a,4\) | bes'8\p\( g e g bes\< d << {e\!([ b)]} {s16 s8.\>} >> cis8([\! a)\)] |
  bes!([ a)] gis4\< a8\! f\> d4( cis)\! | d4 r \dottedHalfRest |
  %page 3
  d8\p\( e f e16([ d)] f8\< es16[( d\!]) f4\> es\!\) |
  bes8\( c des c16([ bes)] des!8\< c16([ bes\!)] des4\> c\!\) | \fullBarRest |
  a'8\(\< b\! b\> c\!\) g g f4 e! |
  %page 4
  c8\< d\! f\> es\! << {d c d4.( c8) } {s8.\< s16\! s4\> s4\!} >> | bes4 r \dottedHalfRest |
  d8\p e f e16([ d)] f8\< e16([ d)] << {f4} {s8\! s8\>} >> e4\! | d8\cresc e f e16([ d)]
  f8 e16([ d)] a'4 a, | g'8\f g fis fis g es e([ a]) a[( fis!]) |
  %page 5
  es'8\f d cis4 a8 g f![( es]) d([ es]) |
  d\dim e! f4~\> f8 e f4. e8\! |
  << {f2\p~\( f8[ e] d4} {s4. s8\< s4\> s4\!} >> cis\) | d2 | R2 | R2. | R2. |
}

tenor = \relative c' {
  \global
  \vocalGlobal
  \fullBarRest | a4^\sottoVoce\( << {a 
  b2} {s8 s\< s8\> s4.\!} >> cis4\) | a\( << {a d2} {s8 s\< s8\> s4.\!} >> cis4\) |
  %page 2
  a4^\( << {a b2} {s8 s\< s8\! s8\> s4\!} >> cis4\) | a\( << {a f'2} {s8 s\< s4\> s4\!} >> e4\) | \fullBarRest |
  d8 d b\< b a\! a\> bes4( a8\![ g]) | f4 r r2 
  \shape #'((-0.5 . 2.25) (0 . 1.0) (0 . 0) (0 . 0)) PhrasingSlur
  a8\p\( a |
  %page 3
  a4. a8\) << {bes8\< bes} {s8.\< s16\!} >>  bes4\> g\! |
  e!4. e8 f4 g r | c8^\dolce\( es g es c d f[( es!]) d([ c])\) | c([ f]) d[( c]) bes2 bes4 |
  %page 4
  \override DynamicLineSpanner.staff-padding = #3
  a8\< b\! g\> c\! g bes a2 | f4 r \dottedHalfRest |
  \revert DynamicLineSpanner.staff-padding
  r4 a8\p a d\< d b\! b\> cis cis\! | r4 a8\cresc a
  f' f d d cis cis | c!\f es d d es! g a([ e]) fis([ d])
  %page 5
  g\f d e4 cis8 e d[( c)] bes4 |
  a8\dim g f4~\> f8 d' a4. gis8\! |
  << {a2\p\( bes} {s4. s8\< s4\> s4\!} >> a4\) | a2 | R2 | R2. | R2. |
  
}

bass = \relative c {
  \global
  \vocalGlobal
  \fullBarRest | \fullBarRest | \fullBarRest |
  %page 2
  d8^\sottoVoce\( e f e16([\< d)] f8 e16([\! d)] << {f4} {s8.\> s16\!} >> e4\) | 
  d8\( e \override DynamicLineSpanner.staff-padding = #3.5
  f e16([\< d)] f8 e16([\! d)] << {a'4} {s16\f s8\> s32 s32\!} >> \revert DynamicLineSpanner.staff-padding a,4\) | g'8\p\( e cis e g\< bes << {gis4} {s16\! s8.\>} >> a4\!\) |
  g!8([ f)] e4\< f8\! d\> g4( a)\! | d,4 r \dottedHalfRest |
  %page 3
  d8\p\( e f e16([ d)] f8\< es16[( d\!]) f4\> es\!\) |
  bes8\( c des c16([ bes)] des!8\< c16[( bes\!]) des4\> c\!\) | 
  a'8^\dolce\( c es c 
  a b g[( c]) bes([ e,!])\) | f[( d]) g[( c,]) e!4( f) g |
  %page 4
  \override DynamicLineSpanner.staff-padding = #2
  f8\< d\! c\> c\! e! e f2 | bes,4 r \dottedHalfRest |
  \revert DynamicLineSpanner.staff-padding
  d8\p e f e16[( d)] f8\< e16[( d)] << {f4} {s8\! s8\>} >> e4\! | d8\cresc e f e16[( d)]
  f8 e16[( d)] a'4 a, | c8\f c' d d, c c' a4 d, |
  %page 5
  c'8\f bes a4 a8 a bes4 g |
  a8\dim a, d4~\> d8 e d4. e8\! |
  <<{ d2\p\( g2} {s4. s8\< s4\> s4\!} >> a4\) | d,2 | R2 | R2. | R2. |
}

sopranoVerse = \lyricmode {
  Näch -- tens wa -- chen auf die ir -- ren,
  lü -- gen mächt -- gen Spuk -- ge -- stal -- ten,
  wel -- che dei -- nen Sinn ver -- wir -- ren.
  
  Näch -- tens ist im Blu -- men -- gar -- ten
  Reif ge -- fal -- len, dass ver -- ge -- bens
  du der Blu -- men wür -- dest war -- ten,
  wür -- dest war -- ten.
  
  Näch -- tens ha -- ben Gram und Sor -- gen
  in dein Herz sich ein -- ge -- ni -- stet,
  und auf Trä -- nen blickt der Mor -- gen,
  und auf Trä -- nen, auf Trä -- nen __
  blickt der Mor -- gen,
  blickt der Mor -- _ _ gen.
}

altoVerse = \lyricmode {
  Näch -- tens wa -- chen auf die ir -- ren,
  lü -- gen mächt -- gen Spuk -- ge -- stal -- ten,
  wel -- che dei -- nen Sinn ver -- wir -- ren, __
  dei -- nen Sinn ver -- wir -- ren.
  
  Näch -- tens ist im Blu -- men -- gar -- ten
  Reif ge -- fal -- len, dass ver -- ge -- bens
  du der Blu -- men wür -- dest war -- ten,
  du der Blu -- men wür -- dest war -- ten.
  
  Näch -- tens ha -- ben Gram und Sor -- gen
  in dein Herz sich ein -- ge -- ni -- stet,
  und auf Trä -- nen blickt der Mor -- gen, __ 
  und auf Trä -- nen, auf Trä -- nen __
  blickt der Mor -- gen,
  blickt der Mor -- _ _ gen.
  
}

tenorVerse = \lyricmode {
  Näch -- tens wa -- chen auf die ir -- ren,
  lü -- gen mächt -- gen Spuk -- ge -- stal -- ten,
  wel -- che dei -- nen Sinn ver -- wir -- ren.
  
  Näch -- tens ist im Blu -- men -- gar -- ten
  Reif ge -- fal -- len, dass ver -- ge -- bens
  du der Blu -- men wür -- dest war -- ten,
  du der Blu -- men wür -- dest war -- ten.
  
  Näch -- tens ha -- ben Gram und Sor -- gen
  in dein Herz sich ein -- ge -- ni -- stet,
  und auf Trä -- nen blickt der Mor -- gen, __ 
  und auf Trä -- nen, auf Trä -- nen
  blickt der Mor -- gen,
  blickt der Mor -- _ _ gen.
  
}

bassVerse = \lyricmode {
  Näch -- tens wa -- chen auf die ir -- ren,
  lü -- gen mächt -- gen Spuk -- ge -- stal -- ten,
  wel -- che dei -- nen Sinn ver -- wir -- ren,
  dei -- nen Sinn ver -- wir -- ren.
  
  Näch -- tens ist im Blu -- men -- gar -- ten
  Reif ge -- fal -- len, dass ver -- ge -- bens,
  dass ver -- ge -- bens
  du der Blu -- men wür -- dest war -- ten,
  du der Blu -- men wür -- dest war -- ten.
  
  Näch -- tens ha -- ben Gram und Sor -- gen
  in dein Herz sich ein -- ge -- ni -- stet,
  und auf Trä -- nen blickt der Mor -- gen,
  und auf Trä -- nen, auf Trä -- nen
  blickt der Mor -- gen,
  blickt der Mor -- _ _ gen.
}

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "piano" \new Voice = "piano" { << \barLiner \right \left >> }
     \new Staff = "soprano" \new Voice = "soprano" { \soprano }
     \new Staff = "alto" \new Voice = "alto" { \alto }
     \new Staff = "tenor" \new Voice = "tenor" { \tenor }
     \new Staff = "bass" \new Voice = "bass" { \bass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 69 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

right = \relative c' {
  \global
  
  \halfRest \clef bass << { a2.} \\ {\override DynamicLineSpanner.staff-padding = #3.5 f8^\<( e16 d\! f4^\> e)\!} >> | d32\([ a' d, a' e a e a] f a f a e a d, a' 
  f[ b f b e, b' d, b'] f b f b f b f b e, cis' e, cis' e, cis' e, cis'\) | d,\( a' d a e a e' a, f a f' a, e e' d, d'  f, gis f' gis, e e' d, d'\) a( a' a, a' a, a' a, a') a,( a a, a' a, a' a, a') |
  \pageBreak%page 2
  d,32[\( a' d, a' e a e a] f a f a e a d, a' 
  f[ b f b e, b' d, b'] f b f b f b f b e, cis' e, cis' e, cis' e, cis'\) | d,\( a' d a e a e' a, f a f' a, e e' d, d' gis, f' gis f gis, e' gis d\) a( a' a, a' a, a' a, a' a,) a( a, a' a, a' a, a') |
  \clef treble bes( g' bes g g, e' g e e, cis' e cis g e' g e) bes g' bes g d bes' d bes e, gis e' gis, b, gis' b gis cis,! a' cis a a, cis a' cis, |
  bes! g'! bes! g d a' d a e gis e' gis, b, gis' b gis d a' d a a, f' a f r8 bes,32 d f d r8 a32 cis e cis | \halfRest \clef bass << { a2.} \\ {f8( e16 d f4 e)} >>
  \pageBreak%page 3
  d32([ a' d, a' e a e a] f a f a e a d, a' f bes f bes es, bes' d, bes' f bes f bes f bes f bes es, bes' es, bes' es, bes' es, bes') |
  bes,( e! bes e c e c e des e des e c e bes e) des!( f des f c f bes, f' des g des g des g des g c, bes' c, bes' c, bes' c, bes') | 
  %make slur avoid natural sign
  \shape #'((0 . 0.75) (0 . 1.5) (0 . 0) (0 . 0)) Slur
  c,( a'! c a es c' es c g es' g es es, c' es c)
  c,( a' c a d, b' d b f d' f d es,! c' es c d, bes' d bes c, bes' c bes) | \clef treble c_( a' c a d, b' d b f^[ d' f d es, c' es c]) d,( bes' d bes c, bes' c bes d, bes' d bes bes, d bes' d, bes e! bes' e, e,! bes' e bes) |
  \pageBreak%page 4
  \clef bass \tupletSpan 8 \tupletUp
  \override TupletBracket.bracket-visibility = #'if-no-beam
  \times 2/3 {f16( a c f, b d \omit TupletNumber g, d' f g, c es)} \times 2/3 {g,( bes d g, bes c f, a d f, a d f, a d es, a c)} | << {bes4 a \clef treble f'8( e16 d f4 e) } \\ {d,8[( e! f e16 d]) gis4 a2 } >> |
  \clef bass 
  d,32[( a' d, a' e a e a] f a f a e a d, a') f[( b f b e, b' d, b'] f b f b f b f b e, cis' e, cis' e, cis' e, cis') | d, a' d a e a e' a, f a f' a, e e' d, d' 
  gis, f' gis f gis, e' gis d a( a' a, a' a, a' a, a' a,) a( a, a' a, a' a, a') | \clef treble es' g es' g, c, es c' es, a, fis' a fis c a' c a es! c' es! c g es' g es a, cis a' cis, e, cis' e cis fis,!_[ d' fis d d, fis d' fis,] |
  \pageBreak%page 5
  es c'! es c g d' g d a cis a' cis, e, cis' e cis f,! cis' f cis cis, g' cis g d f d' f, a, es' a es bes d bes' d, g, es'! g es |
  f,^( d' f d g, e'! g e a, f' a f a, f' a f a, f' a f gis, e' gis e a, f' a f a, f' a f a, f' a f gis,! e' gis! e |
  a, f' a f a, f' a f) r8 a,32 f' a f r8 bes,32 e g e r8 bes32 d f d r8 a32 cis e cis |  R2 \clef bass << {a2 | <bes, bes'>2. | <a a'>\fermata} \\
                                                                                                         {d8[( e f e16 d]) | 
                                                                                                          \shape #'((0 . 1.5) (0 . 1.5) (0 . 1.5) (0 . 1.0)) Slur
                                                                                                          f4( e2) | 
                                                                                                          \shape #'((0 . 0.5) (0 . 0.75) (0 . 1.0) (0 . 0)) Slur
                                                                                                          g4( fis2)\fermata } >>
}

pianoDynamics = {
  \override DynamicTextSpanner.style = #'none
  s2 s2. | s2-\markup {\dynamic p \italic "mezza voce"} 
  s4\< s2\> | s4\! s4\< s4 s2\f\>  |
  %page 2
  s2\p s8.\< s16\! s4\> s8. s16\! | s4 s2\< s4\f\> s8.. s32\! | s2\p s4\< s16 s\! s s\> s4 |
  s8\! s8\< s4 s2\> s8. s16\! | s2\p s8.\< s16\! s4\> s\! |
  %page 3
  s2\p s8.\< s16\! s4\> s8.. s32\! | s2\pp s8..\< s32\! s2\> | s2\!-\markup {\dynamic p \italic "sempre"}
  s2. | s2\p s2. |
  %page 4
  s2 s2. | s4.\< s16 s\! s2\sf\> s4\! |
  s2\p s8.\< s16\! s2\> | s2\cresc
  s8.\< s16\! s16\f s8.\> s8. s16\! | s2\! s8.\< s16\! s16 s8.\> s8. s16\! |
  %page 5
  s4\< s4\f s2. |
  s2\fp s2.\> |
  s4\p s\> s2. | s4\! s\p | s2\< | s4\> s2\! | s2.
  
  
}

left = \relative c {
  \global
  << { a2~^\p a2.} \\ {d,8([ e f e16 d~] d4 a2)} >> | <d a'>2 
  <aes aes'>4 <g g'>2 | <f f'>4 d' <bes! bes'!> <a a'> a |
  %page 2
  <d a'>2 <aes aes'>4 <g g'>2 | <f f'>4 d' 
  <bes! bes'!> <a a'> a | g8[ g' a a,] g[ g' e e, a a'] |
  g([ f e e')] f,[ f, g g' a a,] | << { \voiceOne a'2~ a2.~} \new Voice {\voiceTwo d,8([ e f e16 d~)] d4( a2)} >> \oneVoice
  %page 3
  <d a'>2 <aes aes'>4( <g g'>2) |
  <ges ges'>2 <f f'>4( <e! e'!>2) | f'8[ f, es es'] 
  f( d c4 e) | f8( d <c c'>4) e!( f g) |
  %page 4
  f8( d c4) e!( f f,) | <bes bes'>2 << {d'2 a4} \\ {bes4( a) a,} >> |
  <d a'>2 <aes aes'>4( <g g'>2) | <f f'>4 d' 
  <bes! bes'!> <a a'> a | c8[ c' d d,] c[ c' a a, d d'] |
  %page 5
  <c, c'>8 <bes bes'> <a a'>4 a8[ a' bes, bes' g, g'] |
  <a, a'>4.^( d8-.) <a a'>4.^( d8-.) <a a'>4~ |
  q( <d, d'>) <g g'>2 <a a'>4 | r4 << {a'4~ | a2} \\ {d,8([ e] | f4 d)} >> | <g, g'>2. | <d d'>2. |
}

choirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Soprano"
  } { << \soprano \barLiner >> }
  \addlyrics { \sopranoVerse }
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Alto"
  } { \alto }
  \addlyrics { \altoVerse }
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Tenor"
  } { \clef "treble_8" \tenor }
  \addlyrics { \tenorVerse }
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Bass"
  } { \clef bass \bass }
  \addlyrics { \bassVerse }
>>

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
    \consists "Metronome_mark_engraver" %show tempo marks here too
  } \right
  \new Dynamics \pianoDynamics
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \left }
>>

\score {
  <<
    \choirPart
    \pianoPart
  >>
  \layout { }
  \midi {
    \tempo 4=69
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \rehearsalMidi "soprano" "soprano sax" \sopranoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \rehearsalMidi "alto" "soprano sax" \altoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "tenor sax" \tenorVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "tenor sax" \bassVerse
    \midi { }
  }
}

