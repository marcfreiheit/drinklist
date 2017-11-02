as yet unclassified
sendEmailTo: anEmailAddress withText: text withSubject: subject andType: anEmailType
""

| smtpClient |
smtpClient := SMTPClient openOnHost: self emailHost port: self emailPort.
smtpClient user: 'tobias.zagorni'.
smtpClient password: 'A35gs77'.
smtpClient login.
smtpClient mailFrom: 'tobias.zagorni@student.hpi.de' to: { anEmailAddress } text: 'From: ', (self encode: 'Getränkekühlschrank'), '<tobias.zagorni@student.hpi.de>',
'To: ', anEmailAddress, '
Subject: ' , (self encode: subject) , '
Content-Transfer-Encoding: 8bit
Content-Type: ', anEmailType   , '; charset=urf-8

' , (text squeakToUtf8).
smtpClient quit.