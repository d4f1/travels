*** Settings ***

#### ENV
Resource                    environment.robot
Resource                    importer.robot
Resource                    capabilities.robot
Resource                    data.robot

#### Pages
Resource                    ../pages/login_page.robot
Resource                    ../pages/home_page.robot
Resource                    ../pages/booked_page.robot

#### Selectors
Resource                    ../selectors/login_selectors.robot
Resource                    ../selectors/home_selectors.robot
Resource                    ../selectors/booked_selectors.robot

#### Modules
Resource                    ../modules/login_module.robot
Resource                    ../modules/booked_modules.robot

#### Utils
Resource                    ../utils/general_keywords.robot
Resource                    ../utils/time.robot
Resource                    ../utils/generate_account_data.robot