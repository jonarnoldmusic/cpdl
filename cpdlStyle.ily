\version "2.19.81"

%revised March  15,2018

%{ sample header

taglineLink = "https://imslp.org/wiki/Special:ReverseLookup/74128"
\include "../../../cpdlStyle.ily"

\header  {
  title = "Plain Title"
  fancyTitle = \markup { \fontsize #+5 \override #'(font-name . "Oldstyle Small Caps") "Formatted Title"}
  composer = ""
  composerLast = ""
  composerDates = "(–)"
  poet = ""
  poetDates = "(–)"
  opus = ""
  copyright = "2018"
  taglineA = \markup { \concat {"Source: " \italic "Ludwig van Beethovens Werke" ", Serie 23: Lieder und Gesänge mit Begleitung des Pianoforte, No.273." } }  
  taglineB = "Leipzig: Breitkopf & Härtel, 1862-1890. Plate B.273."
}
%}

#(set-global-staff-size 17)
\paper {

  #(set-paper-size "letter")

  %{#(define fonts
     (set-global-fonts
      #:music "mtf-cadence"
      #:brace "mtf-cadence"
      #:roman "Borgia Pro"
      #:factor (/ staff-height pt 20)
      ))%}

  %set spacing to allow for head/footers
  top-system-spacing.minimum-distance = 12
  last-bottom-spacing.minimum-distance = 14
  
  top-margin = .3\in
  bottom-margin = .3\in
  left-margin = .5\in
  right-margin = .5\in

  bookTitleMarkup = \markup {
    \override #'(baseline-skip . 8)
    \column {
      \fill-line { \fromproperty #'header:dedication }
      \override #'(baseline-skip . 3.5)
      \column {
        \fill-line {
          \huge \larger \larger \bold
          \first-visible {
            \fromproperty #'header:fancyTitle
            \fromproperty #'header:title
          }
        }
        \fill-line {
          \large \bold
          \fromproperty #'header:subtitle
        }
        \fill-line {
          \smaller \bold
          \fromproperty #'header:subsubtitle
        }
      }
      \override #'(baseline-skip . 2.5)
      \column {
        \fill-line {
          {\bold \fromproperty #'header:poet }
          { \large \bold \fromproperty #'header:instrument }
          {\bold \fromproperty #'header:composer }
        }
        \fill-line {
          \fromproperty #'header:poetDates
          \fromproperty #'header:composerDates
        }
        \fill-line {
          \fromproperty #'header:meter
          \fromproperty #'header:arranger
        }
      }
    }
  }


  oddHeaderMarkup = \markup {
    \on-the-fly \print-page-number-check-first
    \override #'(baseline-skip . 1)
    \column {
      \fill-line {
        \line {\null}
        \line { \fromproperty #'header:composerLast " - " \fromproperty #'header:title  }
        \line {\fromproperty #'page:page-number-string }
      }
      \draw-hline
    }
  }

  evenHeaderMarkup = \markup {
    \on-the-fly \print-page-number-check-first
    \override #'(baseline-skip . 1)
    \column {
      \fill-line {
        \line {\fromproperty #'page:page-number-string }
        \line { \fromproperty #'header:composerLast " - " \fromproperty #'header:title  }
        \line {\null}
      }
      \draw-hline
    }
  }

  oddFooterMarkup = \markup {
    \override #'(baseline-skip . 2)
    \column {
      \fill-line {
        %% Copyright header field only on first page in each bookpart.
        \on-the-fly #part-first-page
        \override #'(baseline-skip . 2.5)
        \center-column {
          \draw-hline 
          \tiny \fill-line {
            \concat {"Copyright © " \fromproperty #'header:copyright " by CPDL. This edition can be fully distributed, duplicated, performed, and recorded."}
            { \with-url #"http://jonarnoldmusic.com/editions/" { #(string-append "Engraved by Jon Arnold using Lilypond v. " (lilypond-version) ".")} }
          }
        }
      }
      \fill-line {
        %% Tagline header field only on last page in the book.
        \on-the-fly #last-page
        \center-column {
          %\override #'(span-factor . 4/5)
          \draw-hline 
          %declare taglineLink before including this stylesheet in the file
          %example taglineLink = "http://lilypond.org"
          \with-url #taglineLink {
            \tiny { \fromproperty #'header:taglineA \fromproperty #'header:taglineB }
          }
        }
      }
    }
  }

  %% As long as evenFooterMarkup is unset, it inherits the value of
  %% oddFooterMarkup, as if this were declared here:
  % evenFooterMarkup = \oddFooterMarkup

}