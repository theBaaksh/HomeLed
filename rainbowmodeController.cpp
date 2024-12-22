#include "rainbowmodeController.h"
#include "socketinterlayer.h"

RainbowModeController::RainbowModeController(QObject *parent)
    : QObject{parent}
{
    speed = brightness = step = 0;
    running = false;
}

void RainbowModeController::setSpeed(int value)
{
    speed = Service::toNormalizedValue(value);
    updateMode();
}

void RainbowModeController::setBrightness(int value)
{
    brightness = Service::toNormalizedValue(value);
    updateMode();
}

void RainbowModeController::setStep(int value)
{
    step = Service::toNormalizedValue(value);
    updateMode();
}

void RainbowModeController::setRunning(bool value)
{
    running = value;
    updateMode();
}

void RainbowModeController::updateMode()
{
    QString data = "";
    data += QString::number(0xB) += "/";
    data += QString::number(speed) += "/";
    data += QString::number(brightness) += "/";
    data += QString::number(running);

    SocketInterlayer::interLayer()->writeData(data);
}
