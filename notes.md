Notes on using SQLite out of the box:

Considerations about performance: https://fractaledmind.github.io/2024/04/15/sqlite-on-rails-the-how-and-why-of-optimal-performance/

Different ways to select a random quote:
Fortune.offset(rand(Fortune.count)).limit(1).take
Fortune.find(Fortune.pluck(:id).sample)
