# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
User.destroy_all
Category.destroy_all
WorkExperience.destroy_all
Profile.destroy_all

u = User.new
u.name = 'nandang'
u.save

c = Category.new
c.name = 'story'
c.description = 'test category'
c.save

Profile.create(about: 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque purus justo, hendrerit ut pulvinar in, bibendum sed enim. Proin fermentum, tellus volutpat volutpat hendrerit, ligula eros iaculis arcu, ut dapibus augue metus vel lacus. Suspendisse nec auctor diam. Etiam semper fringilla nibh quis elementum. Suspendisse tristique arcu at magna sodales sollicitudin. Curabitur consequat dolor ac nisi facilisis fermentum. Curabitur porttitor, odio ut maximus iaculis, nibh ante fermentum purus, et rhoncus ante turpis vitae arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse tempus massa sit amet elementum molestie. Nam quis lobortis lacus. Suspendisse potenti. Integer faucibus nibh at bibendum faucibus. Cras magna tortor, molestie vitae elit nec, consectetur fringilla lectus. Vivamus malesuada in ex in commodo.
<p>Nam imperdiet lacus vel neque accumsan cursus. Morbi dignissim, libero eget imperdiet maximus, ipsum justo dignissim nisi, eget sollicitudin lectus tortor ac libero. Pellentesque sem lorem, tempor vitae purus sit amet, feugiat vestibulum libero. Integer ultricies venenatis metus a tincidunt. Suspendisse dignissim eget justo vel mollis. Donec vel quam est. Nulla at urna nec dolor porttitor imperdiet non posuere sem. Vestibulum luctus odio quis velit vestibulum vulputate. Etiam at enim nec lectus volutpat sollicitudin. Donec pharetra nibh sed nulla dictum, eget mollis velit dictum. Fusce vel imperdiet justo.</p>')

WorkExperience.create([
  {
    job_title: 'Office Boy',
    company: 'PT. Maju Mundur Ok',
    start_date: 'Januari 2013',
    end_date: 'Agustur 2017',
    user: u
  },
  {
    job_title: 'Boss',
    company: 'PT. Selalu Semangat',
    start_date: 'Agustus 2018',
    end_date: 'Agustur 2020',
    user: u
  }
])

Post.create([
  {
    title: 'Tulisan ke 1', content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce varius in turpis in fringilla. Maecenas molestie tincidunt lorem ac dictum. Etiam porta nibh sit amet nulla faucibus, sed efficitur elit consequat. Fusce est erat, efficitur ac tincidunt eu, euismod id erat. Etiam tempus sed odio eu sollicitudin. Aliquam consequat arcu nec suscipit egestas. Proin ipsum dui, tristique quis porttitor nec, mollis vel ligula. Mauris aliquam, lorem sit amet dignissim efficitur, orci nisi gravida mi, quis tristique purus sem id felis. Mauris et arcu diam. In hac habitasse platea dictumst. Integer interdum leo vitae odio volutpat, sed sagittis nulla bibendum. Donec sodales elit at felis sodales convallis.", category_ids: [c.id], user: u
  },
  {
    title: 'Tulisan ke 2', content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce varius in turpis in fringilla. Maecenas molestie tincidunt lorem ac dictum. Etiam porta nibh sit amet nulla faucibus, sed efficitur elit consequat. Fusce est erat, efficitur ac tincidunt eu, euismod id erat. Etiam tempus sed odio eu sollicitudin. Aliquam consequat arcu nec suscipit egestas. Proin ipsum dui, tristique quis porttitor nec, mollis vel ligula. Mauris aliquam, lorem sit amet dignissim efficitur, orci nisi gravida mi, quis tristique purus sem id felis. Mauris et arcu diam. In hac habitasse platea dictumst. Integer interdum leo vitae odio volutpat, sed sagittis nulla bibendum. Donec sodales elit at felis sodales convallis.", category_ids: [c.id], user: u
  },
  {
    title: 'Tulisan ke 3', content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce varius in turpis in fringilla. Maecenas molestie tincidunt lorem ac dictum. Etiam porta nibh sit amet nulla faucibus, sed efficitur elit consequat. Fusce est erat, efficitur ac tincidunt eu, euismod id erat. Etiam tempus sed odio eu sollicitudin. Aliquam consequat arcu nec suscipit egestas. Proin ipsum dui, tristique quis porttitor nec, mollis vel ligula. Mauris aliquam, lorem sit amet dignissim efficitur, orci nisi gravida mi, quis tristique purus sem id felis. Mauris et arcu diam. In hac habitasse platea dictumst. Integer interdum leo vitae odio volutpat, sed sagittis nulla bibendum. Donec sodales elit at felis sodales convallis.", category_ids: [c.id], user: u
  }
])
