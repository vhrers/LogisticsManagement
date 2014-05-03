# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'login.ui'
#
# Created: Sat May 03 17:43:18 2014
#      by: PyQt4 UI code generator 4.10.4
#
# WARNING! All changes made in this file will be lost!

from PyQt4 import QtCore, QtGui

try:
    _fromUtf8 = QtCore.QString.fromUtf8
except AttributeError:
    def _fromUtf8(s):
        return s

try:
    _encoding = QtGui.QApplication.UnicodeUTF8
    def _translate(context, text, disambig):
        return QtGui.QApplication.translate(context, text, disambig, _encoding)
except AttributeError:
    def _translate(context, text, disambig):
        return QtGui.QApplication.translate(context, text, disambig)

class Ui_Form(object):
    def setupUi(self, Form):
        Form.setObjectName(_fromUtf8("Form"))
        Form.setWindowModality(QtCore.Qt.ApplicationModal)
        Form.resize(291, 160)
        Form.setContextMenuPolicy(QtCore.Qt.NoContextMenu)
        icon = QtGui.QIcon()
        icon.addPixmap(QtGui.QPixmap(_fromUtf8("res/icon.png")), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        Form.setWindowIcon(icon)
        self.layoutWidget = QtGui.QWidget(Form)
        self.layoutWidget.setGeometry(QtCore.QRect(90, 10, 160, 111))
        self.layoutWidget.setObjectName(_fromUtf8("layoutWidget"))
        self.verticalLayout_2 = QtGui.QVBoxLayout(self.layoutWidget)
        self.verticalLayout_2.setMargin(0)
        self.verticalLayout_2.setObjectName(_fromUtf8("verticalLayout_2"))
        self.userNameTx = QtGui.QLineEdit(self.layoutWidget)
        self.userNameTx.setObjectName(_fromUtf8("userNameTx"))
        self.verticalLayout_2.addWidget(self.userNameTx)
        self.passWordTx = QtGui.QLineEdit(self.layoutWidget)
        self.passWordTx.setEchoMode(QtGui.QLineEdit.Password)
        self.passWordTx.setObjectName(_fromUtf8("passWordTx"))
        self.verticalLayout_2.addWidget(self.passWordTx)
        self.layoutWidget1 = QtGui.QWidget(Form)
        self.layoutWidget1.setGeometry(QtCore.QRect(60, 20, 51, 91))
        self.layoutWidget1.setObjectName(_fromUtf8("layoutWidget1"))
        self.verticalLayout = QtGui.QVBoxLayout(self.layoutWidget1)
        self.verticalLayout.setMargin(0)
        self.verticalLayout.setObjectName(_fromUtf8("verticalLayout"))
        self.label = QtGui.QLabel(self.layoutWidget1)
        self.label.setTextFormat(QtCore.Qt.LogText)
        self.label.setObjectName(_fromUtf8("label"))
        self.verticalLayout.addWidget(self.label)
        self.label_2 = QtGui.QLabel(self.layoutWidget1)
        self.label_2.setObjectName(_fromUtf8("label_2"))
        self.verticalLayout.addWidget(self.label_2)
        self.layoutWidget2 = QtGui.QWidget(Form)
        self.layoutWidget2.setGeometry(QtCore.QRect(60, 120, 181, 25))
        self.layoutWidget2.setObjectName(_fromUtf8("layoutWidget2"))
        self.horizontalLayout = QtGui.QHBoxLayout(self.layoutWidget2)
        self.horizontalLayout.setMargin(0)
        self.horizontalLayout.setObjectName(_fromUtf8("horizontalLayout"))
        self.okBtn = QtGui.QPushButton(self.layoutWidget2)
        self.okBtn.setDefault(True)
        self.okBtn.setObjectName(_fromUtf8("okBtn"))
        self.horizontalLayout.addWidget(self.okBtn)
        self.resetBtn = QtGui.QPushButton(self.layoutWidget2)
        self.resetBtn.setObjectName(_fromUtf8("resetBtn"))
        self.horizontalLayout.addWidget(self.resetBtn)

        self.retranslateUi(Form)
        QtCore.QMetaObject.connectSlotsByName(Form)
        Form.setTabOrder(self.okBtn, self.resetBtn)
        Form.setTabOrder(self.resetBtn, self.userNameTx)
        Form.setTabOrder(self.userNameTx, self.passWordTx)

    def retranslateUi(self, Form):
        Form.setWindowTitle(_translate("Form", "广州和邦物流有限公司运输记录系统", None))
        self.label.setText(_translate("Form", "账号：", None))
        self.label_2.setText(_translate("Form", "密码：", None))
        self.okBtn.setText(_translate("Form", "登录", None))
        self.resetBtn.setText(_translate("Form", "重置", None))

