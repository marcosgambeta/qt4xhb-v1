//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#define RUNMOC(file) run("moc " + file + " -o " + strtran(file, ".hpp", "Moc.cpp"))

FUNCTION hbmk_plugin_qt(hbmk)

   LOCAL cRetVal := ""

   SWITCH hbmk["cSTATE"]

   CASE "init"
      EXIT

   CASE "pre_all"
      EXIT

   CASE "pre_c"
      RUNMOC("source\QtMultimedia\QAbstractVideoSurfaceSlots.hpp")
      RUNMOC("source\QtMultimedia\QAudioInputSlots.hpp")
      RUNMOC("source\QtMultimedia\QAudioOutputSlots.hpp")
      EXIT

   CASE "post_all"
      ferase("source\QtMultimedia\QAbstractVideoSurfaceSlotsMoc.cpp")
      ferase("source\QtMultimedia\QAudioInputSlotsMoc.cpp")
      ferase("source\QtMultimedia\QAudioOutputSlotsMoc.cpp")

   ENDSWITCH

RETURN cRetVal
