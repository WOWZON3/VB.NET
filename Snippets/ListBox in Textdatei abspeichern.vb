For Each eintrag In ListBox1.Items
            System.IO.File.AppendAllText(".\Database.bdt", eintrag)
            System.IO.File.AppendAllText(".\Database.bdt", vbNewLine)
        Next
