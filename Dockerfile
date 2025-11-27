FROM acdhch/noske-fcs-dse-static:latest AS dse_static

FROM ghcr.io/acdh-oeaw/noske-ubi9/noske:5.71.15-2.225.8-2-open
# ls /var/lib/manatee/registry/; echo *[!.]???
ENV CORPLIST="abacus akademieprotokolle baedkerdigital dhdabstracts familiensache grazernuntiatur gtrans jad legalkraus nuntiaturpiusxi schnitzlerbriefe schnitzlertagebuch shawi staribacher tillichlectures tunocent wibarab wiener-diarium wienerrundschau wmp1"
COPY --from=dse_static /var/lib/manatee /var/lib/manatee
