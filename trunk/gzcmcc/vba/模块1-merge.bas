Attribute VB_Name = "ģ��1"
Sub CombineWorkbooks()
    Dim FilesToOpen
    Dim x As Integer
    Application.ScreenUpdating = True
    FilesToOpen = Application.GetOpenFilename(FileFilter:="Micrsofe Excel�ļ�(*.xls), *.xls", MultiSelect:=True, Title:="Ҫ�ϲ����ļ�")
   ' If FilesToOpen = False Then GoTo Cancel
    Set sk = Workbooks.Open(Filename:="E:\book1.xls")         'ע���Լ��޸�·��
    For x = 1 To UBound(FilesToOpen)
        Set wk = Workbooks.Open(Filename:=FilesToOpen(x))
        wk.Sheets("ԭʼ��ͳ").Activate
        Range("E1:F1").Select
        Range(Selection, Selection.End(xlDown)).Select
        Selection.Activate
        Selection.Copy

        sk.Sheets("sheet1").Activate
        Cells(Range("A65536").End(xlUp).Row + 1, 1).Select
        ActiveSheet.Paste
        
        wk.Sheets("ԭʼ��ͳ").Activate
        Range("AF1:AH1").Select
        Range(Selection, Selection.End(xlDown)).Select
        Selection.Activate
        Selection.Copy

        sk.Sheets("sheet1").Activate
        Cells(Range("C65536").End(xlUp).Row + 1, 3).Select
        ActiveSheet.Paste
        
        
        sk.Save                     '�����޸�
        'sk.Close
        wk.Close

    Next x
    MsgBox "�ϲ��ɹ���ɣ�"
 End Sub
