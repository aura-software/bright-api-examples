

. ../helpers.sh
. ../config.sh

run "Get registration data by Registration GUID" ${BRIGHT_URL}'/bright/api/v2/registration?api_key='${BRIGHT_API_KEY}'&registration_guid=animal6347library-elm-adapt-lms-test-v19b1a0014-9b63-44bc-b2a9-9d0ae99551df-K5KaaMuQ2f-BgVmMZwhDrQ'

run "Get registration list for my user" ${BRIGHT_URL}'/bright/api/v2/registration?api_key='${BRIGHT_API_KEY}'&fields=course_guid,registration_guid'

