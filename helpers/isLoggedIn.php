<?php

/**
 * تم تسجيل الدخول
 * ----------
* يعود صحيحًا إذا قام شخص ما بتسجيل الدخول ، خطأ إذا كان بخلاف ذلك
*return boolean TRUE إذا قام شخص ما بتسجيل الدخول ، FALSE إذا لم يقم أحد بتسجيل الدخول.
 * 
 * @return boolean      
 */
function isLoggedIn(): bool
{
    if(isset($_SESSION['user_id']) && isset($_SESSION['username']))
        return true;

    return false;
}

/**
 * الحصول على اسم المستخدم المسجل
 * -------------------
* يُرجع اسم المستخدم الخاص بالمستخدم الذي قام بتسجيل الدخول. لم يتم تسجيل دخول أي شخص حتى الآن
  * ثم نعيد سلسلة فارغة.
  *
 *
 * @return string       
 */
function getLoggedInUsername(): string 
{
    if(isset($_SESSION['username']) && session_status() == PHP_SESSION_ACTIVE)
        return $_SESSION['username'];

    return '';
}


/**

  * إرجاع معرف المستخدم الذي قام بتسجيل الدخول كـ INT. إذا لم يتم تسجيل دخول أحد
  * هذه الدالة ترجع القيمة 0.
 *
 * @return integer             معرف المستخدم الذي قام بتسجيل الدخول أو 0
 */
function getLoggedInUserID(): int
{
    if(isset($_SESSION['user_id']) && session_status() == PHP_SESSION_ACTIVE)
        return intval($_SESSION['user_id']);

    return 0;
}