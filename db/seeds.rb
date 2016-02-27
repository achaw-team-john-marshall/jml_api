Question.create!([
  {
    body: "How can I contact the JML Domestic Violence Clinic?", 
    answer: "Call us at 555-555-5555"
  },
  {
    body: "Where are you located?",
    answer: "315 S. Plymouth Court, Chicago, IL 60604"
  }
])

QuestionnaireChoice.create!([
  {
    body: "Have you or your family members experienced domestic abuse on behalf of your spouse? Domestic abuse can range from physical abuse to emotional abuse. Domestic abuse also includes serious financial control, where you have no control over family finances and the filing of tax returns.",
    visible: true,
    position: 1
  },
  {
    body: "Did you and your spouse file joint tax returns?",
    visible: false,
    position: 2
  },
  {
    body: "Do you owe the IRS tax due to erroneous items attributable to your spouse? You would likely be aware of this from the collection notices that the IRS periodically sends showing the amount of tax due. The tax would be attributable to your spouse if they incurred the tax, such as from their employment income, gambling earnings, retirement withdrawals, and business income.",
    visible: false,
    position: 3
  },
  {
    body: "Has it been 2 years or less since the IRS first began collection activity on the tax?  In other words, did you start receiving notices from the IRS within the past two years?",
    visible: false,
    position: 4
  },
  {
    body: "Are you and your former spouse divorced, legally separated, or have you maintained separate households for at least one year? You and spouse would be considered members of the same household if you and your spouse live in the same dwelling, or you and your spouse live in different places but are not separated, or if your spouse is absent from the household but is likely to return (such as from prison, educational purposes, sick in the hospital, or is in the military).",
    visible: false,
    position: 5
  },
  {
    body: "Have you and your former spouse engaged in any fraudulent schemes so as to defraud the IRS or any other person? One example would be transferring assets so as to avoid tax in which you would benefit from. Assets include real estate, bonds, or other property that you now possess.",
    visible: false,
    position: 6
  },
  {
    body: "For the tax years in question, did you or your spouse incur any large expenses,such as vacations, home improvements, private schooling or did you and your spouse make any large purchases, such as automobiles, appliances, or jewelry?",
    visible: false,
    position: 7
  },
  {
    body: "Will you suffer financial hardship if you are required to pay the tax? For example,if you have to pay the tax, will you have trouble paying basic living expenses like food, shelter, and clothing?",
    visible: false,
    position: 8
  }
])