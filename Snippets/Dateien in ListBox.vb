For Each a As String In IO.Directory.GetFiles("C:\")
            Dim fi As New IO.FileInfo(a)
            ListBox1.Items.Add(fi.Name)
        Next
