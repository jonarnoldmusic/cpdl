\version "2.18.0"

\header {
  title = "Opferlied"
  composer = \markup {
    \override #'(baseline-skip . 2)
    \right-column {
      "Ludwig van Beethoven"
      "(1770  – 1827)"
    } 
  }
  poet = \markup {
    \override #'(baseline-skip . 2)
    \left-column {
      "Friedrich von Matthisson"
      "(1761  –  1831)"
    }
  }
  opus = "Opus 121b"
  copyright = \markup {\small "Copyright © 2016 by CPDL. This edition can be fully distributed, duplicated, performed, and recorded." }
  tagline = \markup {\rounded-box \center-column { 
    \small \concat { "Source: " \italic "Ludwig van Beethovens Werke, Serie 22: Gesänge mit Orchester, Nr.212 "}  
    {\small "Leipzig: Breitkopf und Härtel, 1862-90. Plate B.212."}
    {\small #(string-append "Engraved by Jon Arnold using Lilypond v. " (lilypond-version))} 
                     }
  }
}

\paper {
  #(set-paper-size "letter")
}
#(set-global-staff-size 19)

global = {
  \key e \major
  \time 4/4
  \partial 8
  \tempo "Mit innigem andächtigem Gefühl, in ziemlich langsamer Bewegung."
}


choralIntroRests = {r8 | R1*20 | r2 r4}
firstInterludeRests = {R1*20 | r2 r4}


sopranoVoice = \relative c'' {
  \global
  \dynamicUp
  %source page one
  r8 | r1 | r2 r4 r8 b8 | b4 gis e b8 r | e( gis) fis( b) a( gis) r gis | a4 gis fis e |
  a( gis8) b16( gis) gis8( fis) r8 gis | fis r fis r fis( b4) a8 | a r gis r r4 gis~ |
  gis8( e') dis( cis) b4 cis8( ais) | %measure 10 follows
  ais( cis b4~ b8 bis cis ais~ | ais cis) b4 r4 a8( b) |
  b4. b8 a4 gis | gis b8^>( a) fis4 fis8( cis') | cis4. cis8 b4 a |
  a( gis2) r8 gis | gis4. gis8 a4 b8( cis16) r | cis4 cis8( dis) e4. e8 |
  %source page two
  e2 cis4 r | r e e2~ | e4 dis8( cis) b( gis) a( fis) | fis4( e) e8 r8 r4 |
  %choral echo
  R1*15 | r2 r4 r8
  %source page three
  b'8 | b4 gis e b8 r | e( gis) fis( b) a( gis) r gis | a4 gis fis e |
  a( gis8) b16( gis) gis8( fis) r8 gis^\markup {\italic "Mit verstärkter Stimme."} | fis r fis r b8 r b( a) | a8( gis16) r16 gis4 r4 e'8 r |
  e,4( fis8 gis fis2~ | fis8) fis b4~ b8( bis) cis( ais) | ais( cis) b4 r a8( b) |
  b4. b8 a4 gis | gis b8( a) fis4 fis8( cis') | cis4. cis8 b4 a |
  a( gis2) r8 gis |
  %source page four
  gis4. gis8 a4 b8( cis16) r | cis4 cis8( dis) e4. e8 | e2 cis4 r |
  r e4 e2~ | e4 dis8( cis) b( gis) a( fis) | fis4( e) e r |
  %final choral echo to end
  R1*17 | r2 r4 r8\fermata

}

verseSopranoVoice = \lyricmode {
  Die Flam- me lo- dert! mil- der Schein
  durch- glänzt den dü- stern Ei- chen- hain,
  und Weih- rauch- düf- te wal- len, Weih -- rauch- düf- te wal -- len.

  O neig' ein gnä- dig Ohr zu mir, ein gnä- dig Ohr zu mir, __
  und lass des Jüng- lings Op- fer Dir
  Du Höch- ster! Du Höch -- ster wohl ge- fal- len!

  Sei stets der Frei- heit Wehr und Schild!
  Dein Le- bens- geist durch- a- thme mild
  Luft, Er- de, Feu'r und Flu- then,
  Luft, Er -- de, Feu'r und Flu- then!

  Gib mir als Jüng- ling und als Greis,
  als Jüng- ling und als Greis, __
  den vä- ter- li- chen Heerd, o Zeus!
  Das Schö -- ne, das Schö -- ne  zu dem Gu- ten.
  
}

soprano = \relative c'' {
  \global
  \dynamicUp
  \choralIntroRests
  a8( b) | b4. b8 a4 gis | gis b8( a) fis4 fis8( cis') | cis4. cis8 b4 a | a4( gis2) r8 gis |
  gis4. gis8 a4 b8( cis16) r | cis4 cis8( dis) e4. e8 | e2\f cis4 r | r e e2~\> |
  e4\p dis8( cis) b( gis) a( fis) | fis4( e4) e8 r8 r4 |
  %source page 3
  r4 e'2\p e4 | e4. e8 e4 fis8( dis) | dis4\dim( e) e e | e\pp e r2 
  \firstInterludeRests
  %source page 4
  a,8( b) | b4. b8 a4 gis | gis b8( a) fis4 fis8( cis') | cis4. cis8 b4 a | a4( gis2) r8 gis |
  gis4. gis8 a4 b8( cis16) r | cis4 cis8( dis) e4. e8 |
  %source page 5
  e2\f\> cis4\p r | r e\f e2~\> |
  e4\p dis8( cis) b( gis) a( fis) | fis4( e4) e8 r8 r8 fis | fis4( e) r cis'8 a |
  a4( gis)~ gis8( e') fis( dis) | dis( e fis e) e( d) cis a | a4 gis r cis8 a |
  a4\<( gis2 fis4)~ | fis(\> gis)\! gis8 r8 r4 | R1 | r2 r4 r8\fermata
}

alto = \relative c'' {
  \global
  \dynamicUp
  \choralIntroRests
  a8( fis) | e4. e8 dis4 e | e gis8( fis) dis4 dis8( a') | a4. a8 gis4 fis | fis( e2) r8 e |
  e4. e8 e4 e | e a8( fis) b4( cis8) cis | cis2\f a4 r | r cis cis2~\> | 
  cis4\p b8( a) gis( e) fis( dis) | dis4( e) e8 r8 r4 |
  %source page 3
  r4 e2\p e4 | e4. gis8 gis4 a8( fis) | fis4\dim( e) e4. e8 | e4\pp e r2 |
  \firstInterludeRests
  %source page 4
  a8( fis) | e4. e8 dis4 e | e gis8( fis) dis4 dis8( a') | a4. a8 gis4 fis | fis( e2) r8 e |
  e4. e8 e4 e | e a8( fis) b4( cis8) e, |
  %source page 5
  e2\f\> e4\p r | r e\f e2~\> |
  e4.\p e8 e4 dis8( fis) | b,2 b8 r8 r8 dis | dis4( e) r e8 e |
  e2~ e8( b') b4 | b2 b8( e,) e e | e4 e r4 e8 e |
  e2.\<( dis4)~ | dis(\> e)\! e8 r8 r4 | R1 | r2 r4 r8\fermata

}

tenor = \relative c' {
  \global
  \dynamicUp
  \choralIntroRests
  fis8( dis) | b4. b8 b4 b | b cis b b | b4. b8 b4 b |
  b2. r8 b | cis4. cis8 cis4 b8( a16) r | cis4 cis8( b) b4( a8) e' | e2\f e4 r4 | 
  r4 e e2~\> | e4.\p e8 e( b) b( a) | a4( gis) gis8 r8 r4 |
  %source page 3
  r4 e2\p e4 | e4. b'8 b4 b | b2\dim gis4. gis8 | e4\pp e r2 |
  \firstInterludeRests
  %source page 4
  fis'8( dis) | b4. b8 b4 b | b cis cis8( b) b4 | b4. b8 b4 b |
  b2. r8 b | cis4. cis8 cis4 b8( a16) r | a4 cis8( b) b4( a8) cis |
  %source page 5
  cis4(\f\> a4) a\p r | r e'\f e2~\> |
  e8\p( cis) b( a) gis( b) b( a) | a4( gis4) gis8 r8 r8 a | a4( gis) r a8 cis8 |
  cis4( b)~ b b8( a) | a( gis~) gis4 gis8( b) a cis  | cis4 b r a8 cis8 |
  cis4\<( b2 a4)~ | a(\> gis)\! gis8 r8 r4 | R1 | r2 r4 r8\fermata
}

bass = \relative c' {
  \global
  \dynamicUp
  \choralIntroRests
  b8( a) | gis4. gis8 fis4 e | e a, b b | b4. b8 b4 cis8( dis) |  e2( dis4) r8 dis |
  cis4. cis'8 cis4 gis8( a) | a4 fis8( b) gis4( a8) a | a2\f a4 r | 
  r4 a a2~\> |  a4.\p a8 b4 b, | b4( e) e8 r r4 |
  %source page 3
  r4 e2\p e4 | e4. b8 b4 b | b2\dim gis4. gis'8 | e4\pp e r2
  \firstInterludeRests
  %source page 4
  b'8( a) | gis4. gis8 fis4 e | e a, b b | b4. b8 b4 cis8( dis) |  e2( dis4) r8 dis |
  cis4. cis'8 cis4 gis8( a) | a4 fis8( b) gis4( a8) a
  %source page 5
  a2\f\> a4\p r4 | r4 a\f a2~\> | a4.\p a8 b4 b, | b( e) e8 r r b |
  b4( e) r e8 e | e2~ e8( gis) a( fis) | fis8( e)~ e4 e e8 e |
  e4 e r e8 e | <<{e1~ | e2} {s1\< | s4\> s4\! } >> e8 r8 r4 | R1 | r2 r4 r8\fermata
}

verseChoir = \lyricmode {

  O neig' ein gnä- dig Ohr zu mir,
  ein gnä- dig Ohr zu mir, __
  und lass des Jüng- lings Op- fer Dir
  Du Höch- ster, Du Höch -- ster wohl ge- fal- len,
  lass des Jüng- lings Op- fer Dir wohl ge- fal- len!

  Gib mir als Jüng- ling und als Greis,
  als Jüng- ling und als Greis, __
  am vä- ter- li- chen Heerd, o Zeus!
  Das Schö- ne, das Schö -- ne  zu dem Gu- ten.

  Gieb mir o gieb mir das Schö- ne zu dem Gu- ten,
  zu dem Gu -- ten.
  
}

right = \relative c'' {
  \global
  %source page 1
  b8~ | b4 gis e b8 b | <e b> <gis b,> <fis b,> <b dis> <a fis>( <gis e>) q b8 | b8 r8 gis r e r b b |
  <e>8 <e gis> <dis fis> r r <e gis>-.( q-. q-.) | <e a>8 r <e gis> r fis fis' e e, | 
  << {a r gis gis r fis( gis b16 gis) | gis fis8. fis8 fis } \\
     { e8 dis e e r dis e e | dis dis dis e } >> fis8 r <b b,> r | <fis a>8 q <e gis> gis' <e gis>8 q q q | 
  <e gis>( <e gis,> <dis fis,> <cis e,>) <b dis,> r <ais cis> r | %measure 10
  q r b <b dis,> << { b( bis cis ais) | ais8( <fis ais cis> <b fis> <e e,> fis gis a! b) | } \\
                    { dis,, dis e cis | s2 dis'8 e4 dis8 | } >>
  <b b'>8 <b e,> r <b e,> <a! dis,> r <e gis> r | q r <cis fis a> r <dis fis>8 <dis cis'>4 q8 |
  q8 r <dis a' cis> r <e gis b> r <b fis' a> r | <fis' a> r <e gis> q~ q-.( q-. q-. q-.) | 
  q r q r <e a> r <d b'> <cis cis'> |
  << { <cis cis'> cis'4 dis8 e e e e } \\ { s8 cis, a' a e b' e, cis' } >>
  %source page 2 
  <cis e>4 r <a cis> <cis a'> | q2 <cis e>4 q8 r8 | q r r <a cis> << { <gis b> r8 <dis a'> r } \\
                                                                     { e8 e fis a,} >> %a crosses staff- neccessary?
  <dis fis> r <b e> r q <e gis> <dis fis a> <dis fis b> | %chorus in
  <b e b'>4. q8 <b dis a'>4 <b e gis>4 |  <e gis> <gis b>8 <fis a> <dis fis> <dis a' cis>4 q8 |
  q4. q8 <e gis b>4 <b fis' a> | q4 <b e gis>8 q~ q q-.( q-. q-.) | <cis e gis>4. <e gis>8 <e a>4 <e b'>8 <e cis> |
  << {cis'4 cis8 dis e4. e8 } \\ {e,8 a a fis <e b'>8 q <e cis'> q } >> | <e cis' e>2 <e a cis>4 <cis' a'>4 |
  q2 <cis e>4 q | q( <b dis>8 <a cis>) <gis b> gis <fis a> <dis fis> | q4 <b e>4 q8 <e gis>[ <fis a> <fis b,>] |
  %source page 3
  q4 <e b gis>4 q8 <gis b> <a cis> <fis a> | q4 <e gis> q8 <gis e'> <a fis'> <fis dis'> | q4( <gis e'>) r4 <b e> |
  <gis e'>4 q8 <e gis> q <fis a> <fis b,> b |
  s1 | <e, b>8( <gis b,> <dis fis> <dis b'>) <fis a>( <e gis>) q b'~ |
  b8 r gis r e r b b | 
  << { e8 gis fis r s4 <e gis>8 q | a r gis r fis r e r |
       a r gis gis r fis( gis b16 gis) | } \\
     { b,8. e16 dis8. fis16 b,8. gis'16 s4 | a,8. e'16 b8. e16 b8. dis16 b8. e16 | 
       b8. dis16 b8. e16 r8 dis e e | } >>
  <e gis>16 <dis fis> <dis fis>8 q <e fis> <b fis'> r b' r | 
  <fis a> <e gis> q <e' gis> <e gis> q q q | <e gis>( <e gis,> <dis fis,> <cis e,>) <b dis,>( r8 cis ais) |
  ais cis << {\voiceOne b8 b~ <dis, b'> <dis bis'> <e cis'> <cis ais'>  } \new Voice {\voiceTwo fis dis~ \hideNotes dis s4.} >> \oneVoice  |
  <cis ais'>8 <ais' cis> <fis b> <e e'> << {fis' gis a b} \\ {dis,8 e4 dis8 } >> |
  <e b'>8 <e, b'> r q <dis a'> r <e gis> r | q r <cis fis a> r <dis fis> <dis cis'>4 q8 |
  q r <dis a' cis> r << { <gis b> r a r | a r gis gis } \\ { dis e b8. fis'16 | b,8. fis'16 b,8. e16 } >> <e gis>8 q q q | 
  %source page 4
  << { gis8 r gis r a r <e b'> <e cis'> | cis'8 cis4 dis8 e8 e e e | } \\
     { cis,8. e16 fis8. e16 cis8. e16 s4 | e8 e a a e b' e, cis' | } >>
  <cis e>4 r <a cis> <b gis'>8( <cis a'>) | 
  << { a'8( e cis d) e( fis <gis b,> <a cis,>) } \\
     { cis,4 a8 b cis d s4 } >>
  <cis a'>8 e dis <cis e,> <b e,> <gis e> <dis a'> fis | <dis fis> r8 <e b> gis, <e' b> <e gis>( <dis fis a> <dis fis b>) |
  << { b'4. b8 a4 gis | gis b8 a fis4 fis8 cis' | cis4. cis8 b4 a | 
       a4 gis8 gis~ gis gis gis gis | gis4 gis a b8 cis |
       cis4 cis8 dis e e e e | } \\
     { b,8. e16 b8 fis'16 e b8. fis'16 b,8. gis'16 | b,8. gis'16 cis,8 gis'16 fis dis8. fis16 dis8. a'16 |
       dis,8. a'16 r8 a16 fis b,8. gis'16 b,8. fis'16 | b,8. fis'16 b,8. gis'16 b,8. gis'16 b,8. gis'16 |
       cis,8. gis'16 e4 e e | e a8 fis b gis cis cis | }
  >>
  %source page 5
  <cis e>8( <b d> <a cis> <b d> <cis e> <d fis> <b gis'> <cis a'>) |
  q( <cis e> <a cis> <b d> <cis e> <d fis> <b gis'> <cis a'>) |
  q( <cis e> <b dis> <a cis>) <gis b> <e gis> <fis a> <dis fis> |
  << {fis4 e e8( <e gis> <fis a> <fis b,>) } \\ {dis4 b b8 s4. } >> |
  <fis' b,>4( <e gis,>) q8 <gis b> <a cis> <fis a> | <fis a>4( <e gis>) q8 <b' e>( <b fis'> <b dis>) |
  << {dis8( e fis e) e d cis a | <a cis,>4( <gis b,>8 e') e( d) cis-.( a-.) | } \\ 
     {b2~ b8 b a e | s2. a8 <e cis> | } >> 
  <cis e a>4 <b e gis>2 <a dis fis>4~ | q <b e gis> << {q8 gis' a cis} \\ {s8 e,4 e8 } >> |
  r8 \clef bass cis( b <e, fis'>) \clef treble << { r8 e''( dis fis) } \\ { e,4 a} >> |
  << { a8 fis gis gis <e gis> <e a> <e gis>\fermata } \\
     {s8 <dis b> <b e> q b cis b} >>
  \bar "|."
  
}

Dynamics_pf = {
  %source page 1
  s8\p | s1*4 | 
  s1\cresc | s1\p | s2\cresc s2\p |
  s2 s2\cresc | s2 s2\! | s4 s8 s8\cresc s2 |
  s1 | s1\p | s2 s2\cresc | s1\p |
  s4 s8 s16\cresc s16 s2 | s1*2 | 
  %source page 2
  s1\f | s2 s8 s8\p s4 | s1 |
  s2 s8 s8\mf s4 | s1*3 |
  s4 s16\cresc s16 s8 s2 | s1*2 | s1\f |
  s2 s4 s4\> | s1\p | s1 |
  %source page 3
  s1 | s2 s2\cresc | s2 s8 s8\p s4 |
  s4\pp\< s4 s8 s8\> s8 s8\p |
  s1*6 | s1\cresc | s2 s2\mf | s1 |
  s4 s8 s16\cresc s16 s2 | s1 |
  s1\p | s1*2 | s2 s2\cresc |
  %source page 4
  s1*2 | s2\f s2\p | s2\f s4\> s4\p | s1 |
  s2 s8 s8\mf s4 | s1*3 |
  s2. s4\cresc | s1*2 |
  %source page 5
  s2\f s2\p | s2\f s2\> s1\p | s1*5 |
  s1\< | s4\> s2.\! |
  s1\< | s8\> s8 s8 s8\p s4\dim s8\pp
}

left = \relative c' {
  \global
  %source page 1
  <b b,>8~ | q4 <gis gis,> <e e,> <b b,>8 <a' a,> | <gis gis,> <e e,> <dis dis,> <b b,> q <e e,> q <b' b,> |
  q r8 <gis gis,> r <e e,> r8 << { s8 \crossStaff { fis8}} \\ { b,8 a} >>
  << {\crossStaff {e'} s8 s8 } \\ {gis,[ e b']} >> r r <e b'> q q | <cis cis'> <c c'> <b b'> r <a' b> r <gis b> <g b> |
  <fis b> <b, b'> <e b'> <gis! b> r8 b <b e,> <gis b> | <b, b'>8 <b fis'> q <cis ais'> <dis b'> r8 <dis fis> r8 |
  q q <e gis> <cis e> q q q q | q q <dis fis> <e gis> << { b' dis e cis } \\ { fis, r r fis } >> | %measure 10 follows
  <fis e'> r8 <b dis> <fis fis,> q q q <fis fis'> | q <e e'> <dis dis'> <cis cis'> <b b'>[ <gis gis'> <fis fis'>] <b b,> |
  <gis gis'> <gis' b> r8 q <fis b> r <e b'> r | q r a, r <b b'>8 <b a'>4 q8 | q r b r b cis cis dis | 
  <e b'> r q q~ q q q q | <cis cis'> r <cis cis'> r <cis cis'> r <gis' b> a | a a <fis a> <fis b> <gis b> <e gis> <a cis> q |
  %source page 2
  <a cis>4 r4 <a e'> q | q2 q4 q8 r | q r r q b r b, r |  <b a'> r <e gis> r q <b b'> q <a a'> |
  <gis gis'>4. q8 <fis fis'>4 <e e'> | q <a, a'> <b b'>8 q4 q8 | q4. q8 q8 <cis cis'> q <dis dis'> |
  <e e'>4. q8 <dis dis'> q-.( q-. q-.) |  <cis cis'>4. <cis' cis'>8 q4 <gis' d'>8 <a cis> | 
  q <a a,> <fis fis,> <b b,> <gis gis,> gis a a, | <a a'>2 q4 <a' e'> | q2 q4 q |  q4. q8 <b e>4 << {b8 a} \\ {b,4} >> |
  <b a'>4 <e gis> q8 e[ b b] |
  %source page 3
  b4 e4 e8 <e e'> q q | q4 e8 <b b'> q q q q | q2 <gis gis'> | <e e'>4 q r r8 <b'~ b'> |
  << {\voiceTwo b4 gis e b8 <a' a'> } \new Voice {\voiceOne b'8. e16 gis,8. b16 e,8. gis16 b,8 \change Staff = "right" <b' dis> } >> | \oneVoice
  <gis gis,> <e e,> <b b'> <b b,> q <e e,> q <b b'>~ | q r <gis gis'> r <e e'> r <b b'> <a' a'> |
  <gis gis'> <e e'> <b' b'> r r <e b'> q q | cis c b r <a a'> r <gis gis'> <g g'> |
  <fis fis'> <b b,> <e e,> <gis gis,> r <b b,> <e, e,> <gis gis,> | 
  <b b,> q <fis b,> <ais cis,> <fis dis> r q r | <dis fis> <e gis> q <cis e> q q q q |
  q4 <dis fis>8 <e gis> << {b' dis e cis | cis[ e] } \\ { fis, r r fis | fis r} >>
  <b dis> <fis fis,> q q q q | <fis fis'> <e e'> <dis dis'> <cis cis'> <b b'> <gis gis'> <fis fis'> <b, b'> |
  <gis' gis'> <gis' b> r8 q <fis b> r <e b'> r | q r b r <b b'> <b a'>4 q8 |
  q r b r b cis cis dis | e r e e <dis b'> q q q |
  %source page 4
  cis8 r <cis cis'> r cis r <gis' d'> <a cis> | q q <fis a> <fis b> <gis b> <e gis> <a cis> q |
  << { e'8( a, cis d e fis gis a) | a e cis d e fis gis a | a cis, b a gis r fis dis' |
       fis, dis' s4 } \\ 
     {a4 r a a | a2 a4 a | a r8 a b r b, r | b r <e gis> r } >>
  <e gis>8 <b b'> q <a a'> | <gis gis'>4. q8 <fis fis'>4 <e e'> |
  q <a, a'> <b b'> q | q4. <b' b'>8 b cis cis dis | <e e,>4 q8 q( <dis dis,>) q q q |
  <cis cis,>4. <cis cis'>8 q4 <gis gis'>8 <a a'> | q q <fis fis'> <b b'> <gis gis'> <e e'> <a a'> q |
  %source page 5
  \clef treble << { e''( d cis d e fis gis a ) | a e cis d e fis gis a | } \\
                  { a,2 a4 r | a2 a4 a | } >>
  <a a'>8[ <cis e> <b dis>] \clef bass <a a,>8 <b b,>4 << { b8 a | a[ b] } \\ { b,4 | b } >> <e gis>4 q8 r8 r <b b,> |
  q8 r <e e,> r q <e e'> q e | <e e,> r q r q gis a <fis a> |
  q( <e gis>) q4~ q8 <e gis b> <e a cis> <e cis'> |
  << {a8 e'4 fis16 e e8 d cis s8 } \\ { e,4 e r <e a>8 e } >> |
  <e e,>4 q r q | q q q8 <d d'>( <cis cis'> <a a'>) |
  q4( <gis gis'>2 <fis fis'>4)~ | q8 <b b,> e e e a, e\fermata 

}

sopranoVoicePart = \new Staff \with {
  instrumentName = \markup \center-column {"Voce Solo" "Soprano"}
  midiInstrument = "choir aahs"
} { \sopranoVoice }
\addlyrics { \verseSopranoVoice }

choirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Soprano"
  } \new Voice = "soprano" \soprano
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \verseChoir
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Alto"
  } \new Voice = "alto" \alto
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "alto" \verseChoir
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Tenor"
  } {
    \clef "treble_8"
    \new Voice = "tenor" \tenor
  }
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "tenor" \verseChoir
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Bass"
  } {
    \clef bass
    \new Voice = "bass" \bass
  }
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "bass" \verseChoir
>>

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \right
  \new Dynamics \Dynamics_pf
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \left }
>>

\score {
  <<
    \sopranoVoicePart
    \choirPart
    \pianoPart
  >>
  \layout { 
    \context {
      \Staff  \RemoveEmptyStaves 
    }
    \context {
      \PianoStaff 
      \consists #Span_stem_engraver
    }
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100/4)
    }
  }
}
