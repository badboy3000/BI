object MasterDetailForm: TMasterDetailForm
  Left = 0
  Top = 0
  Caption = 'Master-Detail'
  ClientHeight = 546
  ClientWidth = 768
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 242
    Width = 768
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 201
    ExplicitWidth = 188
  end
  object BIGrid1: TBIGrid
    Left = 0
    Top = 41
    Width = 768
    Height = 201
    Align = alTop
    UseDockManager = False
    ParentBackground = False
    TabOrder = 0
    Alternate.Enabled = True
    DataSource = DataSource1
  end
  object PanelDetail: TPanel
    Left = 0
    Top = 245
    Width = 768
    Height = 260
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object BIGrid2: TBIGrid
      Left = 0
      Top = 0
      Width = 456
      Height = 260
      Align = alLeft
      UseDockManager = False
      ParentBackground = False
      TabOrder = 0
      Alternate.Enabled = True
      DataSource = DataSource2
      ExplicitLeft = -6
      ExplicitTop = 3
    end
    object BIChart1: TBIChart
      Left = 456
      Top = 0
      Width = 312
      Height = 260
      BackWall.Brush.Gradient.Direction = gdBottomTop
      BackWall.Brush.Gradient.EndColor = clWhite
      BackWall.Brush.Gradient.StartColor = 15395562
      BackWall.Brush.Gradient.Visible = True
      Foot.Font.Color = clBlue
      Foot.Font.Name = 'Verdana'
      Gradient.Direction = gdBottomTop
      Gradient.EndColor = clWhite
      Gradient.MidColor = 15395562
      Gradient.StartColor = 15395562
      LeftWall.Color = 14745599
      Legend.Font.Name = 'Verdana'
      Legend.Shadow.Transparency = 0
      RightWall.Color = 14745599
      Title.Font.Name = 'Verdana'
      Title.Text.Strings = (
        'TBIChart')
      BottomAxis.Axis.Color = 4210752
      BottomAxis.Grid.Color = 11119017
      BottomAxis.LabelsFormat.Font.Name = 'Verdana'
      BottomAxis.TicksInner.Color = 11119017
      BottomAxis.Title.Font.Name = 'Verdana'
      DepthAxis.Axis.Color = 4210752
      DepthAxis.Grid.Color = 11119017
      DepthAxis.LabelsFormat.Font.Name = 'Verdana'
      DepthAxis.TicksInner.Color = 11119017
      DepthAxis.Title.Font.Name = 'Verdana'
      DepthTopAxis.Axis.Color = 4210752
      DepthTopAxis.Grid.Color = 11119017
      DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
      DepthTopAxis.TicksInner.Color = 11119017
      DepthTopAxis.Title.Font.Name = 'Verdana'
      LeftAxis.Axis.Color = 4210752
      LeftAxis.Grid.Color = 11119017
      LeftAxis.LabelsFormat.Font.Name = 'Verdana'
      LeftAxis.TicksInner.Color = 11119017
      LeftAxis.Title.Font.Name = 'Verdana'
      RightAxis.Axis.Color = 4210752
      RightAxis.Grid.Color = 11119017
      RightAxis.LabelsFormat.Font.Name = 'Verdana'
      RightAxis.TicksInner.Color = 11119017
      RightAxis.Title.Font.Name = 'Verdana'
      TopAxis.Axis.Color = 4210752
      TopAxis.Grid.Color = 11119017
      TopAxis.LabelsFormat.Font.Name = 'Verdana'
      TopAxis.TicksInner.Color = 11119017
      TopAxis.Title.Font.Name = 'Verdana'
      Align = alClient
      Color = clWhite
      TabOrder = 1
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 768
    Height = 41
    Align = alTop
    Caption = 'Master'
    TabOrder = 2
    object CheckBox1: TCheckBox
      Left = 12
      Top = 12
      Width = 97
      Height = 17
      Caption = 'Active'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = CheckBox1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 505
    Width = 768
    Height = 41
    Align = alBottom
    Caption = 'Detail'
    TabOrder = 3
    object CheckBox2: TCheckBox
      Left = 12
      Top = 13
      Width = 97
      Height = 17
      Caption = 'Active'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = CheckBox2Click
    end
  end
  object DataSource1: TDataSource
    DataSet = Master
    Left = 232
    Top = 72
  end
  object DataSource2: TDataSource
    DataSet = Detail
    Left = 240
    Top = 264
  end
  object Master: TBIDataset
    RowNumbers = False
    Left = 328
    Top = 72
  end
  object Detail: TBIDataset
    AfterRefresh = DetailAfterRefresh
    Master = Master
    RowNumbers = False
    Left = 320
    Top = 264
  end
end
