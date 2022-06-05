import os
import random
rhythm_cells=[]
pitch_sets=[]
NUM_CELLS=[5,6,8,11,11,8,6,5]

# read in files
with open("rhythm_cells.txt", 'r') as f:
    text = f.read()
    rhythm_cells = text.split('*')
for i in range(len(rhythm_cells)):
    text = rhythm_cells[i]
    rhythm_cells[i] = text.split('\n')
    rhythm_cells[i]=[x for x in rhythm_cells[i] if x]

with open("pitch_sets.txt", 'r') as f:
    text = f.read()
    pitch_sets = text.split('\n')
for i in range(len(pitch_sets)):
    text = pitch_sets[i]
    pitch_sets[i] = text.split(' ')
    pitch_sets[i]=[x for x in pitch_sets[i] if x]

# select random rhythms and pitches
output=[]
cell=""
for i in range(len(NUM_CELLS)):
    output.append([])
    for j in range(NUM_CELLS[i]):
        output[i].append([])
        rand = random.randint(0,len(rhythm_cells[i])-1)
        cell=str(rhythm_cells[i][rand])
        cell=cell.split(' ')
        for x in cell:
            if x[0]=='b':
                note = pitch_sets[i][random.randint(0,len(pitch_sets[i])-1)]
                if not random.randint(0,3): # random octave displacement (1/3 chance)
                    note = note + '\''
                output[i][j].append(x.replace('b',note))
            else:
                output[i][j].append(x)
        if j == NUM_CELLS[i]-1:
            output[i][j].append('\\bar \"||\" \\break\n')

for i in range(len(output)):
    for j in range(len(output[i])):
     output[i][j]= ' '.join(output[i][j])
    output[i]='\n'.join(output[i])
output = ' '.join(output)

# format into Lilypond and generate score pdf
ly_template = ''
with open("template.ly", 'r') as f:
    ly_template = f.read()

ly_template =ly_template.replace('*', output)

with open("score.ly", 'w') as f:
    n = f.write(ly_template)

os.system('lilypond score.ly')