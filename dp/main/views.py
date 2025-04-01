from .models import *
from django.shortcuts import render, redirect
from django.http import JsonResponse



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



"""
def submit_poll(request):
    if request.method == "POST":
        # Събиране на отговорите
        answers = {}

        for question_id in request.POST:
            if question_id.startswith("question_"):
                option_id = request.POST.get(question_id)  # ID на избраната опция
                question_id = question_id.replace("question_", "")
                answers[question_id] = option_id

                # Обработка на отговорите или запис в база данни
        # Това е примерен процес на обхождане
        for question_id, option_id in answers.items():
            try:
                question = Question.objects.get(id=question_id)
                option = Option.objects.get(id=option_id)
                print(f"Въпрос: {question.text} -> Отговор: {option.text}")
            except (Question.DoesNotExist, Option.DoesNotExist):
                print(f"Невалиден въпрос или опция: {question_id} -> {option_id}")

                # Например можете да запишете резултата в база данни или да извършите друга обработка

        return JsonResponse({"success": True, "message": "Вашите отговори бяха записани успешно."})

    return JsonResponse({"success": False, "message": "Невалидна заявка (не е POST)."})
    """