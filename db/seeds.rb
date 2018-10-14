# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#GEOGRAPHOCS
country = Country.create!(name: 'US')
state = State.create!(name: 'California', acronym: 'CA', country: country)
sf=City.create!(name: 'San Francisco', country: country, state: state)
sunnyvale=City.create!(name: 'Sunnyvale', country: country, state: state)
marina = Neighbourhood.create!(name: 'Marina', city: sf)
inner_richmond = Neighbourhood.create!('Inner Richmond', city: sf)

# CONTACT INFO
email1=Email.create!(email: 'alex@alex.com')
email2=Email.create!(email: 'other@alex.com')
phone1 = Phoene.create!(phone: '1234567891')
phone2 = Phoene.create!(phone: '1234567892')

# COMPANIES
company1 = Company.create!(name: 'Evil, Corp')
company2 = Company.create!(name: 'Google')

# SCHOOLS
university = SchoolType.create!(name: 'University')

stanford = School.create!(name: 'Stanford', school_type: university)
mit = School.create!(name: 'MIT', school_type: university)

stanford_cs = SchoolDepartment.create!(name: 'Computer Science', school: stanford)
mit_cs = SchoolDepartment.create!(name: 'Computer Science', school: mit)

# STIGMAS
stigma1 = Stigma.create!(name: 'stigma 1', stigma_type: 'Type 1')
stigma2 = Stigma.create!(name: 'stigma 2', stigma_type: 'Type 1')
stigma3 = Stigma.create!(name: 'stigma 3', stigma_type: 'Type 2')
stigma4 = Stigma.create!(name: 'stigma 4', stigma_type: 'Type 4')

# PROFILES
social_profile_1 = SocialProfile.create!(first_name: 'Alex',
                                         last_name: 'Programmer',
                                         social_profile_type: 'Facebook',
                                         schools: [stanford],
                                         school_departments: [mit_cs],
                                         cities: [sunnyvale, sf],
                                         neighbourhoods: [inner_richmond, marina],
                                         companies: [company1, company2],)

social_profile_2 = SocialProfile.create!(first_name: 'Alex',
                                         last_name: 'Programmer',
                                         social_profile_type: 'Instagram',
                                         user_name:'alex-the-programmer')

profile1 = Profile.create!(first_name: 'Alex',
                           last_name: 'Programmer',
                           age: 27,
                           emails: [email1, email2],
                           phones: [phone1, phone2],
                           schools: [stanford],
                           school_departments: [mit_cs],
                           cities: [sunnyvale, sf],
                           neighbourhoods: [inner_richmond, marina],
                           companies: [company1, company2],
                           social_profiles: [social_profile_1, social_profile_2],
                           stigmas: [stigma1, stigma2, stigma3, stigma4])


