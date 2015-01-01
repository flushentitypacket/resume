# Resume
A Rails webapp profile for Ronald Hong as a software engineering candidate.

## FAQ
### Why JSON?
For now, the resume itself (CV `cv.rb`) stores all of its data in JSON format in the database. I toyed with the idea of powering the CV with associated db-backed models, but I decided that a CV was too dynamic and ill-structured to fit in a db paradigm.

An example of the ease that simple JSON allows is a change something like the following that I made early on: [example](https://github.com/flushentitypacket/resume/commit/0283ca569ea66a4303744c8fc09d53fe0b759b98)
