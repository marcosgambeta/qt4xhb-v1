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
      run("moc source\QtSvg\QSvgRendererSlots.hpp -o source\QtSvg\QSvgRendererSlotsMoc.cpp")
      EXIT

   CASE "post_all"
      run("del source\QtSvg\QSvgRendererSlotsMoc.cpp")
      EXIT

   ENDSWITCH

RETURN cRetVal
