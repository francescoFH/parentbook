def seed_users
  user_id = 0
  10.times do
    User.create(
      name: "test#{user_id}",
      email: "test#{user_id}@test.com",
      password: '123456',
      password_confirmation: '123456'
    )
    user_id = user_id + 1
  end
end


def seed_categories
  cat1 = ['a', 'b', 'c', 'd']
  cat2 = ['e', 'f', 'g', 'h']
  cat3 = ['i', 'j', 'k', 'l']

  cat1.each do |name|
    Category.create(branch: 'cat1', name: name)
  end

  cat2.each do |name|
    Category.create(branch: 'cat2', name: name)
  end

  cat3.each do |name|
    Category.create(branch: 'cat3', name: name)
  end
end

def seed_posts
  categories = Category.all

  categories.each do |category|
    5.times do
      Post.create(
        title: Faker::Lorem.sentences[0],
        content: Faker::Lorem.sentences[0],
        user_id: rand(1..9),
        category_id: category.id
      )
    end
  end
end

seed_users
seed_categories
seed_posts
