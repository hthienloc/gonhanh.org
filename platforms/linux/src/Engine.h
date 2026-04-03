#ifndef GONHANH_ENGINE_H
#define GONHANH_ENGINE_H

#include <fcitx/inputmethodengine.h>
#include <fcitx/inputcontext.h>
#include <fcitx/instance.h>
#include <fcitx/addonfactory.h>
#include <fcitx/addonmanager.h>
#include <fcitx-utils/log.h>

#include "RustBridge.h"

namespace GoNhanh {

#include <iostream>
#define GONHANH_DEBUG() std::cerr << "[GoNhanh][DEBUG] "
#define GONHANH_INFO() std::cerr << "[GoNhanh][INFO] "
#define GONHANH_WARN() std::cerr << "[GoNhanh][WARN] "
#define GONHANH_ERROR() std::cerr << "[GoNhanh][ERROR] "

// Input context state
class GoNhanhState : public fcitx::InputContextProperty {
public:
    GoNhanhState(fcitx::InputContext* ic) : ic_(ic) {}

    void reset() {
        RustBridge::clear();
    }

private:
    fcitx::InputContext* ic_;
};

// Main Fcitx5 engine class
// Note: Fcitx5 manages addon lifecycle - no singleton pattern needed
class GoNhanhEngine : public fcitx::InputMethodEngineV2 {
public:
    GoNhanhEngine(fcitx::Instance* instance);
    ~GoNhanhEngine();

    // InputMethodEngine interface
    void activate(const fcitx::InputMethodEntry& entry,
                  fcitx::InputContextEvent& event) override;
    void deactivate(const fcitx::InputMethodEntry& entry,
                    fcitx::InputContextEvent& event) override;
    void keyEvent(const fcitx::InputMethodEntry& entry,
                  fcitx::KeyEvent& keyEvent) override;
    void reset(const fcitx::InputMethodEntry& entry,
               fcitx::InputContextEvent& event) override;

    // Configuration
    void setMethod(InputMethod method);
    void setEnabled(bool enabled);

private:
    fcitx::Instance* fcitxInstance_;
    fcitx::FactoryFor<GoNhanhState> factory_;
    InputMethod currentMethod_ = InputMethod::Telex;
    bool enabled_ = true;

    // Get state for input context
    GoNhanhState* getState(fcitx::InputContext* ic) {
        return ic->propertyFor(&factory_);
    }
};

// Addon factory
class GoNhanhEngineFactory : public fcitx::AddonFactory {
public:
    fcitx::AddonInstance* create(fcitx::AddonManager* manager) override {
        return new GoNhanhEngine(manager->instance());
    }
};

} // namespace GoNhanh

#endif // GONHANH_ENGINE_H
