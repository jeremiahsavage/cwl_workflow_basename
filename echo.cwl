#!/usr/bin/env cwl-runner

cwlVersion: v1.0

requirements:
  - class: DockerRequirement
    dockerPull: ubuntu

class: CommandLineTool

inputs:
  - id: input
    type: string
    inputBinding:
      prefix: --input

outputs:
  - id: output
    type: File
    outputBinding:
      glob: echo.out

stdout: echo.out

baseCommand: echo
