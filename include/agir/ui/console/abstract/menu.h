/*! 
 * \file menu.h
 * \brief Contains the definition of the agir::ui::console::abstract::Menu
 * interface.
 * \author Erasmo Aguilera
 * \date April 19, 2015
 */

#ifndef AGIR__UI__CONSOLE__ABSTRACT__MENU_H
#define	AGIR__UI__CONSOLE__ABSTRACT__MENU_H

namespace agir {
namespace ui {
namespace console {
namespace abstract {

/// Interface for menu objects that may be shown on the console.
class Menu
{
public:
    /// Shows the menu on the console.
    virtual void show() const = 0;
};

}
}
}
}

#endif
