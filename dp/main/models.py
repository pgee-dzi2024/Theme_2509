from django.db import models


# Анкета
class Poll(models.Model):
    theme = models.CharField('Тема', max_length=100, default='', help_text='Тема на анкетата')
    description = models.TextField('Описание', default='', blank=True, help_text='Описание на анкетата')
    picture = models.ImageField('Картинка', upload_to='poll_pics', blank=True)
    active = models.BooleanField('Активна', default=True, help_text='Дали анкетата е видима за потребителите')

    def __str__(self):
        return self.theme

    class Meta:
        verbose_name = 'Анкета'
        verbose_name_plural = 'Анкети'


# Въпрос
TYPE1 = 1
TYPE2 = 2
QUESTION_TYPE = [
    (TYPE1, 'само с един отговор'),
    (TYPE2, 'с множествен избор на отговори'),
]


class Question(models.Model):
    text = models.TextField('Текст', default='', blank=True, help_text='Текст на въпроса')
    type = models.PositiveSmallIntegerField(choices=QUESTION_TYPE, default=TYPE1, help_text='тип на въпроса')
    pool_id = models.ManyToManyField(Poll, verbose_name='id на анкета, в която се ползва', blank=True)

    # данни за статистика по въпроси
    stat_attempts = models.IntegerField('Брой отговори', default=0, help_text='генерира се автоматично')

    def update_statistics(self):
        # Актуализира статистиките на въпроса въз основа на резултатите от анкетата.
        self.stat_attempts += 1
        self.save()

    def __str__(self):
        return self.text

    class Meta:
        verbose_name = 'Въпрос'
        verbose_name_plural = 'Въпроси'


# Въпроси - опции

class Option(models.Model):
    question_id = models.ForeignKey(Question, on_delete=models.CASCADE, null=True, related_name='options')
    text = models.CharField('Текст', max_length=200, default='', blank=True,
                            help_text='Формулировка (текст) на опцията(отговора)')
    checked = models.BooleanField('Отговор', null=True, help_text='генерира се автоматично')

    # данни за статистика по отговори
    stat_attempts = models.IntegerField('Брой отговори', default=0, help_text='генерира се автоматично')

    def update_statistics(self):
        # Актуализира статистиките на въпроса въз основа на резултатите от анкетата.
        self.stat_attempts += 1
        self.save()

    def __str__(self):
        return f'#{self.id}: {self.text}'

    class Meta:
        verbose_name = 'Отговор на въпрос'
        verbose_name_plural = 'Отговори на въпроси'
