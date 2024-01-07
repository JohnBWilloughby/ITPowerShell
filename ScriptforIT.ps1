Add-Type -assembly System.Windows.Forms
$main_form = New-Object System.Windows.Forms.Form
$main_form.Text ='Remote Tasks'
$main_form.Width = 600
$main_form.Height = 400
$main_form.AutoSize = $true
$LabelFont = [System.Drawing.Font]::new("Microsoft Sans Serif", 10, [System.Drawing.FontStyle]::Bold)

#$Label1 = New-Object System.Windows.Forms.Label
#$Label1.Text = "AD users"
#$Label1.Location = New-Object System.Drawing.Point(10,30)
#$Label1.AutoSize = $true

#$ComboBox = New-Object System.Windows.Forms.ComboBox
#$ComboBox.Width = 300
#$Users = Get-ADuser -filter * -Properties SamAccountName

#Foreach ($User in $Users)
#    {
#        $ComboBox.Items.Add($User.SamAccountName);
#    }
#$ComboBox.Location  = New-Object System.Drawing.Point(70,30)

#$Label2 = New-Object System.Windows.Forms.Label
#$Label2.Text = "Password Last Set:"
#$Label2.Location  = New-Object System.Drawing.Point(10,60)
#$Label2.AutoSize = $true

#$Label3 = New-Object System.Windows.Forms.Label
#$Label3.Text = ""
#$Label3.Visible = $true
#$Label3.Location  = New-Object System.Drawing.Point(110,60)
#$Label3.AutoSize = $true

#$Button3 = New-Object System.Windows.Forms.Button
#$Button3.Location = New-Object System.Drawing.Size(400,30)
#$Button3.Size = New-Object System.Drawing.Size(120,23)
#$Button3.Text = "Check"


$Label4 = New-Object System.Windows.Forms.Label
$Label4.Text = "Active Directory Replication"
$Label4.Visible = $true
$Label4.Location  = New-Object System.Drawing.Point(10,50)
$Label4.AutoSize = $true

$Button4 = New-Object System.Windows.Forms.Button
$Button4.Location = New-Object System.Drawing.Size(10,70)
$Button4.Size = New-Object System.Drawing.Size(125,23)
$Button4.Text = "Run AD Replication"

$Label4a = New-Object System.Windows.Forms.Label 
$Label4a.Text = "Active Directory Replication Running"
$Label4a.ForeColor = 'Green'
$Label4a.Font = $LabelFont 
$Label4a.Location = New-Object System.Drawing.Point(10,70)
$Label4a.AutoSize = $true 
$Label4a.Visible = $flase 

$Label5 = New-Object System.Windows.Forms.Label
$Label5.Text = "Azure Directory Synchronization"
$Label5.Visible = $true
$Label5.Location  = New-Object System.Drawing.Point(200,50)
$Label5.AutoSize = $true

$Label5a = New-Object System.Windows.Forms.Label 
$Label5a.Text = "Azure Replication Running"
$Label5a.ForeColor = 'Green'
$Label5a.Font = $LabelFont 
$Label5a.Location = New-Object System.Drawing.Point(200,70)
$Label5a.AutoSize = $true 
$Label5a.Visible = $flase 

$Button5 = New-Object System.Windows.Forms.Button
$Button5.Location = New-Object System.Drawing.Size(200,70)
$Button5.Size = New-Object System.Drawing.Size(125,23)
$Button5.Text = "Run Azure Replication"


$Label6 = New-Object System.Windows.Forms.Label
$Label6.Text = "Add O365 Mailbox"
$Label6.Location = New-Object System.Drawing.Point(10,150)
$Label6.Autosize = $True 

$TextBox6 = New-Object System.Windows.Forms.TextBox
$TextBox6.Location = New-Object System.Drawing.Point (125,150)
$TextBox6.Size = New-Object System.Drawing.Size (100,23)


$Button6 = New-Object System.Windows.Forms.Button
$Button6.Location = New-Object System.Drawing.Size(250,150)
$Button6.Size = New-Object System.Drawing.Size(100,23)
$Button6.Text = "Add"



#$main_form.Controls.Add($ComboBox)
#$main_form.Controls.Add($Label1)
#$main_form.Controls.Add($Label2)
#$main_form.Controls.Add($Label3)
#$main_form.Controls.Add($Button3)
$main_form.Controls.Add($Label4)
$main_form.Controls.Add($Label4a)
$main_form.Controls.Add($Button4)
$main_form.Controls.Add($Label5)
$main_form.Controls.Add($Label5a)
$main_form.Controls.Add($Button5)
$main_form.Controls.Add($Label6)
$main_form.Controls.Add($TextBox6)
$main_form.Controls.Add($Button6)



$menuMain = New-Object System.Windows.Forms.MenuStrip
$mainToolStrip = New-Object System.Windows.Forms.ToolStrip
$menuFile = New-Object System.Windows.Forms.ToolStripMenuItem
$menuOpen = New-Object System.Windows.Forms.ToolStripMenuItem
$menuSave = New-Object System.Windows.Forms.ToolStripMenuItem
$menuExit = New-Object System.Windows.Forms.ToolStripMenuItem
$menuHelp = New-Object System.Windows.Forms.ToolStripMenuItem
$menuAbout = New-Object System.Windows.Forms.ToolStripMenuItem
#$toolStripOpen = New-Object System.Windows.Forms.ToolStripButton
#$toolStripSave = New-Object System.Windows.Forms.ToolStripButton
#$toolStripExit = New-Object System.Windows.Forms.ToolStripButton
#$toolStripAbout = New-Object System.Windows.Forms.ToolStripButton


$main_form.MainMenuStrip = $menuMain
$main_form.Controls.Add($menuMain)
[void]$main_form.Controls.Add($mainToolStrip)

## Show Menu Bar
[void]$main_form.Controls.Add($menuMain)

# Menu: File
$menuFile.Text = "File"
[void]$menuMain.Items.Add($menuFile)

# Menu: File -> Open
$menuOpen.Text         = "Open"
$menuOpen.Add_Click({OpenFile})
[void]$menuFile.DropDownItems.Add($menuOpen)

# Menu: File -> Save
$menuSave.Text         = "Save"
$menuSave.Add_Click({SaveFile})
[void]$menuFile.DropDownItems.Add($menuSave)

# Menu: File -> Exit
$menuExit.Text         = "Exit"
$menuExit.Add_Click({$main_Form.Close()})
[void]$menuFile.DropDownItems.Add($menuExit)

# Menu: Help
$menuHelp.Text      = "Help"
[void]$menuMain.Items.Add($menuHelp)

# Menu: Help -> About
$menuAbout.Text      = "About"
$menuAbout.Add_Click({ShowAbout})
[void]$menuHelp.DropDownItems.Add($menuAbout)


function ShowAbout {
    [void] [System.Windows.Forms.MessageBox]::Show( "A collection of PowerShell Scripts used with a graphical user interface with dialog elements and menus v1.1", "About script", "OK", "Information" )
}

function OpenFile {

[void] [System.Windows.Forms.MessageBox]::Show( "OpenFile, SaveFile, mabye something else", "OpenFile Script", "OK", "Information" )

}

function SaveFile {

[void] [System.Windows.Forms.MessageBox]::Show( "OpenFile, SaveFile, mabye something else", "SaveFile script", "OK", "Information" )

}

#$ButtonClickEvent3 = {
#  $Label3.Text =  [datetime]::FromFileTime((Get-ADUser -identity $ComboBox.selectedItem -Properties pwdLastSet).pwdLastSet).ToString('MM/dd/yyyy @ hh:mm:ss tt ')
#  # $main_Form.Close()
#}

$ButtonClickEvent4 = {
   # Invoke-Command  -ComputerName NYDC04 -ScriptBlock {schtasks /run /S NYDC04 /tn "RemoteReplAdmin"}
	$Button4.Visible = $False
    $Label4a.Visible = $true
	$main_form.refresh 
    Start-Countdown -Seconds 20 -Message "a"
    $Button4.Visible = $true
    $main_form.refresh 
}

$ButtonClickEvent5 = {
   # Invoke-Command  -ComputerName NYAZ02 -ScriptBlock {schtasks /run /S NYAZ02 /tn "RemoteReplAZ"}
    $Button5.Visible = $False
    $Label5a.Visible = $true
    $main_form.refresh 
    Start-Countdown -Seconds 30 -Message "b"
    $Label5a.Visible = $false
    $Button5.Visible = $true
    $main_form.refresh 
}

$ButtonClickEvent6 = {
	$UserCredential = Get-Credential
    #$creds = Get-Credential $UserName
    #$getUsername = $creds.GetNetworkCredential( ).UserName
    #$getPassword = $creds.GetNetworkCredential( ).Password

    $O365User = $TextBox6.Text
    $O365User = $O365User.Trim()
    
	$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri http://nymail04.avh.com/PowerShell/ -Authentication Kerberos -Credential $UserCredential
	Import-PSSession $Session -DisableNameChecking
	Enable-RemoteMailbox %$O365User% -RemoteRoutingAddress %$O365User%@axinn.mail.onmicrosoft.com
	Remove-PSSession $Session
	$TextBox6.Text = "" 
    }

#$Button3.Add_Click($ButtonClickEvent3)
$Button4.Add_Click($ButtonClickEvent4)
$Button5.Add_Click($ButtonClickEvent5)
$Button6.Add_Click($ButtonClickEvent6)


$main_form.StartPosition = "CenterScreen"
$main_form.BringToFront()
$main_form.Add_Shown({$TextBox6.Select()})
$main_form.ShowDialog()


Function Start-Countdown
{   <#
    .SYNOPSIS
        Provide a graphical countdown if you need to pause a script for a period of time
    .PARAMETER Seconds
        Time, in seconds, that the function will pause
    .PARAMETER Messge
        Message you want displayed while waiting
    .EXAMPLE
        Start-Countdown -Seconds 30 -Message Please wait while Active Directory replicates data...
    #>
    Param(
        [Int32]$Seconds = 10,
        [string]$Message = ""
    )
    ForEach ($Count in (1..$Seconds))
    { 
            Start-Sleep -Milliseconds 500       
            IF (($Count % 2) -eq 0)
            {
                IF ($Message.contains("a"))
                {
                    $Label4a.ForeColor = 'Green'
                }else {
                    $Label5a.ForeColor = 'Green'
                }
            }
            IF (($Count % 2) -eq 1) 
            {
                IF ($Message.contains("a"))
                {
                    $Label4a.ForeColor = 'Blue'
                }else {
                    $Label5a.ForeColor = 'Blue'
                }
            }  
    }
 #   Done
}






<# new Code to implement 

	$UserCredential = Get-Credential
	$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri http://nymail04.avh.com/PowerShell/ -Authentication Kerberos -Credential $UserCredential
	Import-PSSession $Session -DisableNameChecking
	Enable-RemoteMailbox %$O365User% -RemoteRoutingAddress %$O365User%@axinn.mail.onmicrosoft.com
	Remove-PSSession $Session


    Get-Recipient -Identity <username> | Set-Mailbox -CustomAttribute1 "AVH"
    Get-Recipient -Filter '(saMName -eq <value>)' | Set-Mailbox -CustomAttribute1 "AVH"

    Set-DistributionGroup -Identity <GroupName> -CustomAttribute1 "AVH"


#>