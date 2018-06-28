# Microsoft Exchange 2010

Befehle für die Exchange Managenment Console für Microsoft Exchange 2010

## Mailbox für eine bestimmte Email-Adresse:

```powershell
get-Recipient -results unlimited | where { $_.emailaddresses -match $MAILADDRESS } | select name,emailaddresses,recipienttype
```

## Mailbox löschen 

```powershell
Remove-Mailbox -Identity <identity> -Permanent $true
```

## Deaktivierte Mailbox löschen

Überprüfen, ob Postfach deaktiviert ist und Guid auslesen: 

```powershell
Get-MailboxDatabase | Get-MailboxStatistics | Where { $_.DisplayName -eq $DISPLAYNAME } | fl DisplayName,MailboxGuid,Database,DisconnectReason
````

Deaktiviertes Postfach löschen:

```powershell
Remove-StoreMailbox -Database <Database> -Identity <MailboxGuid> -MailboxState Disabled
```

## Mailboxen auflisten mit aktiviertem POP oder IMAP:

```powershell
Get-CASMailbox -Filter { PopEnabled -eq $true -or ImapEnabled -eq $true }
```

## Mitglieder einer Verteilergruppe als CSV exportieren

```powershell
Get-DistributionGroupMember $GRUPPENNAME | Select-Object FirstName, LastName, PrimarySmtpAddress | Export-Csv $FILE
````

