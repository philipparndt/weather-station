#include "esphome.h"

class EthAddressTextSensor : public PollingComponent, public TextSensor {
public:
    // constructor
    EthAddressTextSensor() : PollingComponent(15000) {}

    void setup() override {
        // This will be called by App.setup()
    }
    void update() override {
        // This will be called every "update_interval" milliseconds.
        // Publish state
       // publish_state("" + ethernet_ethernetcomponent->get_ip_address());
    }
};
