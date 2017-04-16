# # Place all the behaviors and hooks related to the matching controller here.
# # All this logic will automatically be available in application.js.
# # You can use CoffeeScript in this file: http://coffeescript.org/

# class Vuez
#   constructor: ->
#     @setup()

#   registerComponents: ->
#     Vue.component('modal'
#       template: """
#         <div class="" id="namedSlotsModal" tabindex="-1" role="dialog" aria-labelledby="namedSlotsModalLabel" aria-hidden="true">
#           <div class="modal-dialog" role="document">
#             <div class="modal-content">
#               <div class="modal-header">
#                 <slot name="header"></slot>
#               </div>
#               <div class="modal-body">
#                 <p><slot>Default content here.</slot></p>
#               </div>
#               <div class="modal-footer">
#                 <slot name="footer"></slot>
#               </div>
#             </div>
#           </div>
#         </div>
#       """
#       mounted: ->
#         @$root.mod.slot.body = @$slots.body != undefined
#     )

#     Vue.component('coupon'
#       template: '<input placeholder="Enter your coupon code" @blur="onCouponApplied">'
#       methods:
#         onCouponApplied: ->
#           # @$emit('applied', '123')
#           @$root.$emit('sys', 123)
#       created: ->
#         @$root.$on('sys', (data) -> console.log "coupon component's response to system wide event #{data}")
#     )

#     Vue.component('tab'
#       template: '<div class="tab-pane" :id="cid" :class="{ active: selected }" role="tabpanel"><slot></slot></div>'
#       props:
#         name: required: true
#         id: {}
#         selected: default: false
#       computed:
#         cid: ->
#           if @id then @id else @name.toLowerCase().replace(/ /g, '-')
#         href: ->
#           "##{@cid}"
#     )

#     Vue.component('tabs'
#       template: """
#         <div>
#           <ul class="nav nav-tabs" role="tablist">
#             <li v-for="tab in tabs" class="nav-item">
#               <a @click="selectTab(tab, $event)" class="nav-link" :class="{ active: tab.selected }" data-toggle="tab" :href="tab.href" role="tab">{{ tab.name }}</a>
#             </li>
#           </ul>

#           <div class="tab-content">
#             <slot></slot>
#           </div>
#         </div>
#       """
#       computed:
#         test: ->
#           app.title
#       data: ->
#         tabs: []
#       created: ->
#         @tabs = @$children
#       methods:
#         selectTab: (tab, event) ->
#           console.log tab.name, event
#           console.log @test
#       # mounted: ->
#       #   console.log @$children
#     )

#     Vue.component('message'
#       template: '#message'
#       props: ['title']
#       data: ->
#         isVisible: true
#     )

#     Vue.component('task'
#       template: '#task-row'
#     )

#     Vue.component('task-list'
#       template: """
#         <div>
#           <task v-for="task in tasks">{{ task.description }}</task>
#         </div>
#       """
#       data: ->
#         tasks: [
#           { description: 'Go to the store', completed: true }
#           { description: 'Finish screencast', completed: false }
#           { description: 'Make donation', completed: false }
#         ]
#       # mounted: ->
#       #   console.log @$children
#     )

#   setup: ->
#     @registerComponents()

#     window.app = new Vue(
#       el: '#app'
#       data:
#         couponApplied: false
#         modalBody: 'Dynamic modal body'
#         mod:
#           button:
#             close: true
#           slot:
#             body: false
#         message: 'Hello Vue!'
#         name: ''
#         arr: ['D.R.A.M.', 'Pepper', 'Less Than Jake']
#         title: 'Now the title is being set through JS'
#         className: 'red'
#         enabled: true
#         tasks: [
#           { description: 'Go to the store', completed: true }
#           { description: 'Finish screencast', completed: false }
#           { description: 'Make donation', completed: false }
#           { description: 'Clear inbox', completed: false }
#           { description: 'Make dinner', completed: false }
#           { description: 'Clean room', completed: true }
#         ]
#       computed:
#         reversedMessage: ->
#           @message.split('').reverse().join('')
#         incompleteTasks: ->
#           @tasks.filter (task) -> !task.completed
#         completedTasks: ->
#           @tasks.filter (task) -> task.completed
#       methods:
#         onCouponApplied: (eventData) ->
#           @couponApplied = true
#           console.log 'applied', eventData
#         respondToCustomEvent: ->
#           console.log 'responded to custom event'
#         modal: ->
#           @modalBody = 'Changed modal text on button click'
#         addName: ->
#           @arr.push(@name)
#           @name = ''
#           @log()
#         log: ->
#           console.log 'name added'
#       created: ->
#         @$on('sys', -> console.log "Root vue instance received sys event")
#       mounted: ->
#         # alert 'ready'
#     )

# $ ->
#   new Vuez
