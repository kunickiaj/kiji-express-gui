require(["webjars!knockout.js", 'webjars!jquery.min.js', 'webjars!jquery-ui.custom.min.js', "/routes.js", "webjars!bootstrap.min.js",
         "webjars!jquery.jsPlumb-1.5.2-min.js"], (ko) ->

  class FlowModel
    constructor: () ->
      self = @

  $(document).ready ->

  jsPlumb.ready ->

    jsPlumb.importDefaults({
      DragOptions : { cursor: 'pointer', zIndex:2000 },
      PaintStyle : { strokeStyle:'#666' },
      EndpointStyle : { width:20, height:16, strokeStyle:'#666' },
      Endpoint : "Rectangle",
      Anchors : ["TopCenter", "TopCenter"]
    })

    jsPlumb.draggable($(".flow-node"), { containment: "parent" })
)