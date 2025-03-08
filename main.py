from PyQt6.QtCore import QCoreApplication
from PyQt6.QtQml import QQmlApplicationEngine
from controllers.main_controller import MainController

if __name__ == "__main__":
    app = QCoreApplication([])

    # QML engine ve controller'ı başlatıyoruz
    engine = QQmlApplicationEngine()
    controller = MainController(engine)
    controller.load_qml()

    app.exec()