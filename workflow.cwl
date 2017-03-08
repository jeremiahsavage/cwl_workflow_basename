#!/usr/bin/env cwl-runner

cwlVersion: v1.0

class: Workflow

requirements:
  - class: InlineJavascriptRequirement
  - class: StepInputExpressionRequirement

inputs:
  - id: input_file
    type: File

outputs:
  - id: echo_filename_output
    type: File
    outputSource: echo_filename/output

steps:
  - id: echo_filename
    run: echo.cwl
    in:
      - id: input
        source: input_file
        valueFrom: $(self.basename)
    out:
      - id: output
