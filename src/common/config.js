import { CODE_CPP, CODE_JAVA, CODE_JS, CODE_JL } from 'files';

const languages = [{
  name: 'JavaScript',
  ext: 'js',
  mode: 'javascript',
  skeleton: CODE_JS,
}, {
  name: 'Julia',
  ext: 'jl',
  mode: 'julia',
  skeleton: CODE_JL,
}, {
  name: 'C++',
  ext: 'cpp',
  mode: 'c_cpp',
  skeleton: CODE_CPP,
}, {
  name: 'Java',
  ext: 'java',
  mode: 'java',
  skeleton: CODE_JAVA,
}];

const exts = languages.map(language => language.ext);

export {
  languages,
  exts,
};
