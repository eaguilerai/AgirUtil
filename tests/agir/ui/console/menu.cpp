/*!
 * \file menu.cpp
 * \brief Contains unit tests for the agir::ui::console::Menu class.
 * \author Erasmo Aguilera
 * \date April 20, 2015
 */

#include <cppunit/extensions/HelperMacros.h>

#include <agir/ui/console/menu.h>
#include <agir/ui/console/menu_option.h>

#include <sstream>
#include <string>


namespace agir {
namespace ui {
namespace console {
namespace test {

class Menu : public CppUnit::TestFixture
{
public:
    CPPUNIT_TEST_SUITE (Menu);
    
    CPPUNIT_TEST (prints_all_options_when_shown);
    
    CPPUNIT_TEST_SUITE_END();

private:
    void prints_all_options_when_shown();
};

}
}
}
}

CPPUNIT_TEST_SUITE_REGISTRATION (agir::ui::console::test::Menu);

using agir::ui::console::test::Menu;

void Menu::prints_all_options_when_shown()
{
    using namespace agir::ui::console;
    
    std::ostringstream output{};
    Menu_option option_1 {"Option 1"};
    Menu_option option_2 {"Option 2"};
    //Menu menu {output};
}
