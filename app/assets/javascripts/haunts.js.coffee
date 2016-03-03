# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

  # override method
  # create_infowindow: ->
  #   return null unless _.isString @args.infowindow

  #   boxText = document.createElement("div")
  #   boxText.setAttribute('class', 'marker_container') #to customize
  #   boxText.innerHTML = @args.infowindow
  #   @infowindow = new InfoBox(@infobox(boxText))

  # @bind_infowindow()

  # infobox: (boxText)->
  #   content: boxText
  #   pixelOffset: new google.maps.Size(-140, 0)
  #   boxStyle:
  #     width: "280px"


# class RichMarkerBuilder extends Gmaps.Google.Builders.Marker #inherit from builtin builder
#   #override create_marker method
#   create_marker: ->
#     options = _.extend @marker_options(), @rich_marker_options()
#     @serviceObject = new RichMarker options #assign marker to @serviceObject

#   rich_marker_options: ->
#     marker = document.createElement("div")
#     marker.setAttribute 'class', 'marker_container'
#     marker.innerHTML = @args.marker
#     { content: marker }

# handler = Gmaps.build 'Google', { builders: { Marker: RichMarkerBuilder} } #dependency injection

# #then standard use
# handler.buildMap { provider: {}, internal: {id: 'map'} }, ->
#   markers = handler.addMarkers([
#     {"lat": 0, "lng": 0, 'marker': '<span>Here!</span>'}
#   ])
#   handler.bounds.extendWith(markers)
#   handler.fitMapToBounds()

# class RichMarkerBuilder extends Gmaps.Google.Builders.Marker #inherit from builtin builder
#   #override create_marker method
#   create_marker: ->
#     options = _.extend @marker_options(), @rich_marker_options()
#     @serviceObject = new RichMarker options #assign marker to @serviceObject

#   rich_marker_options: ->
#     boxText = document.createElement("div")
#     boxText.setAttribute('class', 'yellow')
#     boxText.innerHTML = @args.title
    # _.extend(@marker_options(). { content: boxText })

# @buildMap = (markers)->
# handler = Gmaps.build 'Google', { builders: { Marker: RichMarkerBuilder} } #dependency injection

# #then standard use
# handler.buildMap { provider: {}, internal: {id: 'map'} }, ->
#   markers = handler.addMarkers(
#     {"lat": 0, "lng": 0, 'marker': '<span>Here!</span>'}
#   )
#   handler.bounds.extendWith(markers)
#   handler.fitMapToBounds()