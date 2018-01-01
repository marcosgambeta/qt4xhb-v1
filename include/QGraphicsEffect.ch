/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QGRAPHICSEFFECT_CH
#define QGRAPHICSEFFECT_CH

/*
enum QGraphicsEffect::ChangeFlag
flags QGraphicsEffect::ChangeFlags
*/
#define QGraphicsEffect_SourceAttached                               0x1
#define QGraphicsEffect_SourceDetached                               0x2
#define QGraphicsEffect_SourceBoundingRectChanged                    0x4
#define QGraphicsEffect_SourceInvalidated                            0x8

/*
enum QGraphicsEffect::PixmapPadMode
*/
#define QGraphicsEffect_NoPad                                        0
#define QGraphicsEffect_PadToTransparentBorder                       1
#define QGraphicsEffect_PadToEffectiveBoundingRect                   2

#endif /* QGRAPHICSEFFECT_CH */
