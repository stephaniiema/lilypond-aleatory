# lilypond-aleatory
Link score here
## Performance Notes
## About
Generates a pdf score and midi file of "name" according to the specifications in the performance notes above.

## Installation and Instructions
### Requirements
* Install [Python](https://www.python.org/downloads/)
* Install [LilyPond](https://lilypond.org/download.html)

### Instructions
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
