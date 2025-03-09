from PyQt6.QtGui import QGuiApplication
from PyQt6.QtQml import QQmlApplicationEngine
from main_controller import MainController
from PyQt6.QtCore import QTranslator, QLocale
import os

if __name__ == "__main__":

    qml_dir = os.path.join(os.path.dirname(__file__), 'views')  # QML dosyalarının bulunduğu klasör
    os.environ['QT_QML_IMPORT_PATH'] = qml_dir

    app = QGuiApplication([])  # QCoreApplication yerine QGuiApplication KULLANILIYOR
   

    engine = QQmlApplicationEngine()
    controller = MainController(engine)
    controller.load_qml()

    translator = QTranslator()
    translation_path = os.path.join(os.path.dirname(__file__), 'translations', 'tr_TR.qm')

    if translator.load(translation_path):
        print("Çeviri dosyası başarıyla yüklendi.")
    else:
        print("Çeviri dosyası yüklenemedi!")

    if app.installTranslator(translator):
        print("Çeviri başarıyla uygulandı.")
    else:
        print("Çeviri uygulama başarısız.")

    app.exec()