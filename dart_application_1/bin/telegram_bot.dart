import 'package:dart_telegram_bot/dart_telegram_bot.dart';
import 'package:dart_telegram_bot/telegram_entities.dart';

void main(List<String> args) {
  Bot(
    token: '5720070178:AAGJvMvEfnC8Ij3qkIk40sk4wHF463s7lPE',
    onReady: (myBot) => myBot.start(clean: true),
  ).onUpdate((myBot, update) async {
    if (update.message?.text == 'hi') {
      myBot.sendMessage(ChatID(update.message!.chat.id), 'hello there');
    } else {
      myBot.sendMessage(ChatID(update.message!.chat.id), 'What do you want?');
    }
  });
}
