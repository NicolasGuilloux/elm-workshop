// SCSS
import './scss/app.scss';

// Elm Debugger
import * as ElmDebugger from 'elm-debug-transformer';

if (process.env.NODE_ENV !== 'production') {
    ElmDebugger.register();
}

import ElmEntryPoint from './elm/Main.elm';
window.Elm = ElmEntryPoint.Elm;