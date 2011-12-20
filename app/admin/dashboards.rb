ActiveAdmin::Dashboards.build do

  # Define your dashboard sections here. Each block will be
  # rendered on the dashboard in the context of the view. So just
  # return the content which you would like to display.
  
  # == Simple Dashboard Section
  # Here is an example of a simple dashboard section
  #
     #section "Recent Fuel Intakes" do
       #ul do
         #FuelIntake.all.collect do |post|
           #li post.id
         #end
       #end
     #end

     section "Recent Fuel Logs" do
       table_for FuelIntake.order("created_at desc").limit(5) do
         #column :employee do |fuel_intake|
           #link_to fuel_intake.employee, "#"
         #end
         column :employee
         column :equipment
         column :fuel
         column :quantity
         column :distance_covered
         column :location
         column :price_per_litre
         column :total_price do |fuel_intake|
           total_price = fuel_intake.quantity * fuel_intake.price_per_litre
           number_to_currency total_price
         end
       end
       strong {link_to "View all fuel logs", admin_fuel_intakes_path}
     end
  
  # == Render Partial Section
  # The block is rendered within the context of the view, so you can
  # easily render a partial rather than build content in ruby.
  #
  #   section "Recent Posts" do
  #     div do
  #       render 'recent_posts' # => this will render /app/views/admin/dashboard/_recent_posts.html.erb
  #     end
  #   end
  
  # == Section Ordering
  # The dashboard sections are ordered by a given priority from top left to
  # bottom right. The default priority is 10. By giving a section numerically lower
  # priority it will be sorted higher. For example:
  #
  #   section "Recent Posts", :priority => 10
  #   section "Recent User", :priority => 1
  #
  # Will render the "Recent Users" then the "Recent Posts" sections on the dashboard.

end
