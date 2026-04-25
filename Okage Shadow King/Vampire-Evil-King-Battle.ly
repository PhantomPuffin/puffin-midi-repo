\version "2.24.0"

% Arranged by Phantom Puffin
% Check out my youtube video: https://youtu.be/eJGthJXBQtk

\header {
  title = "Vampire Evil King Battle"
  subtitle = "from Okage: Shadow King"
  composer = "Jun-Ichi Doi, Takamitsu Kajikawa, Yoshikazu Kawatani, Toda Kazuhide, & Toshiaki Murata"
  arranger = "Phantom Puffin"
}

global = {
  \tempo 4 = 125
  \time 4/4  
  
}

rightHand = \relative c' {
  \global
  \clef treble   
        
   \repeat unfold 2 {
     % Intro, 4 Measures
     \relative c {
       \repeat unfold 3 {
         << a'16\f e a' e >> << g g, >> << fis fis' >> << d d, >> << e e' >> 
         << d16 d, >> << c c' >> << d8 d, >> << c16 c' >> << d d, >>
         << c c' >> << e e, >> << c c' >> << d8 fis d, fis >>
       }
         << a'16\f e a' e >> << g g, >> << fis fis' >> << d d, >> << e e' >> 
         << d16 d, >> << c c' >> << d8 d, >> << c16 c' >> << d d, >>
         << c c' >> << e e, >> << c c' >> << d8 fis d, fis >>
     }
     
     % Part 1
     \relative c''' { 
         \repeat unfold 4 {
           a8\ppp g e16   g8 g e16   g8 a r8
           b8   a fis16 a8 a fis16 a8 b r8
           c8   a f16   a8 a f16   a8 c r8
           d8   b g16   b8 b g16   e8 a r8
       }
     }
     
     % Part 2, 8 Measures       
     \relative c'' {
       \repeat unfold 4 {
         c16\ppp f a b c f c, f a b c f c, f a b
       }
       \repeat unfold 4 {
         << c16\pp c, >> << f f' >> << a a, >> << b b' >> << c c, >> << f f' >> << c, c, >> << f f' >> << a a, >> << b b' >> << c c, >> << f f' >> << c, c, >> << f f' >> << a a, >> << b b' >>
       }
     }
     
     % Ending
     \relative c' { 
       << e2\f~ b~ >> << b8 e >> << a,4 a' >> 
       << e8 b >> << fis4. fis' >> << b,,2 b' >> b16 d << e2 b2 >>
       << a4. a' >> << e,8 e' >>
       << e8 e' >> r8 << e e, >> r << e e' >> r << e4 e, >>
     }
   }
} 

otherOtherHand = {
  \repeat unfold 2 {
    \relative c' {
      \repeat unfold 3 {
        r1
      }
      \repeat unfold 4 {
        r2. r8 g8\fff
        a4 r2.
        r1 r1
      }
      r8 r2. g8\f
      \repeat unfold 12 { r1 }
    }
  }
}

otherHand = \relative c {
  \repeat unfold 2 {
    
    % Intro
    r1 r1    
    << a'''1\ffff e >>
    r1
    
    % Part 1 
    \relative c'' {
      \repeat unfold 8 {
        r1
      }
      \repeat unfold 2 {
        a2.\ffff e4 
        d4. b4. a8 
        b8  c2. g'4 
        d1
      }
    }
    
    % Part 2
    \repeat unfold 8 { r1 }
    
    % Ending
    r1 r1 r1 r8 r2 r4 r8
  }
}

leftHand = \relative c {
  \global
  \clef bass
  
   \repeat unfold 2 {
     % Intro, 4 Measures
     \relative c' {
       \repeat unfold 4 {         
         r1
       }
     }
     
     % Part 1
     \relative c {
      \repeat unfold 4 {        
        <<d8.\f fis>> <<fis8. d>> <<d4 fis>> <<fis8 d>> <<d8 fis>> r8
        <<c8. e>> <<e8. c>> <<c4 e>> <<e8 c>> <<c8 e>> r8
        <<e8. g>> <<g8. e>> <<e4 g>> <<g8 e>> <<e8 g>> r8
        <<fis8. a>> <<a8. fis>> <<fis4 a>> <<a8 fis>> <<fis8 a>> r8        
      }
    }
     
     % Part 2, 8 Measures
     \relative c {
     \repeat unfold 4 {
         << a'4.\f c >>
         << b d g, >>
         << g4 c e >>
         << e4. c g >>
         << a4. d >>
         << g,4 c e >>
       }
     }
     
     % Ending
     \relative c' {
       << b,2~\f e~ a~ >> << a8 e b >>
       r4 r2 r2
       r2 r4. r4
       << e8 e, >> r << e e' >> r << e e, >> r << e4 e'4 >>
     }
   }
}

\score {
  \new PianoStaff <<
    \new Staff = "RH" \rightHand
    \new Staff = "OH" \otherHand
    \new Staff = "OH2" \otherOtherHand
    \new Staff = "LH" \leftHand
  >>
  \layout {}
  \midi {}
}