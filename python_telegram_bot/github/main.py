from telegram.ext import Updater, CommandHandler, MessageHandler, Filters

from setting import Setting

setting = Setting()

# start вызывается после команды /start
def start(bot, update):
    update.message.reply_text('Привет')

# echo вызывается после любого текстового сообщения
def echo(bot, update):
    update.message.reply_text(update.message.text)

# создаём основной объект для управления ботом
updater = Updater(setting.telegram_token)

# регистрируем процедуру start как обработчик команды start
updater.dispatcher.add_handler(CommandHandler('start', start))

# регистрируем процедуру echo как обработчик текстового сообщения
updater.dispatcher.add_handler(MessageHandler(Filters.text, echo))

# запускаем бота
updater.start_polling()
updater.idle()