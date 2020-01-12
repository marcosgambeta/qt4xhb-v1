%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtDesigner

$header

/*
enum QDesignerFormWindowInterface::FeatureFlag
flags QDesignerFormWindowInterface::Feature
*/
#define QDesignerFormWindowInterface_EditFeature                     0x01
#define QDesignerFormWindowInterface_GridFeature                     0x02
#define QDesignerFormWindowInterface_TabOrderFeature                 0x04
#define QDesignerFormWindowInterface_DefaultFeature                  hb_or(QDesignerFormWindowInterface_EditFeature,QDesignerFormWindowInterface_GridFeature)
