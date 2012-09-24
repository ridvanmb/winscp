object ConsoleDialog: TConsoleDialog
  Left = 349
  Top = 169
  HelpType = htKeyword
  HelpKeyword = 'ui_console'
  BorderIcons = [biSystemMenu, biMaximize, biHelp]
  Caption = 'Console'
  ClientHeight = 393
  ClientWidth = 551
  Color = clBtnFace
  Constraints.MinHeight = 250
  Constraints.MinWidth = 380
  ParentFont = True
  OldCreateOrder = True
  OnShow = FormShow
  DesignSize = (
    551
    393)
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 551
    Height = 78
    Align = alTop
    Shape = bsBottomLine
  end
  object Label1: TLabel
    Left = 13
    Top = 13
    Width = 78
    Height = 13
    Caption = 'Enter &command:'
    FocusControl = CommandEdit
  end
  object Label2: TLabel
    Left = 13
    Top = 56
    Width = 87
    Height = 13
    Caption = 'Current directory:'
  end
  object Label4: TLabel
    Left = 13
    Top = 34
    Width = 452
    Height = 13
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = 'Do not execute commands that require user-input or data transfer'
  end
  object DirectoryLabel: TPathLabel
    Left = 120
    Top = 56
    Width = 337
    Height = 13
    IndentHorizontal = 0
    IndentVertical = 0
    Align = alNone
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
  end
  object OutputMemo: TMemo
    Left = 0
    Top = 78
    Width = 551
    Height = 315
    TabStop = False
    Align = alClient
    Color = clBtnFace
    PopupMenu = PopupMenu
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 4
    WantReturns = False
    OnContextPopup = OutputMemoContextPopup
  end
  object CancelBtn: TButton
    Left = 472
    Top = 7
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Cancel = True
    Caption = 'Close'
    ModalResult = 2
    TabOrder = 2
  end
  object CommandEdit: THistoryComboBox
    Left = 120
    Top = 9
    Width = 251
    Height = 21
    AutoComplete = False
    Anchors = [akLeft, akTop, akRight]
    MaxLength = 250
    TabOrder = 0
    OnChange = CommandEditChange
  end
  object ExecuteButton: TButton
    Left = 384
    Top = 7
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = '&Execute'
    Default = True
    TabOrder = 1
    OnClick = ExecuteButtonClick
  end
  object HelpButton: TButton
    Left = 472
    Top = 42
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = '&Help'
    TabOrder = 3
    OnClick = HelpButtonClick
  end
  object Images: TImageList
    Left = 456
    Top = 160
    Bitmap = {
      494C010103000400100010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000840000008400
      000084000000840000008400000084000000000000000000000000000000BD00
      00000000000000000000BD0000000000000000000000BD000000000000000000
      0000BD0000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000800000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008400000000000000BD000000000000000000
      0000BD0000000000000000000000BD0000000000000000000000BD0000000000
      000000000000BD00000000000000000000008080800000000000000000000000
      0000000000000000000080000000800000008000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF00840000000000000000000000BD0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BD000000000000008080800000000000000000000000
      0000000000008000000080000000800000008000000080000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000000000000000000000000000BD00
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD0000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000800000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF008400000000000000BD000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD00000000000000000000008080800000000000000000008000
      0000000000000000000000000000800000000000000000000000000000008000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000000000000BD0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BD000000000000008080800000000000800000008000
      0000000000000000000000000000000000000000000000000000000000008000
      0000800000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF000000000000000000FFFF
      FF0084000000840000008400000084000000000000000000000000000000BD00
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD0000000000000000000000000000008080800080000000800000008000
      0000800000008000000000000000000000000000000080000000800000008000
      0000800000008000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084000000FFFFFF00840000000000000000000000BD000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD00000000000000000000008080800000000000800000008000
      0000000000000000000000000000000000000000000000000000000000008000
      0000800000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000008400000000000000000000000000000000000000BD0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BD000000000000008080800000000000000000008000
      0000000000000000000000000000800000000000000000000000000000008000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF0000000000840000008400000084000000840000008400
      000084000000000000000000000000000000000000000000000000000000BD00
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD0000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000800000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000BD000000000000000000
      0000BD0000000000000000000000000000000000000000000000000000000000
      000000000000BD00000000000000000000008080800000000000000000000000
      0000000000008000000080000000800000008000000080000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD0000000000
      000000000000BD0000000000000000000000BD0000000000000000000000BD00
      00000000000000000000BD000000000000008080800000000000000000000000
      0000000000000000000080000000800000008000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD00
      00000000000000000000BD0000000000000000000000BD000000000000000000
      0000BD0000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000800000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFFFFFF00010000
      FE00EDB77EFD0000FE00B6DB7C7D0000FE00DFFD783D00008000EC177EFD0000
      8000B99B6EED00008000D99D4FE500008000EC97038100008001BE1B4FE50000
      8003DB9D6EED00008007EC377EFD0000807FB7FB783D000080FFDB6D7C7D0000
      81FFEDB77EFD0000FFFFFFFF0001000000000000000000000000000000000000
      000000000000}
  end
  object PopupMenu: TPopupMenu
    Images = Images
    Left = 456
    Top = 224
    object CopyItem: TMenuItem
      Action = EditCopy
    end
    object SelectAllItem: TMenuItem
      Action = EditSelectAll
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object AdjustWindowItem: TMenuItem
      Action = AdjustWindow
    end
  end
  object ActionList: TActionList
    Images = Images
    OnExecute = ActionListExecute
    OnUpdate = ActionListUpdate
    Left = 456
    Top = 192
    object EditCopy: TEditCopy
      Caption = '&Copy'
      ImageIndex = 0
      ShortCut = 16451
    end
    object EditSelectAll: TEditSelectAll
      Caption = 'Select &All'
      ImageIndex = 1
      ShortCut = 16449
    end
    object AdjustWindow: TAction
      Caption = 'Adjust &Window'
      ImageIndex = 2
      ShortCut = 16458
    end
  end
end
