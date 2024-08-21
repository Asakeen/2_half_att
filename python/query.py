import psycopg2


def get_min_max_age():
    try:
        connection = psycopg2.connect(
            dbname="sadovsky",
            user="postgres",
            password="postgres",
            host="db"
        )
        cursor = connection.cursor()
        cursor.execute("""
            SELECT MIN(age), MAX(age) FROM test_table WHERE LENGTH(name) < 6;
        """)
        result = cursor.fetchone()
        print(f"Минимальный возраст: {result[0]}, Максимальный возраст: {result[1]}")  # noqa
    except Exception as error:
        print(f"Ошибка при подключении к базе данных: {error}")
    finally:
        if cursor:
            cursor.close()
        if connection:
            connection.close()


if __name__ == "__main__":
    get_min_max_age()
