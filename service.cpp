#include "service.h"

Service::Service()
{

}

int Service :: toNormalizedValue(int value) {
    return (255 * value / 100);
}
