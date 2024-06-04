cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  metastatic-solid-tumour-charlson-primary-care-metastasis---primary:
    run: metastatic-solid-tumour-charlson-primary-care-metastasis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  metastatic-solid-tumour-charlson-primary-care-mneoplasm---primary:
    run: metastatic-solid-tumour-charlson-primary-care-mneoplasm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: metastatic-solid-tumour-charlson-primary-care-metastasis---primary/output
  metastatic-solid-tumour-charlson-primary-care-disseminated---primary:
    run: metastatic-solid-tumour-charlson-primary-care-disseminated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: metastatic-solid-tumour-charlson-primary-care-mneoplasm---primary/output
  metastatic-solid-tumour-charlson-primary-care-carcinoma---primary:
    run: metastatic-solid-tumour-charlson-primary-care-carcinoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: metastatic-solid-tumour-charlson-primary-care-disseminated---primary/output
  secondary-metastatic-solid-tumour-charlson-primary-care---primary:
    run: secondary-metastatic-solid-tumour-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: metastatic-solid-tumour-charlson-primary-care-carcinoma---primary/output
  metastatic-solid-tumour-charlson-primary-care-ascite---primary:
    run: metastatic-solid-tumour-charlson-primary-care-ascite---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: secondary-metastatic-solid-tumour-charlson-primary-care---primary/output
  metastatic-solid-tumour-charlson-primary-care-deposits---primary:
    run: metastatic-solid-tumour-charlson-primary-care-deposits---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: metastatic-solid-tumour-charlson-primary-care-ascite---primary/output
  metastatic-solid-tumour-charlson-primary-care-multi---primary:
    run: metastatic-solid-tumour-charlson-primary-care-multi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: metastatic-solid-tumour-charlson-primary-care-deposits---primary/output
  metastatic-solid-tumour-charlson-primary-care-gland---primary:
    run: metastatic-solid-tumour-charlson-primary-care-gland---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: metastatic-solid-tumour-charlson-primary-care-multi---primary/output
  metastatic-solid-tumour-charlson-primary-care-liver---primary:
    run: metastatic-solid-tumour-charlson-primary-care-liver---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: metastatic-solid-tumour-charlson-primary-care-gland---primary/output
  metastatic-solid-tumour-charlson-primary-care-system---primary:
    run: metastatic-solid-tumour-charlson-primary-care-system---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: metastatic-solid-tumour-charlson-primary-care-liver---primary/output
  metastatic-solid-tumour-charlson-primary-care-malig---primary:
    run: metastatic-solid-tumour-charlson-primary-care-malig---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: metastatic-solid-tumour-charlson-primary-care-system---primary/output
  neoplastic-metastatic-solid-tumour-charlson-primary-care---primary:
    run: neoplastic-metastatic-solid-tumour-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: metastatic-solid-tumour-charlson-primary-care-malig---primary/output
  metastatic-solid-tumour-charlson-primary-care---primary:
    run: metastatic-solid-tumour-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: neoplastic-metastatic-solid-tumour-charlson-primary-care---primary/output
  cerebral-metastatic-solid-tumour-charlson-primary-care---primary:
    run: cerebral-metastatic-solid-tumour-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: metastatic-solid-tumour-charlson-primary-care---primary/output
  metastatic-solid-tumour-charlson-primary-care-pleura---primary:
    run: metastatic-solid-tumour-charlson-primary-care-pleura---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: cerebral-metastatic-solid-tumour-charlson-primary-care---primary/output
  metastatic-solid-tumour-charlson-primary-care-cancer---primary:
    run: metastatic-solid-tumour-charlson-primary-care-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: metastatic-solid-tumour-charlson-primary-care-pleura---primary/output
  metastatic-solid-tumour-charlson-primary-care-lymph---primary:
    run: metastatic-solid-tumour-charlson-primary-care-lymph---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: metastatic-solid-tumour-charlson-primary-care-cancer---primary/output
  parotid-metastatic-solid-tumour-charlson-primary-care---primary:
    run: parotid-metastatic-solid-tumour-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: metastatic-solid-tumour-charlson-primary-care-lymph---primary/output
  metastatic-solid-tumour-charlson-primary-care-brain---primary:
    run: metastatic-solid-tumour-charlson-primary-care-brain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: parotid-metastatic-solid-tumour-charlson-primary-care---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: metastatic-solid-tumour-charlson-primary-care-brain---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
