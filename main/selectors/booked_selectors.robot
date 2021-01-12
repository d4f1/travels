*** Variables ***

${flight_result_icon}                           //*[@class="theme-search-results-item-flight-section-airline-logo"]

${first_flight_result_panel}                    //*[@class="theme-search-results-item-preview"]//div
${book_now}                                     //button[contains(text(),"Book Now")][1]

${placeholder_note}                             //*[@name="additionalnotes"]
${placeholder_passangers_name}                  name=passenger[name]
${placeholder_passangers_age}                   name=passenger[age]
${placeholder_passangers_passport}              name=passenger[passportnumber]

${confirm_book_now_button}                      //*[@class="btn btn-success btn-lg btn-block completebook"]

${title_booked}                                 //*[@class="heading-title"]
${pay_on_arrival_button}                        //*[@class="btn btn-default arrivalpay"]

${allert_arrival}                               //*[@class="content"