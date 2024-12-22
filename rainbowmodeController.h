#ifndef RAINBOWMODECONTROLLER_H
#define RAINBOWMODECONTROLLER_H

#include <QObject>
#include "service.h"

class RainbowModeController : public QObject
{
    Q_OBJECT
public:
    explicit RainbowModeController(QObject *parent = nullptr);

    Q_INVOKABLE void setSpeed(int value);
    Q_INVOKABLE void setBrightness(int value);
    Q_INVOKABLE void setStep(int value);
    Q_INVOKABLE void setRunning(bool value);

private:
    int speed;
    int brightness;
    int step;
    bool running;
    void updateMode();

signals:

};

#endif // RAINBOWMODECONTROLLER_H
