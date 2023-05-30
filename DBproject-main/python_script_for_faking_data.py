from faker.providers import BaseProvider
from faker import*
import csv
import random
# I don't know what is wrong but it fail at running here but at colab it run successfully

class NationalityProvider(BaseProvider):
    def nationality(self):
        return random.choice(['USA', 'ASIAN', 'ITALY', 'SPAIN', 'EURO_UNION', 'JAPAN', 'ISRAEL'])


class GenderProvider(BaseProvider):
    def gender(self):
        return random.choice(['F', 'M'])





fak = Faker()
fak.add_provider(NationalityProvider)
fak.add_provider(GenderProvider)

with open('costumers_data.csv', 'w') as csvfile_costumers:
    writer = csv.writer(csvfile_costumers)
    writer.writerow(["ID","ADDRESS","NAME","BIRTH_DATE","LISENCE_DATE","PHONE_NUMBER","GENDER","EMAIL","NATIONALITY"])
    for i in range(1,20):
        writer.writerow([str(i),  # adjective index for primary key
           fak.address().replace('\n', ''),  # address
           fak.name(),  # name
           fak.date_between(start_date ='-100y', end_date = '-17y' ),   # date of birth
           fak.date_between(start_date ='-90y', end_date='today'),      # date of licence issue
           fak.numerify("#########"),
           fak.gender(),
           fak.email(),
           fak.nationality()] )

# הזמנות:
# RESERVATION ID
# CLIENT ID (FORiGN KEY)
# CAR ID (FORiGN KEY)
# RESERVATION DATE
# START DATE
# RETURN DATE

with open('orde.csv', 'w') as csvfile_orders:
    writer = csv.writer(csvfile_orders)
    writer.writerow(["CLIENT_ID","CAR_ID","RESERVATION_DATE","START_DATE","RETURN_DATE","RESERVATION_ID"])
    for i in range(1,4000):
        writer.writerow([random.randrange(0, 20000),   # client ID
                        random.randrange(0, 2000),  # car ID
                        fak.date_between(start_date='-50y'),  # reservation date
                        fak.date_between(start_date='-50y'),  # start date
                        fak.date_between(start_date='-50y'),  # return date
                        str(i)])  # adjective index for primary key


with open('cars.csv', 'w') as csvfile_cars:
    writer = csv.writer(csvfile_cars)
    writer.writerow(["BRANCH_ID","IS_ACTIVE","PROD_DATE","MODEL_ID","CAR_ID"])
    for i in range(1,2):
        writer.writerow([fak.numerify("###"),  # BRANCH ID
                        random.randrange(0, 2),  # is active
                        fak.date_between(start_date ='-90y', end_date='-1y'),  # production date
                        fak.numerify("##########"),  # return date
                        str(i)])  # adjective index for primary key
