class API {


//  static const BASE_URL = 'http://baobab.kaiyanapp.com/api/';
//
////首页精选
//  static const HOME_LIST_URL = 'http://baobab.kaiyanapp.com/api/v2/feed';
//
////相关视频
//  static const RELATE_DATA_URL = 'http://baobab.kaiyanapp.com/api/v4/video/related';
//
////获取分类
//  static const CATEGORY_URL = 'http://baobab.kaiyanapp.com/api/v4/categories';
//
////获取分类详情
//  static const CATEGORY_DETAIL_URL = 'http://baobab.kaiyanapp.com/api/v4/categories/videoList';
//
////获取更多issue
//  static const ISSUE_DATA_URL = '';
//
////获取排行榜信息
//  static const RANK_LIST_URL = 'http://baobab.kaiyanapp.com/api/v4/rankList';
//
////获取搜索信息
//  static const SEARCH_DATA_URL = 'http://baobab.kaiyanapp.com/api/v1/search';
//
////热门搜索词
//  static const HOME_HOT_WORD_URL = 'http://baobab.kaiyanapp.com/api/v3/queries/hot';
//
////  关注
//  static const FOLLOW_INFO_URL = 'http://baobab.kaiyanapp.com/api/v4/tabs/follow';

//  *******************************************************************************


//  static const HOME_BANNER_URL = 'https://www.wanandroid.com/banner/json';
//
//  static const HOME_ARTICLE_URL_BEFORE =
//      'https://www.wanandroid.com/article/list/';
//  static const HOME_ARTICLE_URL_AFTER = '/json';
//
//  static const PROJECT_TAB_URL = 'https://www.wanandroid.com/project/tree/json';
//
//  static const PROJECT_PAGE_URL_BEFORE = 'https://www.wanandroid.com/project/list/';
//  static const PROJECT_PAGE_URL_AFTER = '/json?cid=';
//
//  static const TREE_URL = 'https://www.wanandroid.com/tree/json';
//
//  static const TREE_ITEM_BEFORE = 'https://www.wanandroid.com/article/list/';
//  static const TREE_ITEM_AFTER = '/json?cid=';
//
//  static const NAVI_URL = 'https://www.wanandroid.com/navi/json';
//
//  static const LOGIN_URL = 'https://www.wanandroid.com/user/login';
//  static const REGISTER_URL = 'https://www.wanandroid.com/user/register';



  static const BASE_URL = 'http://47.110.250.177:20000/';
  static const REFRESH_TOKEN_URL = BASE_URL+'uaa/v1/auth/tokens';

  static const TASK_LIST_URL = BASE_URL+'groupwork/v1/employee/tasks';//任务列表
  static const TASK_ACCEPT_URL = BASE_URL+'groupwork/v1/employee/task/{id}/op/accept';//接受任务
  static const TASK_REFUSE_URL = BASE_URL+'groupwork/v1/employee/task/{id}/op/deny';//拒绝任务
  static const TASK_SET_TIME_URL = BASE_URL+'groupwork/v1/employee/task/{id}/op/confirm-time';//设置时间
  static const TASK_CONFIRM_REPORT_URL = BASE_URL+'groupwork/v1/employee/task/{id}/op/report';//确认报道


}
