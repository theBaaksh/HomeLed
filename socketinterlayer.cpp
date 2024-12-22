#include "socketinterlayer.h"

SocketInterlayer::SocketInterlayer()
    : QObject{}
{
    socket = new QUdpSocket();
    connect(socket, &QUdpSocket::readyRead, this, &SocketInterlayer::onReadyRead);

    IP = QHostAddress("192.168.0.112");
    port = 8888;
}

SocketInterlayer* SocketInterlayer::socketInterLayer = nullptr;

SocketInterlayer *SocketInterlayer::interLayer()
{
    if (!socketInterLayer) {
        socketInterLayer = new SocketInterlayer();
    }
    return socketInterLayer;
}

void SocketInterlayer::onReadyRead()
{

}

void SocketInterlayer::writeData(QString data)
{
    QByteArray byteArray = data.toLocal8Bit();
    socket->writeDatagram(byteArray, IP, port);
}
