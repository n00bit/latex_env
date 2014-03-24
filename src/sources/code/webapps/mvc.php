<?php
class Advert_Controller_List extends Controller_Common {
  public function run() {
    $this->getView()->loadI18n('Common/General', 'Advert/List');

    if (!$this->checkAccess()) {
      return $this->createNotification()->setType('alert')->run();
    }

    $list = new Module_Advert_List(
      $this->getRequest(), $this->getMapper('Advert/Advert'), new Pagination_Manager(10, 10, $this->getRequest())
    );

    $this->getView()->adverts = $list->getList();
    $this->getView()->pagination = $list->getPagination();

    $this->getView()->id_category = $this->getRequest()->getRequest('id_category');
    $this->getView()->id_user = $this->getRequest()->getRequest('id_user');

    return $this->getView();
  }
}