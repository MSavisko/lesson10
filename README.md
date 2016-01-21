# lesson10

Итак, читаем:
Matt Neuburg - Programming iOS 7, 4th Edition - 2013 Раздел 4 Animations

View Programming Guide - Animations
https://developer.apple.com/library/ios/documentation/WindowsViews/Conceptual/ViewPG_iPhoneOS/AnimatingViews/AnimatingViews.html

Customizing the Transition Animations
https://developer.apple.com/library/ios/featuredarticles/ViewControllerPGforiPhoneOS/CustomizingtheTransitionAnimations.html

UIKit Dynamics Tutorial
http://www.raywenderlich.com/50197/uikit-dynamics-tutorial

Домашнее задание:

1. Задание на основе sample3.
    - Сделать анимацию движения кнопки бесконечной, кнопка должны двигаться от одного края экрана к другому. Используйте блочную анимацию. ([UIView animateWith...])
    - Кнопка должна реагировать на нажатие во время анимации (сейчас при анимации кнопка реагирует на нажатие в конечно точке анимации)
    - По достижению края экрана анимировать переворот кнопки вверх ногами (на 180 градусов)
    - Скопировать sample3 проект и реализовать задания выше без использования AutoLayout и блочной анимации.
    - Бонус, кнопка должна двигаться по периметру экрана.
    - Хард бонус, кнопка должна двигаться по спирали Фиббоначчи при достижении края начинать анимацию заново.
2. Задание на использование UIKit Dynamics.
    - Создайте для пустого ViewController - UIDynamicAnimator, UIGravityBehavior, UICollisionBehavior. Изначально на сцене нет никаких объектов.
    - В сцене должна действовать стандартная гравитация.
    - По жесту Long Press случайным образом добавляйте на сцену либо круг либо квадрат на который сразу начинает действовать анимация.
    - При столкновении одинаковых фигур (квадрат-квадрат или круг-круг) фигуры должны отталкиваться друг от друга дополнительным импульсом UIPushBehavior
    - При перевороте девайса в landscape ориентацию инвертируйте действующую гравитацию, объекты должны притягиваться к "потолку", при перевороте в portrait ориентацию верните изначальные настройки гравитации.
    - Бонус. Квадраты не должны взаимодействовать с кругами (тоесть сталкиваться должны только одинаковые фигуры)
    
3. Задание на создание кастомного перехода между UIViewController
    - Изучите sample6 и статью "Customizing the Transition Animations" (ссылка в разделе чтение)
    - Создайте собственный аниматор перехода между UIViewController, анимацию выбирайте на ваше усмотрение, предпочтительно придмать что-то поинтереснее чем анимация по альфе и изменение размеров ;)
    - Создайте интерактивный аниматор перехода между UIViewController, жест для перехода выберите на ваше усмотрение, предпочтительно использовать жесты написанные вами на предыдущих уроках.
