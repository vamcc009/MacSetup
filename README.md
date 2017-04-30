This project is to setup local Mac environment with most of the required tools for running local builds and configs using **Homebrew** [(http://brew.sh)](http://brew.sh/)  and **Ansible** [(www.ansible.com)](http://www.ansible.com/)




 > **common.yml** -> Basic and gnu tools
 >
 > **app.yml**   ->   Installs applications (google-chrome, vlc, ..)
 >
 > **ci.yml**    ->   Installs CI tools (jenkins, sonar, artifactory)
 >
 > **node.yml**  ->   Installs npm and Node.js tools
 >
 > **ql.yml**    ->   Installs Quicklook plugins
 >
 >**jenv.yml**   -> installs `jenv` and adds all JDKs to it
 >
 >**build.yml**  -> tools required for running builds
 >
 >**deploy.yml** ->  Virtualization/Deploy tools like docker and virtual box
 >
 > **list.yml**  -> Lists all installed tools using brew



## How to run
1) To Install all the packages
    - Open Terminal and clone this repo
    - Navigate to cloned directory run setup.sh
      ./setup.sh

2) To install a specific set of utilities

    ansible-playbook -i "localhost," -c local ansible/playbooks/<required>.yml
