#coding=utf-8
import time,MySQLdb


class DataBase():
	"""数据库操作"""
	def __init__(self):
		try:
			self.conn = MySQLdb.connect(host='192.168.1.103',user='root',passwd='111111',
					   db='LogisticsManagement',port=3306,charset='utf8')
			self.cur = self.conn.cursor()
			#判断是否存在表
			n = self.cur.execute("select TABLE_NAME from INFORMATION_SCHEMA.TABLES \
								  where TABLE_SCHEMA='LogisticsManagement' and TABLE_NAME='user'")
			if 0 == n :
				self.cur.execute("create table if not exists user(name varchar(20), password varchar(20))")
				admin = ["saber","123456"]
				self.cur.execute("insert into user value(%s,%s)",admin)
				self.conn.commit()
			#n = self.cur.execute("create table if not exists user(name varchar(20), password varchar(20))")
		except MySQLdb.Error,e:
			print "Mysql Error %d: %s" % (e.args[0], e.args[1])
	
	def loginCheck(self,userName,password):
		strSql = "select name from user where name ='{0}' and password = '{1}'".format(userName,password)
		n = self.cur.execute(strSql)
		if n == 0:
			return False
		else:
			return True	
		self.closeData()

	def closeData(self):
		self.cur.close()
		self.conn.close()
