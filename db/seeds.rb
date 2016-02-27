Question.create!([
  {body: "Am I pregnant", answer: "No"},
  {body: "Is this real life?", answer: "yes, david"}
])

QuestionnaireChoice.create!([
  {body: "Have you or your family members experienced domestic abuse on behalf of your spouse? Domestic abuse can range from physical abuse to emotional abuse. Domestic abuse also includes serious financial control, where you have no control over family finances and the filing of tax returns.",
  position: 1},
  {body: "Did you and your spouse file joint tax returns?",
  position: 2}
  ])
