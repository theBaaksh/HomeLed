#include "ledmodeController.h"

LedModeController::LedModeController(QObject *parent)
    : QObject{parent}
{

}

void LedModeController::setBrightness(int value)
{
    brightenss = Service::toNormalizedValue(value);
    updateMode();
}

void LedModeController::setColorTemperature(int value)
{
    colorTemperature = value;
    tempToG();
    tempToB();
    updateMode();
}

void LedModeController::tempToG()
{
    g = 234; //pass
}

void LedModeController::tempToB()
{
    b = 234; //pass
}

void LedModeController::updateMode()
{
    qDebug()<<"lamp"<<"br:"<<brightenss;
}
