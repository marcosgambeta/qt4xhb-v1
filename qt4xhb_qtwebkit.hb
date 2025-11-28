//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#define RUNMOC(file) run(cMocExe + " " + file + " -o " + strtran(file, ".hpp", "Moc.cpp"))

FUNCTION hbmk_plugin_qt(hbmk)

   LOCAL cRetVal := ""
   LOCAL cMocExe := getenv("QT_MOC_EXE")

   IF empty(cMocExe)
      cMocExe := "moc"
   ENDIF

   SWITCH hbmk["cSTATE"]

   CASE "init"
      EXIT

   CASE "pre_all"
      EXIT

   CASE "pre_c"
      RUNMOC("source/QtWebKit/QGraphicsWebViewSlots.hpp")
      RUNMOC("source/QtWebKit/QWebFrameSlots.hpp")
      RUNMOC("source/QtWebKit/QWebPageSlots.hpp")
      RUNMOC("source/QtWebKit/QWebViewSlots.hpp")
      EXIT

   CASE "post_all"
      ferase("source/QtWebKit/QGraphicsWebViewSlotsMoc.cpp")
      ferase("source/QtWebKit/QWebFrameSlotsMoc.cpp")
      ferase("source/QtWebKit/QWebPageSlotsMoc.cpp")
      ferase("source/QtWebKit/QWebViewSlotsMoc.cpp")

   ENDSWITCH

RETURN cRetVal
