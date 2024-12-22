#ifndef NOISEMODECONTROLLER_H
#define NOISEMODECONTROLLER_H

#include <QObject>
#include "service.h"

class NoiseModeController : public QObject
{
    Q_OBJECT
public:
    explicit NoiseModeController(QObject *parent = nullptr);

    enum PaletteType {
        SkyBlue = 0,
        UrbanYellow,
        FieryRed,
        FieldGreen,
        MagicViolet
    };

    Q_INVOKABLE void setSpeed(int value);
    Q_INVOKABLE void setBrightness(int value);
    Q_INVOKABLE void setPaletteType(PaletteType type);

private:
    int speed;
    int brightness;
    int paletteType;
    void updateMode();

signals:

};

#endif // NOISEMODECONTROLLER_H
