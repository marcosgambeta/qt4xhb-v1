/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
enum QAccessible::Action
*/
#define QAccessible_DefaultAction                                    0
#define QAccessible_Press                                            -1
#define QAccessible_SetFocus                                         -2
#define QAccessible_Increase                                         -3
#define QAccessible_Decrease                                         -4
#define QAccessible_Accept                                           -5
#define QAccessible_Cancel                                           -6
#define QAccessible_Select                                           -7
#define QAccessible_ClearSelection                                   -8
#define QAccessible_RemoveSelection                                  -9
#define QAccessible_ExtendSelection                                  -10
#define QAccessible_AddToSelection                                   -11
#define QAccessible_FirstStandardAction                              QAccessible_Press
#define QAccessible_LastStandardAction                               QAccessible_AddToSelection

/*
enum QAccessible::Event
*/
#define QAccessible_AcceleratorChanged                               0x80C0
#define QAccessible_ActionChanged                                    0x0101
#define QAccessible_ActiveDescendantChanged                          0x0102
#define QAccessible_Alert                                            0x0002
#define QAccessible_AttributeChanged                                 0x0103
#define QAccessible_ContextHelpEnd                                   0x000D
#define QAccessible_ContextHelpStart                                 0x000C
#define QAccessible_DefaultActionChanged                             0x80B0
#define QAccessible_DescriptionChanged                               0x800D
#define QAccessible_DialogEnd                                        0x0011
#define QAccessible_DialogStart                                      0x0010
#define QAccessible_DocumentContentChanged                           0x0104
#define QAccessible_DocumentLoadComplete                             0x0105
#define QAccessible_DocumentLoadStopped                              0x0106
#define QAccessible_DocumentReload                                   0x0107
#define QAccessible_DragDropEnd                                      0x000F
#define QAccessible_DragDropStart                                    0x000E
#define QAccessible_Focus                                            0x8005
#define QAccessible_ForegroundChanged                                0x0003
#define QAccessible_HelpChanged                                      0x80A0
#define QAccessible_HyperlinkEndIndexChanged                         0x0108
#define QAccessible_HyperlinkNumberOfAnchorsChanged                  0x0109
#define QAccessible_HyperlinkSelectedLinkChanged                     0x010A
#define QAccessible_HyperlinkStartIndexChanged                       0x010D
#define QAccessible_HypertextChanged                                 0x010E
#define QAccessible_HypertextLinkActivated                           0x010B
#define QAccessible_HypertextLinkSelected                            0x010C
#define QAccessible_HypertextNLinksChanged                           0x010F
#define QAccessible_LocationChanged                                  0x800B
#define QAccessible_MenuCommand                                      0x0018
#define QAccessible_MenuEnd                                          0x0005
#define QAccessible_MenuStart                                        0x0004
#define QAccessible_NameChanged                                      0x800C
#define QAccessible_ObjectAttributeChanged                           0x0110
#define QAccessible_ObjectCreated                                    0x8000
#define QAccessible_ObjectDestroyed                                  0x8001
#define QAccessible_ObjectHide                                       0x8003
#define QAccessible_ObjectReorder                                    0x8004
#define QAccessible_ObjectShow                                       0x8002
#define QAccessible_PageChanged                                      0x0111
#define QAccessible_ParentChanged                                    0x800F
#define QAccessible_PopupMenuEnd                                     0x0007
#define QAccessible_PopupMenuStart                                   0x0006
#define QAccessible_ScrollingEnd                                     0x0013
#define QAccessible_ScrollingStart                                   0x0012
#define QAccessible_SectionChanged                                   0x0112
#define QAccessible_SelectionAdd                                     0x8007
#define QAccessible_SelectionRemove                                  0x8008
#define QAccessible_Selection                                        0x8006
#define QAccessible_SelectionWithin                                  0x8009
#define QAccessible_SoundPlayed                                      0x0001
#define QAccessible_StateChanged                                     0x800A
#define QAccessible_TableCaptionChanged                              0x0113
#define QAccessible_TableColumnDescriptionChanged                    0x0114
#define QAccessible_TableColumnHeaderChanged                         0x0115
#define QAccessible_TableModelChanged                                0x0116
#define QAccessible_TableRowDescriptionChanged                       0x0117
#define QAccessible_TableRowHeaderChanged                            0x0118
#define QAccessible_TableSummaryChanged                              0x0119
#define QAccessible_TextAttributeChanged                             0x011A
#define QAccessible_TextCaretMoved                                   0x011B
#define QAccessible_TextColumnChanged                                0x011D
#define QAccessible_TextInserted                                     0x011E
#define QAccessible_TextRemoved                                      0x011F
#define QAccessible_TextSelectionChanged                             0x0121
#define QAccessible_TextUpdated                                      0x0120
#define QAccessible_ValueChanged                                     0x800E
#define QAccessible_VisibleDataChanged                               0x0122

/*
enum QAccessible::Method
*/
#define QAccessible_ListSupportedMethods                             0
#define QAccessible_SetCursorPosition                                1
#define QAccessible_GetCursorPosition                                2

/*
enum QAccessible::RelationFlag
flags QAccessible::Relation
*/
#define QAccessible_Unrelated                                        0x00000000
#define QAccessible_Self                                             0x00000001
#define QAccessible_Ancestor                                         0x00000002
#define QAccessible_Child                                            0x00000004
#define QAccessible_Descendent                                       0x00000008
#define QAccessible_Sibling                                          0x00000010
#define QAccessible_Up                                               0x00000100
#define QAccessible_Down                                             0x00000200
#define QAccessible_Left                                             0x00000400
#define QAccessible_Right                                            0x00000800
#define QAccessible_Covers                                           0x00001000
#define QAccessible_Covered                                          0x00002000
#define QAccessible_FocusChild                                       0x00010000
#define QAccessible_Label                                            0x00020000
#define QAccessible_Labelled                                         0x00040000
#define QAccessible_Controller                                       0x00080000
#define QAccessible_Controlled                                       0x00100000

/*
enum QAccessible::Role
*/
#define QAccessible_AlertMessage                                     0x00000008
#define QAccessible_Animation                                        0x00000036
#define QAccessible_Application                                      0x0000000E
#define QAccessible_Assistant                                        0x00000020
#define QAccessible_Border                                           0x00000013
#define QAccessible_ButtonDropDown                                   0x00000038
#define QAccessible_ButtonDropGrid                                   0x0000003A
#define QAccessible_ButtonMenu                                       0x00000039
#define QAccessible_Canvas                                           0x00000035
#define QAccessible_Caret                                            0x00000007
#define QAccessible_Cell                                             0x0000001D
#define QAccessible_Chart                                            0x00000011
#define QAccessible_CheckBox                                         0x0000002C
#define QAccessible_Client                                           0x0000000A
#define QAccessible_Clock                                            0x0000003D
#define QAccessible_Column                                           0x0000001B
#define QAccessible_ColumnHeader                                     0x00000019
#define QAccessible_ComboBox                                         0x0000002E
#define QAccessible_Cursor                                           0x00000006
#define QAccessible_Desktop                                          0x00000041
#define QAccessible_Dial                                             0x00000031
#define QAccessible_Dialog                                           0x00000012
#define QAccessible_Document                                         0x0000000F
#define QAccessible_EditableText                                     0x0000002A
#define QAccessible_Equation                                         0x00000037
#define QAccessible_Graphic                                          0x00000028
#define QAccessible_Grip                                             0x00000004
#define QAccessible_Grouping                                         0x00000014
#define QAccessible_HelpBalloon                                      0x0000001F
#define QAccessible_HotkeyField                                      0x00000032
#define QAccessible_Indicator                                        0x00000027
#define QAccessible_LayeredPane                                      0x0000003F
#define QAccessible_Link                                             0x0000001E
#define QAccessible_List                                             0x00000021
#define QAccessible_ListItem                                         0x00000022
#define QAccessible_MenuBar                                          0x00000002
#define QAccessible_MenuItem                                         0x0000000C
#define QAccessible_NoRole                                           0x00000000
#define QAccessible_PageTab                                          0x00000025
#define QAccessible_PageTabList                                      0x0000003C
#define QAccessible_Pane                                             0x00000010
#define QAccessible_PopupMenu                                        0x0000000B
#define QAccessible_ProgressBar                                      0x00000030
#define QAccessible_PropertyPage                                     0x00000026
#define QAccessible_PushButton                                       0x0000002B
#define QAccessible_RadioButton                                      0x0000002D
#define QAccessible_Row                                              0x0000001C
#define QAccessible_RowHeader                                        0x0000001A
#define QAccessible_ScrollBar                                        0x00000003
#define QAccessible_Separator                                        0x00000015
#define QAccessible_Slider                                           0x00000033
#define QAccessible_Sound                                            0x00000005
#define QAccessible_SpinBox                                          0x00000034
#define QAccessible_Splitter                                         0x0000003E
#define QAccessible_StaticText                                       0x00000029
#define QAccessible_StatusBar                                        0x00000017
#define QAccessible_Table                                            0x00000018
#define QAccessible_Terminal                                         0x00000040
#define QAccessible_TitleBar                                         0x00000001
#define QAccessible_ToolBar                                          0x00000016
#define QAccessible_ToolTip                                          0x0000000D
#define QAccessible_Tree                                             0x00000023
#define QAccessible_TreeItem                                         0x00000024
#define QAccessible_UserRole                                         0x0000ffff
#define QAccessible_Whitespace                                       0x0000003B
#define QAccessible_Window                                           0x00000009

/*
enum QAccessible::StateFlag
flags QAccessible::State
*/
#define QAccessible_Animated                                         0x00004000
#define QAccessible_Busy                                             0x00000800
#define QAccessible_Checked                                          0x00000010
#define QAccessible_Collapsed                                        0x00000400
#define QAccessible_DefaultButton                                    0x00000100
#define QAccessible_Expanded                                         0x00000200
#define QAccessible_ExtSelectable                                    0x02000000
#define QAccessible_Focusable                                        0x00100000
#define QAccessible_Focused                                          0x00000004
#define QAccessible_HasPopup                                         0x40000000
#define QAccessible_HotTracked                                       0x00000080
#define QAccessible_Invisible                                        0x00008000
#define QAccessible_Linked                                           0x00400000
#define QAccessible_Marqueed                                         0x00002000
#define QAccessible_Mixed                                            0x00000020
#define QAccessible_Modal                                            0x80000000
#define QAccessible_Movable                                          0x00040000
#define QAccessible_MultiSelectable                                  0x01000000
#define QAccessible_Normal                                           0x00000000
#define QAccessible_Offscreen                                        0x00010000
#define QAccessible_Pressed                                          0x00000008
#define QAccessible_Protected                                        0x20000000
#define QAccessible_ReadOnly                                         0x00000040
#define QAccessible_Selectable                                       0x00200000
#define QAccessible_Selected                                         0x00000002
#define QAccessible_SelfVoicing                                      0x00080000
#define QAccessible_Sizeable                                         0x00020000
#define QAccessible_Traversed                                        0x00800000
#define QAccessible_Unavailable                                      0x00000001

/*
enum QAccessible::Text
*/
#define QAccessible_Name                                             0
#define QAccessible_Description                                      1
#define QAccessible_Value                                            2
#define QAccessible_Help                                             3
#define QAccessible_Accelerator                                      4
#define QAccessible_UserText                                         0x0000ffff
