from django.shortcuts import render
from .models import *


def index(request):
    # заявка за всички активни анкети
    polls = Poll.objects.filter(active=True)

    context = {'polls': polls}
    return render(request, 'main/index.html', context)


def poll(request, poll_id):
    # заявка за всички анкети със всички въпроси за всяка анкета със всички отговори за всеки въпрос
    polls = Poll.objects.prefetch_related('question_set__options').filter(id=poll_id)

    context = {'polls': polls}
    return render(request, 'main/poll.html', context)
