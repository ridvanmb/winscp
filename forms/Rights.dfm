object RightsFrame: TRightsFrame
  Left = 0
  Top = 0
  Width = 163
  Height = 109
  PopupMenu = RightsPopup
  TabOrder = 0
  object OwnerLabel: TLabel
    Left = 4
    Top = 4
    Width = 31
    Height = 13
    Caption = '&Owner'
    FocusControl = OwnerReadCheck
  end
  object GroupLabel: TLabel
    Left = 4
    Top = 24
    Width = 29
    Height = 13
    Caption = '&Group'
    FocusControl = GroupReadCheck
  end
  object OthersLabel: TLabel
    Left = 4
    Top = 44
    Width = 31
    Height = 13
    Caption = 'Ot&hers'
    FocusControl = OthersReadCheck
  end
  object OthersButton: TSpeedButton
    Tag = 3
    Left = 0
    Top = 41
    Width = 53
    Height = 19
    Flat = True
    OnClick = RightsButtonsClick
  end
  object GroupButton: TSpeedButton
    Tag = 2
    Left = 0
    Top = 21
    Width = 53
    Height = 19
    Flat = True
    OnClick = RightsButtonsClick
  end
  object OwnerButton: TSpeedButton
    Tag = 1
    Left = 0
    Top = 1
    Width = 53
    Height = 19
    Flat = True
    OnClick = RightsButtonsClick
  end
  object OctalLabel: TLabel
    Left = 4
    Top = 68
    Width = 25
    Height = 13
    Caption = 'O&ctal'
    FocusControl = OctalEdit
  end
  object OwnerReadCheck: TCheckBox
    Tag = 1
    Left = 55
    Top = 3
    Width = 34
    Height = 17
    Caption = 'R'
    TabOrder = 0
    OnClick = ControlChange
  end
  object OwnerWriteCheck: TCheckBox
    Tag = 2
    Left = 92
    Top = 3
    Width = 34
    Height = 17
    Caption = 'W'
    TabOrder = 1
    OnClick = ControlChange
  end
  object OwnerExecuteCheck: TCheckBox
    Tag = 3
    Left = 129
    Top = 3
    Width = 34
    Height = 17
    Caption = 'X'
    TabOrder = 2
    OnClick = ControlChange
  end
  object GroupReadCheck: TCheckBox
    Tag = 4
    Left = 55
    Top = 23
    Width = 34
    Height = 17
    Caption = 'R'
    TabOrder = 3
    OnClick = ControlChange
  end
  object GroupWriteCheck: TCheckBox
    Tag = 5
    Left = 92
    Top = 23
    Width = 33
    Height = 17
    Caption = 'W'
    TabOrder = 4
    OnClick = ControlChange
  end
  object GroupExecuteCheck: TCheckBox
    Tag = 6
    Left = 129
    Top = 23
    Width = 34
    Height = 17
    Caption = 'X'
    TabOrder = 5
    OnClick = ControlChange
  end
  object OthersReadCheck: TCheckBox
    Tag = 7
    Left = 55
    Top = 43
    Width = 34
    Height = 17
    Caption = 'R'
    TabOrder = 6
    OnClick = ControlChange
  end
  object OthersWriteCheck: TCheckBox
    Tag = 8
    Left = 92
    Top = 43
    Width = 33
    Height = 17
    Caption = 'W'
    TabOrder = 7
    OnClick = ControlChange
  end
  object OthersExecuteCheck: TCheckBox
    Tag = 9
    Left = 129
    Top = 43
    Width = 34
    Height = 17
    Caption = 'X'
    TabOrder = 8
    OnClick = ControlChange
  end
  object OctalEdit: TEdit
    Left = 55
    Top = 64
    Width = 64
    Height = 21
    MaxLength = 3
    TabOrder = 9
    Text = 'OctalEdit'
    OnChange = OctalEditChange
    OnExit = OctalEditExit
  end
  object DirectoriesXCheck: TCheckBox
    Left = 5
    Top = 89
    Width = 156
    Height = 17
    Caption = 'Add &X to directories'
    TabOrder = 10
    OnClick = ControlChange
  end
  object RightsPopup: TPopupMenu
    Images = RightsImages
    Left = 128
    Top = 64
    object Norights1: TMenuItem
      Action = NoRightsAction
    end
    object Defaultrights1: TMenuItem
      Action = DefaultRightsAction
    end
    object Allrights1: TMenuItem
      Action = AllRightsAction
    end
    object Leaveasis1: TMenuItem
      Action = LeaveRightsAsIsAction
    end
  end
  object RightsActions: TActionList
    Images = RightsImages
    OnExecute = RightsActionsExecute
    OnUpdate = RightsActionsUpdate
    Left = 128
    Top = 32
    object NoRightsAction: TAction
      Caption = '&No Rights'
      ImageIndex = 0
      ShortCut = 16462
    end
    object DefaultRightsAction: TAction
      Caption = '&Default Rights'
      ImageIndex = 1
      ShortCut = 16452
    end
    object AllRightsAction: TAction
      Caption = '&All Rights'
      ImageIndex = 2
      ShortCut = 16449
    end
    object LeaveRightsAsIsAction: TAction
      Caption = '&Leave As Is'
      ShortCut = 16460
    end
  end
  object RightsImages: TImageList
    Left = 128
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000007B7B
      00007B7B00007B7B000039312100000000005A5A10007B7B0000000000003931
      2100000000000000000000000000000000000000000000000000000000007B7B
      00007B7B00007B7B000029291000000000005A5A10007B7B0000000000003929
      4A00000000000000000000000000000000000000000073733900737339007373
      39004A4A3900000000004A4A39007373390000000000292929006B086B000000
      00006B086B00000000006B086B00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000BDBD0000F7F7
      0000F7F700007B7B0000BDBD00007B7B0000BDBD00007B7B00007B7B0000217B
      9C000000000000008400FFFFFF00000000000000000000000000BDBD0000DEDE
      0000FFFF00007B7B0000BDBD00007B7B0000BDBD00007B7B00007B7B0000217B
      9C0000000000000000000000000000000000B5BD0000EFEF0000EFEF00007373
      3900B5BD000073733900B5BD0000737339007373390018737B0018737B001873
      7B006B086B006B086B006B086B0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000000000005A5A10000000
      8400FFFFFF009C9C0000F7F700005A5A100042424200393121007B7B00000000
      00000000000000000000000000000000000000000000000000005A5A1000BDBD
      00007B7B00009C9C0000FFFF00005A5A100042424200292910007B7B00000000
      0000000000000000000000000000000000004A4A3900B5BD000073733900B5BD
      0000EFEF0000737339004A4A39004A4A39007373390010ADAD0010ADAD0073AD
      AD004A4A39000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000084000000
      840000008400FFFFFF005A5A10008484840084848400424242005A5A5A000000
      000000008400FFFFFF0000000000000000000000000000000000000000000000
      00005A5A1000DEDE00005A5A1000848484008484840042424200635A63000000
      00000000000000000000000000000000000000000000000000004A4A3900EFEF
      000073733900737339008C8C8C004A4A39004A4A390010ADAD0073ADAD00EFF7
      EF004A4A39000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000084000000
      840000008400FFFFFF00848484006B6B6B004242420000000000393121000000
      8400FFFFFF000000000000000000000000000000000000000000000000000000
      0000292910002929100084848400635A63004242420000000000292910000000
      0000000000000000000000000000000000000000000000000000292929002929
      290073733900737339004A4A3900000000002929290010ADAD00EFF7EF008C8C
      8C008C8C8C00737339002929290000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      84000000840000008400FFFFFF00848484008484840084848400000084000000
      8400FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000029291000635A6300848484008484840084848400848484004242
      4200000000000000000000000000000000000000000000000000000000002929
      29004A4A39008C8C8C008C8C8C008C8C8C008C8C8C0029292900EFF7EF00EFF7
      EF00EFF7EF00EFF7EF00737339000000000000008400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000084000000840000008400FFFFFF00848484000000840000008400FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000042424200848484008484840084848400635A63004242
      4200000000000000000000000000000000000000000000000000000000000000
      00004A4A39008C8C8C00737339008C8C8C004A4A39004A4A3900EFF7EF00EFF7
      EF00EFF7EF008C8C8C002929290000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000002929290018737B0018737B000000000000000000000000000000
      0000000000000000840000008400000084000000840000008400FFFFFF004242
      4200000000000000000000000000000000000000000000000000000000000000
      00000000000000000000635A6300848484008484840084848400848484004242
      4200000000000000000000000000000000000000000000000000000000000000
      00004A4A39008C8C8C008C8C8C008C8C8C008C8C8C0029292900EFF7EF00EFF7
      EF00EFF7EF0073ADAD008C8C8C0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B7B00007B7B00007B7B0000393121000000
      00005A5A10007B7B000000000000393121000000000000000000000000000000
      00000000000042424200000084000000840000008400FFFFFF00848484004242
      42006B6B6B000000000000000000000000000000000000000000000000000000
      0000000000004242420084848400848484008484840084848400848484004242
      42006B6B6B000000000000000000000000000000000000000000000000004A4A
      39008C8C8C008C8C8C00737339008C8C8C008C8C8C002929290073733900EFF7
      EF00FF7B7B00EFF7EF004A4A390000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000840000008400000084000000840000008400FFFFFF004242
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000042424200848484008484840029291000848484004242
      4200000000000000000000000000000000000000000000000000000000000000
      0000292929008C8C8C008C8C8C00000000008C8C8C0029292900EFF7EF00EFF7
      EF008C8C8C008C8C8C000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000084000000840000008400FFFFFF008484840000008400FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004242420084848400635A6300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004A4A39008C8C8C004A4A39000000000073ADAD0018737B00EFF7
      EF0073ADAD00EFF7EF004A4A390000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000042424200000084000000
      840000008400FFFFFF0084848400424242000000000000000000000084000000
      84000000840000008400FFFFFF00424242008484840084848400000084000000
      8400FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000424242008484840084848400292910000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000292929008C8C8C008C8C8C002929290073ADAD0010ADAD0010AD
      AD0008F7F70010ADAD0008F7F70000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000008400000084000000
      840000008400FFFFFF0000000000000000000000000000000000000000000000
      840000008400FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000073ADAD0063DEDE0008F7
      F70008F7F70008F7F7002929290000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000840000008400FFFF
      FF00000000000000000000000000000000000000000000000000000000000039
      39000000840000008400FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000039
      3900000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002929290018737B001873
      7B0018737B00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00E00FE00F8001FF00C009C00F00000500
      C01FC01F00030500C013E01F80070500C007F01FC001FF00E007E00F8001FF00
      E00FE00F8001FF00C00FC00F0000FF00C007C0070001FF00C00FC00F0001FF00
      C01FC01F0000FF00C007C01F0000FF008003C01F0001FF008001E00F8003FF00
      F01FF01FC07FFF00FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
end