

. ../helpers.sh
. ../config.sh

##
# Output shows full URL, headers returned, and body
#

## API Keys.   Note when using an API key, you can only fetch registrations for "YOUR" account.

## To get "ALL" data you must use an bright realm and secret ey.

## So API keys are suitable to send to the browser, and typically have a limited duration.   It is possible to have 

run "Course API, just title" ${BRIGHT_URL}'/bright/api/v2/course?api_key='${BRIGHT_API_KEY}'&fields=title'

run "Course API, fields including registration data" ${BRIGHT_URL}'/bright/api/v2/course?api_key='${BRIGHT_API_KEY}'&fields=course_guid,title,custom,registrations.complete,registrations.registration_guid'

run "Course API, query on title, return course GUID" ${BRIGHT_URL}'/bright/api/v2/course?api_key='${BRIGHT_API_KEY}'&fields=title&title=Adapt%20SCORM'

run "Course API, query on title, return registration GUID for any registration" ${BRIGHT_URL}'/bright/api/v2/course?api_key='${BRIGHT_API_KEY}'&fields=title,registrations.registration_guid&title=Adapt%20SCORM'


run "Course API, query on title, return registration GUID for all registrations" ${BRIGHT_URL}'/bright/api/v2/course?api_key='${BRIGHT_API_KEY}'&fields=title,registrations.registration_guid&title=Adapt%20SCORM'



# API Calls using realm keys.   These should be run in the webserver only, don't expose these keys to the browser:

run "Get All Courses" ${BRIGHT_URL}'/bright/api/v2/course?realm_guid='${BRIGHT_REALM_GUID}'&realm_secret_key='${BRIGHT_REALM_SECRET_KEY}'&fields=title,course_guid'

run "Get All Courses With Course Custom Metadata" ${BRIGHT_URL}'/bright/api/v2/course?realm_guid='${BRIGHT_REALM_GUID}'&realm_secret_key='${BRIGHT_REALM_SECRET_KEY}'&fields=title,course_guid,custom'

run "Get All Courses With Where Title Matches a Regexp" ${BRIGHT_URL}'/bright/api/v2/course?realm_guid='${BRIGHT_REALM_GUID}'&realm_secret_key='${BRIGHT_REALM_SECRET_KEY}'&fields=title,course_guid,custom&title_re=Course'

#  Lets fetch a course with a custom field 'module1' equal to the value '0'
run "Get All Courses With Where Custom Data Matches a Regexp" ${BRIGHT_URL}'/bright/api/v2/course?realm_guid='${BRIGHT_REALM_GUID}'&realm_secret_key='${BRIGHT_REALM_SECRET_KEY}'&fields=title,course_guid,custom&custom_re=module1\":\"0\"'


