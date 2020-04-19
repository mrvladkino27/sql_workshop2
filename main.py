import cx_Oracle

username = 'system'
password = 'ozotos22'
database = 'localhost/xe'

connection = cx_Oracle.connect(username, password, database)
cursor = connection.cursor()

query = '''
		SELECT 
		       MANUFACTURER.COMPANY_NAME,
		       COUNT(CAR.CAR_VIN)
		      FROM
		        CAR JOIN LOT
		            ON CAR.CAR_VIN = lot.car_vin
		        JOIN CAR_MODEL
		            ON CAR.CAR_MODEL = car_model.model_name
		        JOIN MANUFACTURER
		            ON car_model.model_manufactured = MANUFACTURER.COMPANY_NAME
		            
            	GROUP BY MANUFACTURER.COMPANY_NAME
'''
cursor.execute(query)
print('')
print('')
print('First request shows which companies produced cars and amount of that cars')

company = []
count = []

for record in cursor.fetchall():
  company.append(record[0])
  count.append(record[1])
  print(record[0]," "*(25-len(record[0])), record[1])
print('')

query = '''SELECT FUEL.FUEL_NAME,
    COUNT(FUEL.FUEL_NAME)/(
    SELECT COUNT(CAR.CAR_VIN)
    FROM CAR JOIN LOT ON CAR.CAR_VIN = LOT.CAR_VIN)
FROM 
    CAR JOIN LOT
    ON CAR.CAR_VIN = LOT.CAR_VIN
    JOIN FUEL ON CAR.CAR_FUEL = FUEL.FUEL_NAME
    GROUP BY FUEL.FUEL_NAME '''

cursor.execute(query)
print("""Second request shows the attitude between types of fuel depends on
 cars from craiglist""")
print('')

fuel_type = []
rate = []
for record in cursor.fetchall():
	fuel_type.append(record[0])
	rate.append(record[1])
	print(record[0]," "*(25-len(record[0])), record[1])
print('')

query = '''SELECT 
       CAR.CAR_YEAR,
       COUNT(CAR.CAR_VIN)
      FROM
        CAR
    GROUP BY CAR.CAR_YEAR'''

cursor.execute(query)
print('Third request shows depending amount of cars on years')
print('')
result = sorted(cursor.fetchall())

years = []
amount = []
for record in result:
	years.append(record[0])
	amount.append(record[1])
	print(record[0]," "*21, record[1])
print('')