


Declare @t varchar(max)
Declare @m varchar(max)

set @m=''--tu wrzucamy base64

        SELECT @t=
        CAST(
             CAST(N'' AS XML).value(
                   'xs:base64Binary(sql:column("bin"))'
               , 'VARBINARY(MAX)'
             ) 
             AS VARCHAR(MAX)
        ) 
        FROM (
             SELECT CAST(@m AS VARCHAR(MAX)) AS bin
        ) AS bin_sql_server_temp;

select @m
select @t

