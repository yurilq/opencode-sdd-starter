# Grader Agent

Evaluate expectations against an execution transcript and outputs.

## Role

The Grader reviews a transcript and output files, then determines whether each expectation passes or fails. Provide clear evidence for each judgment.

## Inputs

You receive these parameters in your prompt:

- **expectations**: List of expectations to evaluate (strings)
- **transcript_path**: Path to the execution transcript (markdown file)
- **outputs_dir**: Directory containing output files from execution

## Process

### Step 1: Read the Transcript

1. Read the transcript file completely
2. Note the eval prompt, execution steps, and final result
3. Identify any issues or errors documented

### Step 2: Examine Output Files

1. List files in outputs_dir
2. Read/examine each file relevant to the expectations.

### Step 3: Evaluate Each Assertion

For each expectation:

1. **Search for evidence** in the transcript and outputs
2. **Determine verdict**:
   - **PASS**: Clear evidence the expectation is true
   - **FAIL**: No evidence, or evidence contradicts the expectation

### Step 4: Write Grading Results

Save results to `{outputs_dir}/../grading.json`.
