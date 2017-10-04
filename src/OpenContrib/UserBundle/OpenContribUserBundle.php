<?php

namespace OpenContrib\UserBundle;

use Symfony\Component\HttpKernel\Bundle\Bundle;

class OpenContribUserBundle extends Bundle
{
  public function getParent()
{
  return 'FOSUserBundle';
}
}
