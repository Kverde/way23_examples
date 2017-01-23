import os

class Setting():

    def __init__(self):
        # считываем все переменные из файла .env
        self.set_env()

        # загружаем настройки из переменных окружения
        self.telegram_token = self.read_env('telegram_token')

    def read_env(self, env_name):
        return os.getenv(env_name)

    def set_env(self):
        # если файла .env нет то просто не загружаем ничего
        try:
            with open('.env') as f:
                content = f.read()
        except IOError:
            content = ''

        for line in content.splitlines():
            if line.strip() == '':
                continue

            key, value = map(lambda x: x.strip(), line.split('='))
            os.environ.setdefault(key, value)


