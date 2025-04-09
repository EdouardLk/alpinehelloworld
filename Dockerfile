FROM jenkins/jenkins:lts

# Passer en root pour installer Docker
USER root

# Installer Docker dans le conteneur Jenkins
RUN apt-get update && \
    apt-get install -y docker.io && \
    apt-get clean

# ⚠️ On NE redescend PAS à l’utilisateur jenkins
# USER jenkins

