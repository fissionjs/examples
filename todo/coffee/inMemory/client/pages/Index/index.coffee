{collectionView, modelView, DOM} =  require 'fission'
Todo = require '../../models/Todo'
{div, h1, input, span, a} = DOM



itemView = modelView
  model: Todo
  remove: -> @model.destroy()
  toggle: ->
    @model.done = !@model.done
    @model.save()
  check: ->
    if @model.done
      return 'done'
    return 'notdone'

  render: ->
    div {className: 'item'},
      input
        className: 'checkbox'
        type: 'checkbox'
        onClick: @toggle
        defaultChecked: @model.done

      span
        className: @check()
      , @model.text
      a
        className: 'remove'
        href: '#'
        onClick: @remove
      , ' x'

module.exports = collectionView
  model: Todo
  itemView: itemView
  addTodo: (e) ->
    if e.which is 13
      @collection.create text: e.target.value, done: false
      console.log @collection
      e.target.value = ''

  render: ->
    done = @collection.filter (todo) -> todo.done

    div {className: 'content'},
      h1 {}, 'todos'
      input
        className: 'add-item'
        onKeyDown: @addTodo
        type: 'text'
        placeholder: 'What needs to be done?'

      div {className: 'items'},
        @items

      div {}, "#{@items.length-done.length} items left"
      div {}, "clear completed (#{done.length})"
