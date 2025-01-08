\version "2.24.4"

\header {
  title = "I Won't Pretend"
  composer = "mulmeyun"
}

diatonicScale = \relative {
  c' d e f gis a b
}
harmonicMinorScale = \relative {
  cis dis e fis gis a bis
}

themePartOne = {
  \time 6/8
  a8 a gis fis4. |
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
  dis8 cis bis4 dis'8 |
}

counterThemePartOne = {
    a4 cis e
    gis
    bis,16 e gis
    gis, bis e
    dis, fis e'
    e, fis gis'
    fis, fis |
}

counterThemePartTwo = {
  gis4 a cis |
  e8. dis cis8 |
  a'8. e fis8 gis4 |
}

\score {
  \relative c'' {
    \key cis \minor
    \themePartOne
    <<
      {
        \themePartTwo
	\modalTranspose a dis' \harmonicMinorScale \relative c'' {
	  \themePartOne
	}
      }

      \new Staff {
        \key cis \minor
        \clef "bass" 
        \relative c {
          \counterThemePartOne
          \counterThemePartTwo
        }
      }
    >>
  }

  \layout {}
  \midi {}
}
