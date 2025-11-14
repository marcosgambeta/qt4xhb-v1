//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt4xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()
   oWindow:setWindowTitle("Test with HEventFilter class")
   oWindow:resize(640, 480)

   // create button
   oButton := QPushButton():new("show dialog", oWindow)
   oButton:move(20, 20)
   oButton:onClicked({||dialog(oWindow)})

   // show window
   oWindow:show()

   // start application
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL

STATIC FUNCTION dialog(oParent)

   LOCAL oDialog
   LOCAL oLineEdit1
   LOCAL oLineEdit2
   LOCAL oLineEdit3
   LOCAL oEventFilter

   // create dialog window
   oDialog := QDialog():new(oParent)
   oDialog:setObjectName("oDialog")
   oDialog:setWindowTitle("Dialog")
   oDialog:resize(320, 240)

   // create line edit 1
   oLineEdit1 := QLineEdit():new(oDialog)
   oLineEdit1:setObjectName("oLineEdit1")
   oLineEdit1:move(20, 20)
   oLineEdit1:resize(100, 30)

   // create line edit 2
   oLineEdit2 := QLineEdit():new(oDialog)
   oLineEdit2:setObjectName("oLineEdit2")
   oLineEdit2:move(20, 80)
   oLineEdit2:resize(100, 30)

   // create line edit 3
   oLineEdit3 := QLineEdit():new(oDialog)
   oLineEdit3:setObjectName("oLineEdit3")
   oLineEdit3:move(20, 140)
   oLineEdit3:resize(100, 30)

   // create event filter
   oEventFilter := HEventFilter():new(oDialog)
   oEventFilter:onDestroyed({||qout("oEventFilter-destroyed")})
   oEventFilter:setEventFilterCB({|oObject, oEvent|
      LOCAL nType := oEvent:type()

      IF nType == QEvent_Resize
         ? "evento QEvent::Resize no objeto " + oObject:objectName()
      ELSEIF nType == QEvent_FocusIn
         ? "evento QEvent::FocusIn no objeto " + oObject:objectName()
      ELSEIF nType == QEvent_FocusOut
         ? "evento QEvent::FocusOut no objeto " + oObject:objectName()
      ELSEIF nType == QEvent_KeyPress
         ? "evento QEvent::KeyPress no objeto " + oObject:objectName()
      ELSEIF nType == QEvent_KeyRelease
         ? "evento QEvent::KeyRelease no objeto " + oObject:objectName()
      ENDIF

      RETURN .F.
      })

   // install event filter on dialog window
   oDialog:installEventFilter(oEventFilter)
   oLineEdit1:installEventFilter(oEventFilter)
   oLineEdit2:installEventFilter(oEventFilter)
   oLineEdit3:installEventFilter(oEventFilter)

   // execute dialog window
   oDialog:exec()

   // delete dialog window
   oDialog:delete()

RETURN NIL
