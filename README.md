# ABC Working Group Sbatch Code Template
Copyright 2019 Applied Bayesian Computation Working Group

Permission is hereby granted, free of charge, to any person obtaining a copy 
of this software and associated documentation files (the "Software"), to deal 
in the Software without restriction, including without limitation the rights to 
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies 
of the Software, and to permit persons to whom the Software is furnished to do 
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all 
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN 
THE SOFTWARE.


## Running Jobs
To get started, add your email to submitJob.sbatch line: 

	SBATCH --mail-user=<yourEmail>@uw.edu

You should also adjust the computing memory, wall time, and partition 
assignments as needed. Finally, adjust the run parameters in 
submitJob.sbatch as needed. 

## Files
main.R: code that call function from src, samples, and saves results

submitJob.sbatch: code to submit sbatch job, e.g. sbatch submitJob.sbatch

## Directories
data: simulated data file

	- normalSample.csv: dummy data generated by src/generateData.R

logs: place to send the sbatch logs

	- main.out: a file where all messages and errors are output

results: place to store output from codes

src: place for codes

	- generateData.R: a simple script to sample some data
	- getSampleMethod.R: example funciton loaded by main.R
