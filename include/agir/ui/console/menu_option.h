/*! 
 * \file menu_option.h
 * \brief Contains the definition of the agir::ui::console::Menu_option class.
 * \author Erasmo Aguilera
 * \date April 19, 2015
 */

#ifndef AGIR__UI__CONSOLE__MENU_OPTION_H
#define	AGIR__UI__CONSOLE__MENU_OPTION_H

#include <string>

namespace agir {
namespace ui {
namespace console {

using std::string;

/// Represents an option of an agir::ui::console::Menu object.
class Menu_option
{
public:
    /// Constructs a Menu_option object with the specified \p name.
    Menu_option (const string& name);
    /// Returns the name of the menu option.
    const string& name() const;
    
private:
    string m_name; ///< The name of the menu option.
};

}
}
}

#endif

