// Use https://finicky-kickstart.now.sh to generate basic configuration
// Learn more about configuration options: https://github.com/johnste/finicky/wiki/Configuration-(v4)

export default {
    options: {
        hideIcon: true,
        logRequests: false
    },
    defaultBrowser: "Firefox",
    handlers: [
        {
            match: "*zoom.us/j/*",
            browser: "us.zoom.xos"
        },
        {
            match: "meet.google.com/*",
            browser: "Google Chrome"
        }
    ]
}
