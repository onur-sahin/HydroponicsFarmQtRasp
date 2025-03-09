from PyQt6.QtCore import QCoreApplication
from PyQt6.QtQml import QQmlApplicationEngine
from item_model import ItemModel

class MainController:
    def __init__(self, engine: QQmlApplicationEngine):
        self.engine = engine
        self.model = ItemModel(["Item 1", "Item 2", "Item 3"])

    def load_qml(self):
        context = self.engine.rootContext()
        context.setContextProperty("itemModel", self.model)
        self.engine.load('views/Main.qml')

    def change_language(self):
        # Dil değiştirmek için çeviri dosyasını yükle
        if self.translator.load("translations_tr.qm"):  # Türkçe çeviri dosyasını yükle
            QCoreApplication.instance().installTranslator(self.translator)  # Çeviriyi uygulamaya yükle
            self.label.setText(QCoreApplication.translate("MainWindow", "Settings"))  # Etiketi güncelle
        else:
            print("Çeviri dosyası yüklenemedi.")
        
        # Uygulamanın görselini güncelle
        self.update()

if __name__ == "__main__":
    app = QCoreApplication([])
    engine = QQmlApplicationEngine()
    
    controller = MainController(engine)
    controller.load_qml()
    
    app.exec()
