require(["webjars!knockout.js", 'webjars!jquery.min.js', 'webjars!jquery-ui.custom.min.js', "/routes.js", "webjars!bootstrap.min.js",
         "webjars!jquery.jsPlumb-1.5.2-min.js", "webjars!jquery.ui.touch-punch.min.js"], (ko) ->

  class FlowModel
    constructor: () ->
      self = @

      # The nodes in the flow graph
      @nodes = ko.observableArray()

  class FlowPaletteModel
    constructor: () ->
      self = @

      # Sources
      @sources = ko.observableArray()

      # Sinks
      @sinks = ko.observableArray()

      # Operations
      @operations = ko.observableArray()

  $(document).ready ->

  jsPlumb.ready ->

    jsPlumb.importDefaults({
      DragOptions : { cursor: 'pointer', zIndex:2000 },
      PaintStyle : { strokeStyle:'#666' },
      EndpointStyle : { width:20, height:16, strokeStyle:'#666' },
      Endpoint : "Rectangle",
      Anchors : ["TopCenter", "TopCenter"]
    })

    jsPlumb.draggable($(".palette-source"), {
      start: (e) ->
        $(e.target).clone().appendTo($(".flow-canvas"))
    })
    jsPlumb.draggable($(".flow-node"), { containment: "parent" })

    # Setup Knockout
    model = new FlowModel
    ko.applyBindings(model)
)