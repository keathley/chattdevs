$(document).ready ->
  $(".users-list").infinitescroll
    loading:
      finished: undefined
      finishedMsg: ""
      msg: null
      msgText: "Loading more users"
      selector: null
    navSelector: "nav.pagination"
    nextSelector: "nav.pagination a[rel=next]"
    itemSelector: "li.user"