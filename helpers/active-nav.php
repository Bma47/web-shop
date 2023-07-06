<?php

/**
 * isActiveNavItem
  * ---------------
  * للتحقق مما إذا كان عنصر التنقل هو الصفحة النشطة
 *
 * @param string $name
 * @return boolean
 */
function isActiveNavItem(string $name): bool
{
    return str_contains($_SERVER['REQUEST_URI'], $name);
}