export default {
    buildModules: ["@nuxtjs/svg"],
    app: {
        head: {
          link: [
            {
              rel: "icon",
              type: "image/png",
              href: "/favicon.png"
            }
          ]
        }
      }
};