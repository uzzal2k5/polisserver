# polisServer

 Docker Run
        
        docker run -itd --name polisdb -p 5432:5432 uzzal2k5/polis_postgresql:1.0
        docker run -itd --name adminparticipants -p 5002:5002 -p 5001:5001 -e SERVICE_URL=http://polisserver uzzal2k5/polis_adminparticipants:1.0
        docker run -itd --name server -p 5000:5000 -e STATIC_FILES_HOST=adminparticipants -e DATABASE_URL=postgres://polis:polis@polisdb:5432/polis uzzal2k5/polis_server:1.0
        docker run -itd --name math -p 8080:8080 -e SERVICE_URL=http://polisserver_ip -e DATABASE_URL=postgres://polis:polis@polisdb:5432/polis uzzal2k5/polis_math:1.0
        
        