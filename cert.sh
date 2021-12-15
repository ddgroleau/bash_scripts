## Microsoft Documentation for HTTPS support.

#**-------- Windows using Linux containers --------**
    # # ** Generate certificate and configure local machine:
        # dotnet dev-certs https -ep %USERPROFILE%\.aspnet\https\aspnetapp.pfx -p { password here }
        # dotnet dev-certs https --trust

    # # ** docker-compose.yml file:
        # version: '3.4'

        # services:
        #   webapp:
        #     image: mcr.microsoft.com/dotnet/core/samples:aspnetapp
        #     ports:
        #       - 80
        #       - 443
        #     environment:
        #       - ASPNETCORE_ENVIRONMENT=Development
        #       - ASPNETCORE_URLS=https://+:443;http://+:80
        #       - ASPNETCORE_Kestrel__Certificates__Default__Password=password
        #       - ASPNETCORE_Kestrel__Certificates__Default__Path=/https/aspnetapp.pfx
        #     volumes:
        #       - ~/.aspnet/https:/https:ro


#**-------- macOS or Linux --------**
    # # ** Generate certificate and configure local machine:

        # dotnet dev-certs https -ep ${HOME}/.aspnet/https/aspnetapp.pfx -p { password here }
        # dotnet dev-certs https --trust

    # # ** docker-compose.yml file:
        # version: '3.4'

        # services:
        # webapp:
        #     image: mcr.microsoft.com/dotnet/core/samples:aspnetapp
        #     ports:
        #     - 80
        #     - 443
        #     environment:
        #     - ASPNETCORE_ENVIRONMENT=Development
        #     - ASPNETCORE_URLS=https://+:443;http://+:80
        #     - ASPNETCORE_Kestrel__Certificates__Default__Password=password
        #     - ASPNETCORE_Kestrel__Certificates__Default__Path=/https/aspnetapp.pfx
        #     volumes:
        #     - ~/.aspnet/https:/https:ro


#**-------- Ubuntu trust the certificate for service-to-service communication --------**
    # # Install OpenSSL 1.1.1h or later. See your distribution for instructions on how to update OpenSSL.
    # # Run the following commands:

        # dotnet dev-certs https
        # sudo -E dotnet dev-certs https -ep /usr/local/share/ca-certificates/aspnet/https.crt --format PEM
        # sudo update-ca-certificates


#**-------- Trust HTTPS certificate on Linux using Edge or Chrome --------**
    # # For chromium browsers on Linux:

    # # Install the libnss3-tools for your distribution.

    # # Create or verify the $HOME/.pki/nssdb folder exists on the machine.

    # # Export the certificate with the following command:

    #     dotnet dev-certs https
    #     sudo -E dotnet dev-certs https -ep /usr/local/share/ca-certificates/aspnet/https.crt --format PEM

    # # Run the following commands:

    #     certutil -d sql:$HOME/.pki/nssdb -A -t "P,," -n localhost -i /usr/local/share/ca-certificates/aspnet/https.crt
    #     certutil -d sql:$HOME/.pki/nssdb -A -t "C,," -n localhost -i /usr/local/share/ca-certificates/aspnet/https.crt
    #     Exit and restart the browser.


#**-------- Trust the certificate with Firefox on Linux --------**
    # Export the certificate with the following command:

    #     dotnet dev-certs https
    #     sudo -E dotnet dev-certs https -ep /usr/local/share/ca-certificates/aspnet/https.crt --format PEM

    # # Create a JSON file at /usr/lib/firefox/distribution/policies.json with the following contents:

    #     # cat <<EOF | sudo tee /usr/lib/firefox/distribution/policies.json
    #     # {
    #     #     "policies": {
    #     #         "Certificates": {
    #     #             "Install": [
    #     #                 "/usr/local/share/ca-certificates/aspnet/https.crt"
    #     #             ]
    #     #         }
    #     #     }
    #     # }
    #     # EOF


#**-------- Trust HTTPS certificate from Windows Subsystem for Linux --------**
    # # The Windows Subsystem for Linux (WSL) generates an HTTPS self-signed development certificate. To configure the Windows certificate store to trust the WSL certificate:
    # # Export the developer certificate to a file on Windows:

    #     dotnet dev-certs https -ep C:\<<path-to-folder>>\aspnetcore.pfx -p $CREDENTIAL_PLACEHOLDER$
            # #-- Where $CREDENTIAL_PLACEHOLDER$ is a password.

    # # In a WSL window, import the exported certificate on the WSL instance:

    #     dotnet dev-certs https --clean --import /mnt/c/<<path-to-folder>>/aspnetcore.pfx -p $CREDENTIAL_PLACEHOLDER$
