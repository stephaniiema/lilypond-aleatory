# lilypond-aleatory
Score [here](final_project.pdf)

## About
"Schoenberg, Cage, and Robots" is an aleatoric piece for violin and computer.
This repository contains code that generates a pdf score and midi file of the piece according to the specifications in the performance notes below.

## Performance Notes
Both parts should be generated from the same score. 

In each line, a set of pitches is given to the left of the double bar line and a set of one-measure long “rhythmic cells” are given to the right of the double bar line. Each line also has a duration, given as the number of cells. 

These should be combined by choosing a rhythmic cell from the right side of each line and applying pitches from the left side to the chosen rhythm. Pitches may be used and repeated in any octave, and cells can be repeated or never used. This process is repeated for the duration of each line.

For the violin part this can either be done

1. By the performer, improvisationally
2. Programmatically, prior to the performance. See [https://github.com/stephaniiema/lilypond-aleatory](https://github.com/stephaniiema/lilypond-aleatory) for instructions and code files.

The second part for computer should be generated programmatically.

The two parts can be recorded separately and combined in an DAW or the computer part can be played during a live performance of the violin part. In the former case, the violinist should play along with a click track to ensure the two parts can be successfully combined.

## Installation and Instructions
### Requirements
* Install [Python](https://www.python.org/downloads/)
* Install [LilyPond](https://lilypond.org/download.html)

### Score Generation Instructions
1. Clone and navigate to the repo 
   ```sh
   git clone https://github.com/stephaniiema/lilypond-aleatory.git
   cd lilypond-aleatory
   ```
2. Run `score_generatory.py`
   ```sh
   python score_generator.py
   ```
The result is saved in `score.pdf` and `score.midi` in the repo folder.  
Note that every time the program is rerun, `score.pdf` and `score.midi` are overwritten.

## References
* [LilyPond notation guide](https://lilypond.org/doc/v2.21/Documentation/notation/index.html#index)
