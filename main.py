#!/usr/bin/env python
#coding=utf-8
 
import sys
import codecs
from PyQt4 import QtGui, QtCore
from ui_login import Ui_Form

class LoginForm(QtGui.QMainWindow):
	"""docstring for MyForm"""
	def login(self):
		self.ui.passWordTx.setText("abc")

	def reset(self):
		self.ui.passWordTx.setText("")
		self.ui.userNameTx.setText("")

	def __init__(self, parent = None):
		QtGui.QWidget.__init__(self, parent)
		self.ui = Ui_Form()
		self.ui.setupUi(self)
		#删除最大化最小化按钮
		self.setWindowFlags(self.windowFlags() & ~QtCore.Qt.WindowMinMaxButtonsHint)
		QtCore.QObject.connect(self.ui.okBtn,QtCore.SIGNAL('clicked()'),self.login)
		QtCore.QObject.connect(self.ui.resetBtn,QtCore.SIGNAL('clicked()'),self.reset)
if __name__ == "__main__":
	app = QtGui.QApplication(sys.argv)
	myapp = LoginForm()
	myapp.show()
	sys.exit(app.exec_())
