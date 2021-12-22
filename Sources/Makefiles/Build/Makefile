all:
	sh ./Scripts/build_mainweb.sh
	java -jar fire.jar
	sh ./Scripts/prepare_docusaurus_build_env.sh
	sh ./Scripts/yarn_install_docusaurus_dependencies.sh
	sh ./Scripts/yarn_build_docusaurus.sh
	sh ./Scripts/build_portal_final_env.sh