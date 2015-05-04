/*!
 * \file menu_option.cpp
 * \brief Contains the definition of members of the
 * agir::ui::console::Menu_option class.
 * \author Erasmo Aguilera
 * \date April 20, 2015
 */

#include <agir/ui/console/menu_option.h>

using namespace agir::ui::console;

/*! \param name the name of the options. */
Menu_option::Menu_option (const std::string& name) : m_name {name}
{
}

/*! \return The name of the menu options. */
const std::string& Menu_option::name() const
{
    return m_name;
}


