module.exports = {
    env: {
        browser: true,
        commonjs: true,
        es6: true,
        node: true
    },
    extends: "eslint:recommended",
    parserOptions: {
        ecmaVersion: 2017,
        ecmaFeatures: {
            experimentalObjectRestSpread: true,
            jsx: true
        },
        sourceType: "module"
    },
    plugins: ["react"],
    rules: {
        indent: [
            "error",
            4,
            {
                SwitchCase: 1
            }
        ],
        "linebreak-style": ["error", "unix"],
        quotes: ["off", "single"],
        // "semi": ['warn', 'never'],

        "keyword-spacing": ["warn"],
        "space-before-blocks": ["warn", "always"],
        "space-before-function-paren": ["warn", "never"],
        "space-infix-ops": ["warn"],
        "comma-spacing": ["warn"],
        "key-spacing": ["warn"],

        "no-console": "off"
    }
};
