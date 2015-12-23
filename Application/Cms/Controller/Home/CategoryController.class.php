<?php
// +----------------------------------------------------------------------
// | CoreThink [ Simple Efficient Excellent ]
// +----------------------------------------------------------------------
// | Copyright (c) 2014 http://www.corethink.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: jry <598821125@qq.com> <http://www.corethink.cn>
// +----------------------------------------------------------------------
namespace Cms\Controller\Home;
use Home\Controller\HomeController;
use Common\Util\Think\Page;
/**
 * 分类控制器
 * @author jry <598821125@qq.com>
 */
class CategoryController extends HomeController {
    /**
     * 分类详情
     * @author jry <598821125@qq.com>
     */
    public function detail($id) {
        $map['status'] = array('egt', 1);  // 正常、隐藏两种状态是可以访问的
        $info = D('Category')->where($map)->find($id);
        if(!$info){
            $this->error('您访问的分类已禁用或不存在');
        }
        if(C('CURRENT_THEME')){
            if ($info['detail_template']) {
                $template = 'default/'.$info['detail_template'];
            } else {
                $template = 'default/detail_page_default';
            }
        } else {
            $template = $info['detail_template'] ? 'Home/default/'.$info['detail_template'] : 'Home/default/detail_page_default';
        }
        $this->assign('info', $info);
        $this->assign('__current_category__', $info['id']);
        $this->assign('meta_title', $info['title']);
        Cookie('__forward__', $_SERVER['REQUEST_URI']);
        $this->display($template);
    }
}