\version "2.24.4"

\header {
  title = "I Won't Pretend"
  composer = "mulmeyun"
}

cDiatonicScale = \relative {
  c' d e f gis a b
}

cisHarmonicMinorScale = \relative {
  cis dis e fis gis a bis
}

besMinorScale = \relative {
  bes c des ees f ges aes
}

verseTheme = {
  e8 e cis \grace cis dis2 bis8 |
  cis2 a8 b4. |
  \time 6/8
  gis8 e'16 e8. e8 cis cis |
  dis2. |
  e8 e dis cis4. |
  gis4. a4. |
  gis8 gis16 e'8. e8 cis cis |
  dis2. |
  cis16 cis8. cis8 cis cis16 b8.~ |
  \time 9/8
  b4
  r16
  gis,16 gis gis e'4 dis8 bis 
  cis8
}

verseThemeMutation = {
  e8 e cis \grace cis dis2 b8 |
  cis2 ais8 b4. |
  \time 6/8
  gis8 e'16 e8. e8 cis cis |
  dis2. |
  e8 e dis cis4. |
  gis4. ais4. |
  gis8 gis16 e'8. e8 cis cis |
  dis2. |
  cis16 cis8. cis8 cis cis16 b8.~ |
  \time 9/8
  b4
  r16
  gis,16 gis gis e'4 dis8 b
  cis8
}

themePartOne = {
  \time 6/8
  a'8 a gis fis4. |
  \time 4/8
  cis'8 gis'4. |
  \time 6/8
  cis,,8 a' gis a gis fis |
}

themePartTwo = {
  \time 6/8
  a8 a gis fis cis4 |
  \time 9/8
  cis8 a' e'4
  dis8 cis bis4 dis8 |
}

themePartTwoMutation = {
  \time 6/8
  dis8 dis cis bis gis4~ |
  \time 9/8
  gis8 dis' ais'4
  gis8 fis eis4 dis8 |
}

counterThemePartOne = \absolute {
  a,4 cis e
  gis
  bis,16 e gis
  gis, bis, e
  dis, fis, e,
  e, fis, gis,
  fis, fis, |
}

counterThemePartTwo = {
  gis4 a cis |
  e8. dis cis8 |
  a'8. e fis8 gis4 |
}

\score {
  \relative c'' {
    \key cis \minor
    \sectionLabel "Verse I"
    \verseTheme
    \sectionLabel "Chorus"
    \themePartOne
    \relative c' \themePartOne
    <<
      {
        \themePartTwo
	
	\textMark "Theme mutation"
	\modalTranspose a dis' \cisHarmonicMinorScale \relative c' {
	  \themePartOne
	}
	\key ais \minor
	\relative c'' {
	  \themePartTwoMutation
	}

	\time 4/4
	r4
	r16
	eis,8 eis16 cis' cis8. bis8 gisis
	\time 2/4
	ais2

	\time 4/4
	\sectionLabel "Verse II (mutation)"
	\transpose e fis \relative c'' { \verseThemeMutation }
      }

      \new Staff {
        \key cis \minor
        \clef "bass" 
        \relative c {
          \counterThemePartOne
          \counterThemePartTwo
	  \key ais \minor
	  ais,2 cis eis gis
        }
      }
    >>
  }

  \layout {}
  \midi {}
}

\markup {
  \column {
    \line \bold \large { Lyrics }
    \vspace #.5
    \line \bold { Verse I }
    \line { On blessed shores, }
    \line { we walked, }
    \line { and thought, }
    \line { of marrying in September. }
    \line { That very night, }
    \line { we swore, }
    \line { with the heat of the hearth, }
    \line { caressing our bodies, }
    \line { kissing the soles of our fate. }
    \vspace #.5
    \line \bold { Chorus I }
    \line { I won't pretend, }
    \line { to know, }
    \line { what you need from me most. }
    \line { I must admit, }
    \line { sometimes, }
    \line { I dare not even try, }
    \line { I won't deny, }
    \line { the failure I am. }
    \line { What is you see, }
    \line { in me, }
    \line { how could you fall for me? }
    \line { Someone like me, }
    \line { as pitiful as me... }
    \line { should have never been with you. }
  }
}