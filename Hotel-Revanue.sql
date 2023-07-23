--Use [Project-3(Hotel Revanue)];


With HotelRevanue AS (
Select * From ['2018']
Union
Select * From ['2019']
Union
Select * From ['2020']
)
Select arrival_date_year,Sum(required_car_parking_spaces) From HotelRevanue AS h
left Join market_segment AS m on h.market_segment=m.market_segment
left Join meal_cost AS mc ON mc.meal=h.meal
group by arrival_date_year

