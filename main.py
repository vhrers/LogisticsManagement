#!/usr/bin/env python
#coding=utf-8
 
import sys
import codecs
from PyQt4 import QtGui, QtCore
from ui_login import Ui_Form
from database import DataBase

class LoginForm(QtGui.QMainWindow):
	"""docstring for MyForm"""
	def login(self):
		#self.ui.passWordTx.setText("abc")
		userName = self.ui.userNameTx.text()
		passWord = self.ui.passWordTx.text()
		if self.db.loginCheck(userName, passWord):
			self.hide()
		else:
			message = QtGui.QMessageBox(self)
			message.setText(u"账号密码错误")
			message.resize(290,100)
			message.setIcon(QtGui.QMessageBox.Warning)
			message.exec_()
	def reset(self):
		self.ui.passWordTx.setText("")
		self.ui.userNameTx.setText("")

	def __init__(self, parent = None):
		QtGui.QWidget.__init__(self, parent)
		self.ui = Ui_Form()
		self.ui.setupUi(self)
		#删除最大化最小化按钮
		self.setWindowFlags(self.windowFlags() & ~QtCore.Qt.WindowMinMaxButtonsHint)
		#禁止最大最小化
		self.setFixedSize(290,160)
		QtCore.QObject.connect(self.ui.okBtn,QtCore.SIGNAL('clicked()'),self.login)
		QtCore.QObject.connect(self.ui.resetBtn,QtCore.SIGNAL('clicked()'),self.reset)
		#数据库
		self.db = DataBase()

if __name__ == "__main__":
	app = QtGui.QApplication(sys.argv)
	myapp = LoginForm()
	myapp.show()
	sys.exit(app.exec_())
