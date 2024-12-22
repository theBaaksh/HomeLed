#include "noisemodeController.h"

NoiseModeController::NoiseModeController(QObject *parent)
    : QObject{parent}
{
    speed = brightness = 0;
    paletteType = SkyBlue;
}

void NoiseModeController::setSpeed(int value)
{
    speed = Service::toNormalizedValue(value);
    updateMode();
}

void NoiseModeController::setBrightness(int value)
{
    brightness = Service::toNormalizedValue(value);
    updateMode();
}

void NoiseModeController::setPaletteType(PaletteType type)
{
    paletteType = (int)type;
    updateMode();
}

void NoiseModeController::updateMode()
{
    qDebug()<<"noise"<<"br:"<<brightness<<"sp:"<<speed<<"pt:"<<paletteType;
}
