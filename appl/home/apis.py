from ninja import Router


router = Router()


@router.get('/actuator/liveness')
def liveness(request):
    return { 'code': 0, 'message': 'ok', 'data': 'alive' }
