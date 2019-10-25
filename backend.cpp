#include "backend.h"
#include <QDebug>
#include <QtSerialPort/QSerialPortInfo>

BackEnd::BackEnd(QObject *parent) : QObject(parent)
{

}

QString BackEnd::subjectName()
{
    return m_subjectName;
}

void BackEnd::setSubjectName(const QString &subjectName)
{
    if (subjectName == m_subjectName)
        return;

    m_subjectName = subjectName;
    qDebug() << "Subject Name: " << m_subjectName;
    emit subjectNameChanged();
}


int BackEnd::subjectAge()
{
    return m_subjectAge;
}

void BackEnd::setSubjectAge(const int &subjectAge)
{
    if (subjectAge == m_subjectAge)
        return;

    m_subjectAge = subjectAge;
    qDebug() << "Subject Age: " << m_subjectAge;
    emit subjectAgeChanged();
}

//Getters/Setters for Arduino Buttons Path

QString BackEnd::arduinoButtonsPath()
{
    return m_arduinoButtonsPath;
}

void BackEnd::setArduinoButtonsPath(const QString &arduinoButtonsPath)
{
    if (arduinoButtonsPath == m_arduinoButtonsPath)
        return;

    m_arduinoButtonsPath = arduinoButtonsPath;
    qDebug() << "Arduino Buttons Path: " << m_arduinoButtonsPath;
    emit arduinoButtonsPathChanged();
}


//Getters/Setters for Arduino Sensors Path

QString BackEnd::arduinoSensorsPath()
{
    return m_arduinoSensorsPath;
}

void BackEnd::setArduinoSensorsPath(const QString &arduinoSensorsPath)
{
    if (arduinoSensorsPath == m_arduinoSensorsPath)
        return;

    m_arduinoSensorsPath = arduinoSensorsPath;
    qDebug() << "Arduino Sensors Path: " << m_arduinoSensorsPath;
    emit arduinoSensorsPathChanged();
}

//Getters/Setters for Affectiva IP address

QString BackEnd::affectivaIP()
{
    return m_arduinoSensorsPath;
}

void BackEnd::setAffectivaIP(const QString &affectivaIP)
{
    if (affectivaIP == m_affectivaIP)
        return;

    m_affectivaIP = affectivaIP;
    qDebug() << "Affectiva IP: " << m_affectivaIP;
    emit affectivaIPChanged();
}

//Getters/Setters for Pictures Folder Path

QString BackEnd::picturesFolderPath()
{
    return m_picturesFolderPath;
}

void BackEnd::setPicturesFolderPath(const QString &picturesFolderPath)
{
    if (picturesFolderPath == m_picturesFolderPath)
        return;

    m_picturesFolderPath = picturesFolderPath;
    qDebug() << "Pictures Folder Path: " << m_picturesFolderPath;
    emit picturesFolderPathChanged();
}

//Getters/Setters for Pictures Folder Path

QString BackEnd::videosFolderPath()
{
    return m_videosFolderPath;
}

void BackEnd::setVideosFolderPath(const QString &videosFolderPath)
{
    if (videosFolderPath == m_videosFolderPath)
        return;

    m_videosFolderPath = videosFolderPath;
    qDebug() << "Videos Folder Path: " << m_videosFolderPath;
    emit videosFolderPathChanged();
}



bool BackEnd::isPicturesSelected(){
    return m_isPicturesSelected;
}

void BackEnd::setIsPicturesSelected(const bool &isPicturesSelected)
{
    if (isPicturesSelected == m_isPicturesSelected)
        return;

    m_isPicturesSelected = isPicturesSelected;
    qDebug() << "Pictures Folder selected " << m_isPicturesSelected;
    emit isPicturesSelectedChanged();
}


bool BackEnd::isVideosSelected(){
    return m_isVideosSelected;
}

void BackEnd::setIsVideosSelected(const bool &isVideosSelected)
{
    if (isVideosSelected == m_isVideosSelected)
        return;

    m_isVideosSelected = isVideosSelected;
    qDebug() << "Videos Folder selected " << m_isVideosSelected;
    emit isVideosSelectedChanged();

}




QStringList BackEnd::availablePorts()
{
    QStringList ports;

    for (QSerialPortInfo port : QSerialPortInfo::availablePorts())
    {
        ports += port.systemLocation();
    }
    return ports;
}

void BackEnd::connectAll()
{
    buttonsPort = new QSerialPort();
    sensorsPort = new QSerialPort();

    buttonsPort->setPortName(arduinoButtonsPath());
    sensorsPort->setPortName(arduinoSensorsPath());

    if (buttonsPort->open(QIODevice::ReadWrite))
      {
       buttonsPort->setBaudRate(QSerialPort::Baud9600);
       buttonsPort->setDataBits(QSerialPort::Data8);
       buttonsPort->setParity(QSerialPort::NoParity);
       buttonsPort->setStopBits(QSerialPort::OneStop);
       buttonsPort->setFlowControl(QSerialPort::NoFlowControl);
       qDebug("Button Port: Connection established");

       connect(buttonsPort, &QSerialPort::readyRead, this, &BackEnd::readButtons);
       connect(buttonsPort, static_cast<void (QSerialPort::*)(QSerialPort::SerialPortError)>(&QSerialPort::error),
                       this, &BackEnd::handleError);

       connect(&m_buttonsTimer, &QTimer::timeout, this, &BackEnd::handleButtonsTimeout);
       m_buttonsTimer.start(20);

       } else qDebug("Button Port: Connection Error");

    if (sensorsPort->open(QIODevice::ReadWrite))
      {
       sensorsPort->setBaudRate(QSerialPort::Baud9600);
       sensorsPort->setDataBits(QSerialPort::Data8);
       sensorsPort->setParity(QSerialPort::NoParity);
       sensorsPort->setStopBits(QSerialPort::OneStop);
       sensorsPort->setFlowControl(QSerialPort::NoFlowControl);
       qDebug("Sensors Port: Connection established");

       connect(sensorsPort, &QSerialPort::readyRead, this, &BackEnd::readSensors);
       connect(sensorsPort, static_cast<void (QSerialPort::*)(QSerialPort::SerialPortError)>(&QSerialPort::error),
                       this, &BackEnd::handleError);

       connect(&m_sensorsTimer, &QTimer::timeout, this, &BackEnd::handleSensorsTimeout);
       m_sensorsTimer.start(20);

       } else qDebug("Sensors Port: Connection Error");
}

void BackEnd::readButtons()
{

    m_readButtons.append(buttonsPort->readAll());
       if (!m_buttonsTimer.isActive())
           m_buttonsTimer.start(20);
}

void BackEnd::readSensors()
{

    m_readSensors.append(sensorsPort->readAll());
       if (!m_sensorsTimer.isActive())
           m_sensorsTimer.start(20);
}


void BackEnd::handleButtonsTimeout(){

    if(!m_readButtons.isEmpty())
    {
       // qDebug()<< "Buttons Val: " << QString(m_readButtons);
    }
    else {
        qDebug() << "Haven't received data from Arduino Buttons module";
    }
}

void BackEnd::handleSensorsTimeout(){

    if(!m_readSensors.isEmpty())
    {
        qDebug()<< "Sensors Val: " << QString(m_readSensors);
    }
    else {
        qDebug() << "Haven't received data from Arduino Sensors module";
    }
}

void BackEnd::handleError(QSerialPort::SerialPortError serialPortError)
{
    if (serialPortError == QSerialPort::ReadError) {
      //  qDebug(QObject::tr("An I/O error occurred while reading the data from port %1, error: %2").arg(serial->portName()).arg(serial->errorString()));
    }
}




