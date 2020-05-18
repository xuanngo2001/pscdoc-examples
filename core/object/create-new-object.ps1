# Define new object.
    $person = New-Object -TypeName PSObject

    # Add properties.
    Add-Member -InputObject $person -MemberType NoteProperty -Name ID        -Value $null
    Add-Member -InputObject $person -MemberType NoteProperty -Name Firstname -Value $null
    Add-Member -InputObject $person -MemberType NoteProperty -Name Lastname  -Value $null

    # Add the GetFullName() method to the $person object.
    Add-Member -InputObject $person -MemberType ScriptMethod -Name GetFullName -Value {
        $this.Firstname + " " + $this.Lastname
    }

# Assign values to new object.
    $person.ID = 12
    $person.Firstname = "John"
    $person.Lastname = "Smith"

# Access properties and method.
    $person.ID
    $person.Firstname
    $person.Lastname
    $person.GetFullName()