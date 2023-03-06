# Technical Test
This coding assignment is for the creation of a working web application for review. It intends to give
insight into the way you approach a problem, and the techniques and skills you deploy in its
resolution.

To complete the assignment you must:
- Produce a working solution that fulfils the user story
- Provide appropriate unit tests
- Include a README file providing necessary instructions to enable a junior developer
without experience of the specific technology to use the solution successfully
- Send a zip file to Xpansion (pburch@xpansionfts.com) containing your completed solution

Your solution will demonstrate your competence with OOP and solution design using the language
of your choice. You are free to use any appropriate frameworks. Note that we use C# / React
within Visual Studio. It would be good to include an explicit controller. There is no requirement to
incorporate a database.
You are expected to work individually - however if you have any issues please contact Xpansion
(pburch@xpansionfts.com)
Coding Assignment
Teleport (https://developers.teleport.org/) aggregates global quality of life data and makes it
available through an open-access API.
Use the Teleport API to provide data to a simple web application that fulfils the user story below:
```
As an entrepreneur, 
I want to rank urban areas on a selected continent by Teleport city
score, 
so that I can make an informed decision on where to open my next office.
```
Your application should provide a drop-down list of continents, and when one is selected, an
ordered table of maximum 5 rows with the following structure should be displayed

| Urban Area Name | Teleport Score | Summary |
|--|--|--|
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |

You should avoid hard-coding static lists in your application.

## Installation

In order to run this program on your own machine, you can simply clone this repository, or download this directory onto your machine, then follow these commands:

```
bundle install # this installs the gems in the Gemfile
rackup # this starts up the server
```
The terminal should then read:
```
* Listening on http://127.0.0.1:9292
* Listening on http://[::1]:9292
```
Following either of these urls should lead you to the landing page of the web-app.

## Testing

This program is tested using RSpec, which means you can run all the written tests by running the command `rspec` in the command line while in the directory.