object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 241
  Width = 327
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    ScreenCursor = gcrAppWait
    Left = 40
    Top = 96
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM tb_mes ')
    Left = 136
    Top = 8
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\DB_COS.GDB'
      'User_Name=fran'
      'Password=xecreto'
      'Server=casa'
      'DriverID=FB')
    Left = 32
    Top = 8
  end
  object FDQuery2: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM tb_mes')
    Left = 184
    Top = 16
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = FDQuery2
    Left = 232
    Top = 128
  end
  object FDQuery3: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'INSERT INTO TB_COM (COM_COD, COM_FEC, COM_HOR, COM_MES, COM_CAM,' +
        ' COM_SUM, COM_DTO, COM_SUB, COM_SER, COM_IMP, COM_IVA, COM_TOT, ' +
        'COM_PRO, COM_COS, COM_PAG, COM_FAC,   COM_TPO, COM_CAJ, COM_OPE,' +
        ' COM_LIN)'
      ' VALUES ('
      ':COM_COD, '
      ':COM_FEC, '
      ':COM_HOR, '
      ':COM_MES, '
      ':COM_CAM, '
      #39'0'#39', '
      #39'0'#39', '
      #39'0'#39', '
      #39'0'#39', '
      #39'0'#39', '
      #39'0'#39', '
      #39'0'#39', '
      #39'0'#39', '
      #39'0'#39', '
      #39'0'#39', '
      #39'1'#39', '
      #39'F'#39', '
      #39'CAJA1'#39', '
      #39'mariela'#39', '
      #39'1'#39
      ')')
    Left = 136
    Top = 56
    ParamData = <
      item
        Name = 'COM_COD'
        ParamType = ptInput
      end
      item
        Name = 'COM_FEC'
        ParamType = ptInput
      end
      item
        Name = 'COM_HOR'
        ParamType = ptInput
      end
      item
        Name = 'COM_MES'
        ParamType = ptInput
      end
      item
        Name = 'COM_CAM'
        ParamType = ptInput
      end>
  end
  object FDQuery4: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'INSERT INTO TB_COL (COL_COM, COL_HOR, COL_SER, COL_ITE, COL_NOM,' +
        ' COL_POR, COL_CAN, COL_PVP, COL_COS, COL_TOT, COL_STA)'
      ' VALUES ('
      ':COL_COM, '
      ':COL_HOR, '
      ':COL_SER, '
      ':COL_ITE, '
      ':COL_NOM, '
      ':COL_POR, '
      ':COL_CAN, '
      ':COL_PVP, '
      ':COL_COS, '
      ':COL_TOT, '
      #39'M'#39
      ')')
    Left = 192
    Top = 64
    ParamData = <
      item
        Name = 'COL_COM'
        ParamType = ptInput
      end
      item
        Name = 'COL_HOR'
        ParamType = ptInput
      end
      item
        Name = 'COL_SER'
        ParamType = ptInput
      end
      item
        Name = 'COL_ITE'
        ParamType = ptInput
      end
      item
        Name = 'COL_NOM'
        ParamType = ptInput
      end
      item
        Name = 'COL_POR'
        ParamType = ptInput
      end
      item
        Name = 'COL_CAN'
        ParamType = ptInput
      end
      item
        Name = 'COL_PVP'
        ParamType = ptInput
      end
      item
        Name = 'COL_COS'
        ParamType = ptInput
      end
      item
        Name = 'COL_TOT'
        ParamType = ptInput
      end>
  end
  object TB_LOC: TFDTable
    OnPostError = TB_LOCPostError
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'TB_LOC'
    TableName = 'TB_LOC'
    Left = 88
    Top = 176
  end
end