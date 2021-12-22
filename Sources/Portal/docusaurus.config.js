// @ts-check
// Note: type annotations allow type checking and IDEs autocompletion

const lightCodeTheme = require('prism-react-renderer/themes/github');
const darkCodeTheme = require('prism-react-renderer/themes/dracula');

/** @type {import('@docusaurus/types').Config} */
const config = {
  title: 'PatternHouse Portal',
  tagline: 'Frontend Browser for PatternHouse Database',
  url: 'https://www.patternhouse.tk',
  baseUrl: '/portal/',
  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',
  favicon: 'img/favicon.ico',
  organizationName: 'PatternHouse',
  projectName: 'PatternHouse Central',

  presets: [
    [
      'classic',
      /** @type {import('@docusaurus/preset-classic').Options} */
      ({
        docs: {
          sidebarPath: require.resolve('./sidebars.js'),
          editUrl: 'https://github.com/PatternHouse/Central',
        },
        blog: false,
        theme: {
          customCss: require.resolve('./src/css/custom.css'),
        },
      }),
    ],
  ],

  themeConfig:
    /** @type {import('@docusaurus/preset-classic').ThemeConfig} */
    ({
      navbar: {
        title: 'PatternHouse Portal',
        logo: {
          alt: 'PatternHouse Logo',
          src: 'https://www.patternhouse.tk/assets/img/logo_small.png',
        },
        items: [
          {
            href: 'https://www.patternhouse.tk',
            label: 'Home',
            position: 'left',
          },
          {
            href: 'https://www.patternhouse.tk/portal/',
            label: 'Portal',
            position: 'left',
          },
          {
            href: 'https://github.com/PatternHouse/Central',
            label: 'GitHub',
            position: 'right',
          },
        ],
      },
      footer: {
        style: 'dark',
        links: [
          {
            title: 'Links',
            items: [
              {
                label: 'Home',
                href: 'https://www.patternhouse.tk',
              },
              {
                label: 'Portal',
                href: 'https://www.patternhouse.tk/portal',
              },
            ],
          },
          {
            title: 'Community',
            items: [
              {
                label: 'Discord',
                href: "https://discord.com/",
              },
            ],
          },
        ],
        copyright: `Copyright © ${new Date().getFullYear()} PatternHouse. Licensed under MIT. Built with Docusaurus.`,
      },
      prism: {
        theme: lightCodeTheme,
        darkTheme: darkCodeTheme,
        additionalLanguages: ['java', 'csharp'],
      },
    }),
};

module.exports = config;
