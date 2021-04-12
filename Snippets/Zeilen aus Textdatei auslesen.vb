Dim file() As String = System.IO.File.ReadAllLines("Datei.txt")
            TxtBox1.Text = file(1)
            TxtBox2.Text = file(2)
