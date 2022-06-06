\version "2.22.2"
\paper {
  ragged-right = ##t
  #(set-paper-size "a4" 'landscape)
  indent = 0
  print-all-headers = ##t
  print-page-number = ##f
}

melody = \fixed c' {
  \clef treble
  \key c \major

  % line 1
  \mark \markup{\tiny {~10'' or 5 cells}}
  \set Score.currentBarNumber = #1
  \once \omit Staff.TimeSignature
  \cadenzaOn
  \override Stem.length = #0
  d4 e
  \revert Stem.length
  \cadenzaOff
  \bar "||"

  \time 2/4
  b8\snappizzicato r r4
  b16-> b r8 r4
  b8 r b r
  b2\p
  \break
  
  % line 2
  \mark \markup{\tiny {~12'' or 6 cells}}
  \set Score.currentBarNumber = #2
  \once \omit Staff.TimeSignature
  \cadenzaOn
  \override Stem.length = #0
  \omit Flag
  cis8 aes f
  \revert Flag.stencil
  \revert Stem.length
  \cadenzaOff
  \bar "||"


  \time 2/4
  b16-> b b r r4
  \tuplet 3/2 { b8 b8 b8 } r4
  b16 b8 b16 r4
  b4 b16 b16 r8
  b2\mp
  \break

  % line 3
  \mark \markup{\tiny {~16'' or 8 cells}}
  \set Score.currentBarNumber = #3
  \once \omit Staff.TimeSignature
  \cadenzaOn
  \override Stem.length = #0
  \omit Flag
  bes16 a c b
  \revert Stem.length
  \revert Flag.stencil
  \cadenzaOff
  \bar "||"

  \time 2/4
  b16-> b b b r4
  b8 b b b
  \tuplet 3/2 { b8 b8 b8 } b8 r8
  b8 b~ b b16 b
  b8. b16 b16 b8.
  b2\mf
  \break

  % line 4
  \mark \markup{\tiny {~22'' or 11 cells}}
  \set Score.currentBarNumber = #4
  \once \omit Staff.TimeSignature
  \cadenzaOn
  \override Stem.length = #0
  \omit Flag
  es8 g ges
  \revert Stem.length
  \revert Flag.stencil
  \cadenzaOff
  \bar "||"

  \time 2/4
  \tuplet 3/2 { b8 b8 b8 } b8 b
  b8 b16 b b8 b
  b16-> b b b b4
  b4 b4
  b8 b~ b16 b b b
  b8. b16 b b b8
  b2\f
  \break

  % line 5
  \mark \markup{\tiny {~22'' or 11 cells}}
  \set Score.currentBarNumber = #5
  \once \omit Staff.TimeSignature
  \cadenzaOn
  \override Stem.length = #0
  \omit Flag
  ges4 g
  \revert Stem.length
  \revert Flag.stencil
  \cadenzaOff
  \bar "||"

  \time 2/4
  b8 b \tuplet 3/2 { b8 b8 b8 }
  b8 b b16 b b8
  b4 b16 b b b->
  b4 b4
  b16 b b b~ b8 b
  b8 b16 b b b8.
  b2\f
  \break

  % line 6
  \mark \markup{\tiny {~16'' or 8 cells}}
  \set Score.currentBarNumber = #6
  \once \omit Staff.TimeSignature
  \cadenzaOn
  \override Stem.length = #0
  \omit Flag
  es16 b c a
  \revert Stem.length
  \revert Flag.stencil
  \cadenzaOff
  \bar "||"

  \time 2/4
  r4 b16 b b b->
  b8 b b b
  r8 b8 \tuplet 3/2 { b8 b8 b8 }
  b16 b b8~ b b
  b8. b16 b b8.
  b2\mf
  \break

  % line 7
  \mark \markup{\tiny {~12'' or 6 cells}}
  \set Score.currentBarNumber = #7
  \once \omit Staff.TimeSignature
  \cadenzaOn
  \override Stem.length = #0
  \omit Flag
  bes8 f aes
  \revert Stem.length
  \revert Flag.stencil
  \cadenzaOff
  \bar "||"

  \time 2/4
  r4 r16 b b b->
  r4 \tuplet 3/2 { b8 b8 b8 }
  r4 b16 b8 b16
  r8 b16 b16 b4
  b2\mp
  \break

  % line 8
  \mark \markup{\tiny {~10'' or 5 cells}}
  \set Score.currentBarNumber = #8
  \once \omit Staff.TimeSignature
  \omit Flag
  \cadenzaOn
  \override Stem.length = #0
  cis8 e d
  \revert Stem.length
  \revert Flag.stencil
  \cadenzaOff
  \bar "||"

  \time 2/4
  r4 r8 b\snappizzicato
  r4 r8 b16 b->
  r8 b r b
  b2\p
  \bar "|."
}

\header{
    tagline = " "
}

\markup {
  \column {
    \line {\bold {Performance Notes}}
    \line {\smaller \wordwrap-string #"Both parts should be generated from the same score. 
    
    In each line, a set of pitches is given to the left of the double bar line and a set of one-measure long “rhythmic cells” are given to the right of the double bar line. Each line also has a duration, given as the number of cells. 

These should be combined by choosing a rhythmic cell from the right side of each line and applying pitches from the left side to the chosen rhythm. Pitches may be used and repeated in any octave, and cells can be repeated or never used. This process is repeated for the duration of each line.

For the violin part this can either be done

1. By the performer, improvisationally

2. Programmatically, prior to the performance. See https://github.com/stephaniiema/lilypond-aleatory for instructions and code files.

The second part for computer should be generated programmatically.

The two parts can be recorded separately and combined in an DAW or the computer part can be played during a live performance of the violin part. In the former case, the violinist should play along with a click track to ensure the two parts can be successfully combined."}
  }
}

\pageBreak 
\score {
  \header {
      title = \markup {\normal-text {Schoenberg, Cage, and Robots}}
      subtitle = \markup {\normal-text {for violin and computer}}
      composer = "Stephanie Ma"
  }
  \new Staff \melody
  \layout { }
  \midi { }
}