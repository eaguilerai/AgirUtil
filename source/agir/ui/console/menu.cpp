/*!
 * \file menu.cpp
 * \brief Contains the definition of members of the agir::ui::console::Menu class.
 * \author Erasmo Aguilera
 * \date April 19, 2015
 */

#include <agir/ui/console/menu.h>

#include <utility>

using namespace agir::ui::console;

/*! \param options the list of menu options */
Menu::Menu (std::initializer_list<Menu_option> options)
{
    initialize_options (options);
}

/*!
 * \param option_name the name of the menu option to be checked.
 * \return \c true if the menu contains the option, otherwise \c false.
 */
bool Menu::contains_option (const std::string& option_name) const
{
    return options().find (option_name) != options().end();
}

void Menu::show() const
{
    
}

/*!
 * \param options the list of options used to initialize the map of menu
 * options.
 */
void Menu::initialize_options (const std::initializer_list<Menu_option>& options)
{
    for (auto option : options)
        this->options().insert (std::make_pair (option.name(), option));
}

/*! \return The map of menu options. */
Menu::Option_map& Menu::options()
{
    return m_options;
}

/*! \return The map of menu options. */
const Menu::Option_map& Menu::options() const
{
    return m_options;
}
