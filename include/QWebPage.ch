/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QWEBPAGE_CH
#define QWEBPAGE_CH

/*
enum QWebPage::ErrorDomain
*/
#define QWebPage_QtNetwork                                           0
#define QWebPage_Http                                                1
#define QWebPage_WebKit                                              2

/*
enum QWebPage::Extension
*/
#define QWebPage_ChooseMultipleFilesExtension                        0
#define QWebPage_ErrorPageExtension                                  1

/*
enum QWebPage::FindFlag
flags QWebPage::FindFlags
*/
#define QWebPage_FindBackward                                        1
#define QWebPage_FindCaseSensitively                                 2
#define QWebPage_FindWrapsAroundDocument                             4
#define QWebPage_HighlightAllOccurrences                             8

/*
enum QWebPage::LinkDelegationPolicy
*/
#define QWebPage_DontDelegateLinks                                   0
#define QWebPage_DelegateExternalLinks                               1
#define QWebPage_DelegateAllLinks                                    2

/*
enum QWebPage::NavigationType
*/
#define QWebPage_NavigationTypeLinkClicked                           0
#define QWebPage_NavigationTypeFormSubmitted                         1
#define QWebPage_NavigationTypeBackOrForward                         2
#define QWebPage_NavigationTypeReload                                3
#define QWebPage_NavigationTypeFormResubmitted                       4
#define QWebPage_NavigationTypeOther                                 5

/*
enum QWebPage::WebAction
*/
#define QWebPage_NoWebAction                                         -1
#define QWebPage_OpenLink                                            0
#define QWebPage_OpenLinkInNewWindow                                 1
#define QWebPage_OpenFrameInNewWindow                                2
#define QWebPage_DownloadLinkToDisk                                  3
#define QWebPage_CopyLinkToClipboard                                 4
#define QWebPage_OpenImageInNewWindow                                5
#define QWebPage_DownloadImageToDisk                                 6
#define QWebPage_CopyImageToClipboard                                7
#define QWebPage_Back                                                8
#define QWebPage_Forward                                             9
#define QWebPage_Stop                                                10
#define QWebPage_StopScheduledPageRefresh                            67
#define QWebPage_Reload                                              11
#define QWebPage_ReloadAndBypassCache                                53
#define QWebPage_Cut                                                 12
#define QWebPage_Copy                                                13
#define QWebPage_Paste                                               14
#define QWebPage_Undo                                                15
#define QWebPage_Redo                                                16
#define QWebPage_MoveToNextChar                                      17
#define QWebPage_MoveToPreviousChar                                  18
#define QWebPage_MoveToNextWord                                      19
#define QWebPage_MoveToPreviousWord                                  20
#define QWebPage_MoveToNextLine                                      21
#define QWebPage_MoveToPreviousLine                                  22
#define QWebPage_MoveToStartOfLine                                   23
#define QWebPage_MoveToEndOfLine                                     24
#define QWebPage_MoveToStartOfBlock                                  25
#define QWebPage_MoveToEndOfBlock                                    26
#define QWebPage_MoveToStartOfDocument                               27
#define QWebPage_MoveToEndOfDocument                                 28
#define QWebPage_SelectNextChar                                      29
#define QWebPage_SelectPreviousChar                                  30
#define QWebPage_SelectNextWord                                      31
#define QWebPage_SelectPreviousWord                                  32
#define QWebPage_SelectNextLine                                      33
#define QWebPage_SelectPreviousLine                                  34
#define QWebPage_SelectStartOfLine                                   35
#define QWebPage_SelectEndOfLine                                     36
#define QWebPage_SelectStartOfBlock                                  37
#define QWebPage_SelectEndOfBlock                                    38
#define QWebPage_SelectStartOfDocument                               39
#define QWebPage_SelectEndOfDocument                                 40
#define QWebPage_DeleteStartOfWord                                   41
#define QWebPage_DeleteEndOfWord                                     42
#define QWebPage_SetTextDirectionDefault                             43
#define QWebPage_SetTextDirectionLeftToRight                         44
#define QWebPage_SetTextDirectionRightToLeft                         45
#define QWebPage_ToggleBold                                          46
#define QWebPage_ToggleItalic                                        47
#define QWebPage_ToggleUnderline                                     48
#define QWebPage_InspectElement                                      49
#define QWebPage_InsertParagraphSeparator                            50
#define QWebPage_InsertLineSeparator                                 51
#define QWebPage_SelectAll                                           52
#define QWebPage_PasteAndMatchStyle                                  54
#define QWebPage_RemoveFormat                                        55
#define QWebPage_ToggleStrikethrough                                 56
#define QWebPage_ToggleSubscript                                     57
#define QWebPage_ToggleSuperscript                                   58
#define QWebPage_InsertUnorderedList                                 59
#define QWebPage_InsertOrderedList                                   60
#define QWebPage_Indent                                              61
#define QWebPage_Outdent                                             62
#define QWebPage_AlignCenter                                         63
#define QWebPage_AlignJustified                                      64
#define QWebPage_AlignLeft                                           65
#define QWebPage_AlignRight                                          66

/*
enum QWebPage::WebWindowType
*/
#define QWebPage_WebBrowserWindow                                    0
#define QWebPage_WebModalDialog                                      1

#endif /* QWEBPAGE_CH */
