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
      run("moc source\QtMultimedia\QAbstractVideoSurfaceSlots.hpp -o source\QtMultimedia\QAbstractVideoSurfaceSlotsMoc.cpp")
      run("moc source\QtMultimedia\QAudioInputSlots.hpp -o source\QtMultimedia\QAudioInputSlotsMoc.cpp")
      run("moc source\QtMultimedia\QAudioOutputSlots.hpp -o source\QtMultimedia\QAudioOutputSlotsMoc.cpp")
      EXIT

   CASE "post_all"
      run("del source\QtMultimedia\QAbstractVideoSurfaceSlotsMoc.cpp")
      run("del source\QtMultimedia\QAudioInputSlotsMoc.cpp")
      run("del source\QtMultimedia\QAudioOutputSlotsMoc.cpp")
      EXIT

   ENDSWITCH

RETURN cRetVal
