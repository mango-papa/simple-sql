from db_manager import DBManager


def main():
    d = DBManager.get_instance()
    d.query('sql/create_user_table.sql')


if __name__ == '__main__':
    main()
