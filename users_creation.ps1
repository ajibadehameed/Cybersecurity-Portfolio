Import-Module ActiveDirectory

# Generic information
$Domain = "cyberlearnssh.local" # e.g. Replace with the appropriate domain name
$OUPath = "CN=Users,DC=cyberlearnssh,DC=local"  # Replace with the appropriate Organizational Unit (OU) path in your domain
$Password = "P@ssw0rd0125" # e.g. Formulate your Preferred password



## Sales Department Users

$GroupName = "CN=Sales Dept Users,OU=Groups,DC=cyberlearnssh,DC=local" # Replace with the appropriate Organizational Unit (OU) path in your domain

$SN = "User1"
$FirstName = " Liam"
$LastName = " Smith"
$UserName = "lsmith"
$UserplusDomain = "$UserName@$Domain"

# Display user account being added
echo "Adding $SN Account to Active Directory" 

# Create the new user account
New-ADUser -SamAccountName $UserName -UserPrincipalName $UserplusDomain -GivenName $FirstName -Surname $LastName -Name "$FirstName $LastName" -DisplayName "$FirstName $LastName" -Enabled $true -AccountPassword (ConvertTo-SecureString -AsPlainText $Password -Force) -Path $OUPath

# Add user account to an appropriate group
Add-ADGroupMember -Identity $GroupName -Members $UserName 

# Add user1 to Domain admin group
$DAGroupName = "CN=Domain Admins,CN=Users,DC=cyberlearnssh,DC=local"
Add-ADGroupMember -Identity $DAGroupName -Members $UserName 


$SN = "User2"
$FirstName = " Sophia"
$LastName = " Rodriguez"
$UserName = "srodriguez"
$UserplusDomain = "$UserName@$Domain"

# Display user account being added
echo "Adding $SN Account to Active Directory" 

# Create the new user account
New-ADUser -SamAccountName $UserName -UserPrincipalName $UserplusDomain -GivenName $FirstName -Surname $LastName -Name "$FirstName $LastName" -DisplayName "$FirstName $LastName" -Enabled $true -AccountPassword (ConvertTo-SecureString -AsPlainText $Password -Force) -Path $OUPath

# Add user account to an appropriate group
Add-ADGroupMember -Identity $GroupName -Members $UserName 


## Engineering Department Users
$GroupName = "CN=Engineering Dept Users,OU=Groups,DC=cyberlearnssh,DC=local" # Replace with the appropriate Organizational Unit (OU) path in your domain

$SN = "User3"
$FirstName = " Benjamin"
$LastName = " Clark"
$UserName = "bclark"
$UserplusDomain = "$UserName@$Domain"

# Display user account being added
echo "Adding $SN Account to Active Directory" 

# Create the new user account
New-ADUser -SamAccountName $UserName -UserPrincipalName $UserplusDomain -GivenName $FirstName -Surname $LastName -Name "$FirstName $LastName" -DisplayName "$FirstName $LastName" -Enabled $true -AccountPassword (ConvertTo-SecureString -AsPlainText $Password -Force) -Path $OUPath

# Add user account to an appropriate group
Add-ADGroupMember -Identity $GroupName -Members $UserName 

# Add user6 to Domain admin group
$DAGroupName = "CN=Domain Admins,CN=Users,DC=cyberlearnssh,DC=local"
Add-ADGroupMember -Identity $DAGroupName -Members $UserName 


$SN = "User4"
$FirstName = " Harper"
$LastName = " Martinez"
$UserName = "hmartinez"
$UserplusDomain = "$UserName@$Domain"

# Display user account being added
echo "Adding $SN Account to Active Directory" 

# Create the new user account
New-ADUser -SamAccountName $UserName -UserPrincipalName $UserplusDomain -GivenName $FirstName -Surname $LastName -Name "$FirstName $LastName" -DisplayName "$FirstName $LastName" -Enabled $true -AccountPassword (ConvertTo-SecureString -AsPlainText $Password -Force) -Path $OUPath

# Add user account to an appropriate group
Add-ADGroupMember -Identity $GroupName -Members $UserName 

