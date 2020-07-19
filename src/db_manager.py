import os
import pymysql


class DBManager:
    instance = None

    def __init__(self):
        self.con = pymysql.connect(
            os.environ['RDS_HOST'],
            os.environ['RDS_USER'],
            os.environ['RDS_PASSWORD'],
            os.environ['RDS_DB']
        )

    @staticmethod
    def get_instance():
        if DBManager.instance:
            return DBManager.instance
        else:
            DBManager.instance = DBManager()
            return DBManager.instance

    def query(self, file_loc):
        with open(file_loc, 'r') as f:
            queries = f.read().split(';')
            queries.pop()

            with self.con:
                cur = self.con.cursor()
                for query in queries:
                    cur.execute(query)
