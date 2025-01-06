\header {
  title = "I Won't Pretend"
  composer = "mulmeyun"
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

counterTheme = {
    a4 cis e gis bis
}

\score {
  \relative c'' {
    \key cis \minor
    \themePartOne
    <<
      \themePartTwo
      \new Staff {
        \key cis \minor
        \clef "bass" 
        \relative c {
          \counterTheme
        }
      }
    >>
  }

  \layout {}
  \midi {}
}
\header {
  title = "I Won't Pretend"
  composer = "mulmeyun"
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
  dis8 cis bis4 dis8 |
}

counterTheme = {
    bis8 cis dis a4. |
    gis'4 gis
    \appoggiatura a,16 gis4 fis
    fis'4 fis
}

\score {
  \relative c'' {
    \key cis \minor
    \themePartOne
    <<
      \themePartTwo
      \new Staff {
        \key cis \minor
        \clef "bass" 
        \relative c {
          \counterTheme
        }
      }
    >>
  }

  \layout {}
  \midi {}
}
\header {
  title = "I Won't Pretend"
  composer = "mulmeyun"
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
  dis8 cis bis4 dis8 |
}

counterTheme = {
    bis8 cis dis a4.
}

\score {
  \relative c'' {
      \themePartOne
      <<
        \themePartTwo
        \new Staff {
          \clef "bass" 
          \relative c {
            \counterTheme
          }
        }
      >>
  }

  \layout {}
  \midi {}
}
\header {
  title = "I Won't Pretend"
  composer = "mulmeyun"
}

theme = {
  \time 6/8
  a8 a gis fis4. |
  \time 4/8
  cis'8 gis'4. |
  \time 6/8
  cis,,8 a' gis a gis fis |
}

counterTheme = {
    e2 d
}

\score {
  \relative c'' {
      \theme
      <<
        \theme
        \new Staff {
          \clef "bass"
          \counterTheme
        }
      >>
  }

  \layout {}
  \midi {}
}
