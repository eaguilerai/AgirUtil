/*!
 * \file menu.h
 * \brief Contains the definition of the agir::ui::console::Menu class.
 * \author Erasmo Aguilera
 * \date April 19, 2015
 */

#ifndef AGIR__UI__CONSOLE__MENU_H
#define	AGIR__UI__CONSOLE__MENU_H

#include "abstract/menu.h"
#include "menu_option.h"

#include <map>
#include <initializer_list>

namespace agir {
namespace ui {
namespace console {

/// Represents a menu with a list of options that may be selected by the user.
class Menu : public abstract::Menu
{
public:
    /// Constructs a Menu object with the specified \p options.
    Menu (std::initializer_list<Menu_option> options);
    /// \brief Returns \c true if the menu contains an option with the specified
    /// \p option_name, otherwise returns \c false.
    bool contains_option (const std::string& option_name) const;
    
    virtual void show() const override;
    
private:
    /// Associates the name of a Menu_option object with the object itself.
    using Option_map = std::map<std::string, Menu_option>;

    /// Initializes the map of options from the specified list of \p options.
    void initialize_options (const std::initializer_list<Menu_option>& options);
    /// Returns the map of menu options.
    Option_map& options();
    /// Returns the map of menu options.
    const Option_map& options() const;
        
    Option_map m_options; ///< The map of menu options.
};

}
}
}

#endif
