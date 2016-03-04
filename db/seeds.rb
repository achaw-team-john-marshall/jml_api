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
    body: "<strong><h4>Have you received a tax collection notice in the mail from the IRS?</h4></strong><p>A tax collection notice is a letter from the IRS that states your name, social security number, and the tax year at issue. The notice will also state the amount of tax due and any potential problems they found with your return.</p>",
    visible: true,
    position: 1
  },
  {
    body: "<strong><h4>Does this IRS notice relate to a joint tax return that you and your spouse filed together?</h4></strong>",
    visible: false,
    position: 2
  },
  {
    body: "<strong><h4>Please look at the IRS notice and your tax return to see why this tax amount may be due.  Does the IRS claim that you owe money to them because of any of the following:</h4></strong><ul><li>You and you spouse understated income in your tax return.  For example, you and your spouse earned money in that year and failed to report it on the tax return, <strong>or</strong></li><li>You and your spouse included items to deduct from your income that did not exist or exaggerated these amounts.  Common examples of deductions include interest paid on a mortgage, real estate taxes paid, or charitable donations, <strong>or</strong></li><li>The tax return is correct but you are not currently able to pay the tax due or feel it would be unfair for you to pay the tax rather than your spouse.  For example, your spouse does not contribute to pay family expenses or the tax that you owe is due to your spouse not withholding enough from their income.</li></ul>",
    visible: false,
    position: 3
  },
  {
    body: "<strong><h4>Is any of the following correct:</h4></strong><ul><li>You did not sign the tax return, <strong>or</strong></li><li>You did not read the tax return prior to signing it because you worried your spouse would harm you or someone you love if you asked him/her to read or explain it to you, <strong>or</strong></li><li>You did read the return and saw potential problems with the information, but were worried that your spouse would harm you or someone you loved if you asked him/her to read or explain it to you?</li></ul><p>In answering this question, please note that the IRS is aware and understands that if a person is a victim of domestic violence, they may be afraid to question the information on the return due to fear of retaliation.  <strong>Domestic violence has many forms and some examples include if your spouse did any of the following:</strong></p><ul><li>Physically harm or threaten you, your children, or other members of your family</li><li>Sexually abuse you, your children, or other members of your family</li><li>Make you afraid to disagree with him/her</li><li>Frequently criticizes or insults you in a cruel fashion that impacts your feelings of self-worth and confidence in your own worth and judgment</li><li>Withhold money for food, clothing, or other basic needs</li><li>Make most or all the decisions for you, including financial decisions</li><li>Restrict or control who you could see or talk to or where you could go</li><li>Isolate you or keep you from contacting your family members and/or friends</li><li>Cause you to fear for your safety in any other way</li><li>Stalk you, your children, or other members of your family</li><li>Become violent when your spouse abuses alcohol or drugs</li><li>Not allow you to have a bank account or have access to the household bank accounts, debit cards or credit cards</li><li>Have all of your income pay for family expenses while they use their income however they please</li><li>Allow you only to have an allowance from household income</li><li>Forge your name on documents</li></ul>",
    visible: false,
    position: 4
  }
])