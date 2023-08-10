Архитектура
    1. Разделение на 3 слоя - вью, модель, провайдер
    2. Все экраны - Screen
    3. Для каждого экрана своя папка, файл экрана не должен содержать сложных коонструкций
    4. Есть общий каталог кастомных виджетов
    5. роутинг через навигатор пуш/пушнеймд
    6. 


showFlexibleBottomSheet(
minHeight: 0,
initHeight: 1,
maxHeight: 1,
context: context,
builder: (context, scrollController, _) {
return //новый экран
},
duration: const Duration(milliseconds: 350),
bottomSheetColor: AppColor.black,
anchors: [0, 1],
);