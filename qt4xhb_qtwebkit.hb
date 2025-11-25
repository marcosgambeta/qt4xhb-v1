//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

FUNCTION hbmk_plugin_qt(hbmk)

   LOCAL cRetVal := ""

   SWITCH hbmk["cSTATE"]

   CASE "init"
      EXIT

   CASE "pre_all"
      EXIT

   CASE "pre_c"
      run("moc source\QtWebKit\QGraphicsWebViewSlots.hpp -o source\QtWebKit\QGraphicsWebViewSlotsMoc.cpp")
      run("moc source\QtWebKit\QWebFrameSlots.hpp -o source\QtWebKit\QWebFrameSlotsMoc.cpp")
      run("moc source\QtWebKit\QWebPageSlots.hpp -o source\QtWebKit\QWebPageSlotsMoc.cpp")
      run("moc source\QtWebKit\QWebViewSlots.hpp -o source\QtWebKit\QWebViewSlotsMoc.cpp")
      EXIT

   CASE "post_all"
      run("del source\QtWebKit\QGraphicsWebViewSlotsMoc.cpp")
      run("del source\QtWebKit\QWebFrameSlotsMoc.cpp")
      run("del source\QtWebKit\QWebPageSlotsMoc.cpp")
      run("del source\QtWebKit\QWebViewSlotsMoc.cpp")
      EXIT

   ENDSWITCH

RETURN cRetVal
