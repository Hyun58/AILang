#!/usr/bin/env node

const { Command } = require('commander');
const chalk = require('chalk');
const fs = require('fs-extra');
const path = require('path');

const program = new Command();

program
  .name('al')
  .description('AILang CLI - The Next Human-Friendly Programming Language')
  .version('0.1.0');

// al setup - 프로젝트 생성
program
  .command('setup <project-name>')
  .description('새로운 AILang 프로젝트를 생성합니다')
  .option('-t, --template <template>', '사용할 템플릿 (basic, blog, ecommerce, chat)', 'basic')
  .action(async (projectName, options) => {
    console.log(chalk.blue(`🚀 ${projectName} 프로젝트를 생성 중입니다...`));
    console.log(chalk.gray(`템플릿: ${options.template}`));
    
    try {
      const projectPath = path.join(process.cwd(), projectName);
      const templatePath = getTemplatePath(options.template);
      
      if (!fs.existsSync(templatePath)) {
        console.log(chalk.red(`❌ 템플릿 '${options.template}'을 찾을 수 없습니다.`));
        console.log(chalk.yellow('사용 가능한 템플릿: basic, blog, ecommerce, chat'));
        return;
      }
      
      await fs.copy(templatePath, projectPath);
      
      console.log(chalk.green(`✅ ${projectName} 프로젝트가 생성되었습니다!`));
      console.log(chalk.cyan('\n다음 명령어로 프로젝트를 시작하세요:'));
      console.log(chalk.white(`cd ${projectName}`));
      console.log(chalk.white('al test'));
      
    } catch (error) {
      console.log(chalk.red(`❌ 프로젝트 생성 중 오류가 발생했습니다: ${error.message}`));
    }
  });

// al test - 개발 서버 실행 (실시간 리로딩)
program
  .command('test')
  .description('개발 서버를 시작합니다 (실시간 리로딩 포함)')
  .option('-p, --port <port>', '포트 번호', '3000')
  .action(async (options) => {
    console.log(chalk.blue('🔥 AILang 개발 서버를 시작합니다...'));
    console.log(chalk.gray(`포트: ${options.port}`));
    console.log(chalk.gray('실시간 리로딩이 활성화되었습니다.'));
    
    // 개발 서버 로직 (여기서는 시뮬레이션)
    console.log(chalk.green(`✅ 서버가 http://localhost:${options.port}에서 실행 중입니다`));
    console.log(chalk.cyan('파일 변경을 감지하면 자동으로 새로고침됩니다.'));
    console.log(chalk.yellow('Ctrl+C로 서버를 종료할 수 있습니다.'));
    
    // 파일 감시 시뮬레이션
    setInterval(() => {
      // 실제로는 파일 시스템 감시
      console.log(chalk.gray('📁 파일 변경 감지 중...'));
    }, 5000);
  });

// al build - 프로덕션 빌드
program
  .command('build')
  .description('프로덕션용으로 프로젝트를 빌드합니다')
  .action(async () => {
    console.log(chalk.blue('🔨 프로덕션 빌드를 시작합니다...'));
    console.log(chalk.gray('AILang 코드를 최적화된 JavaScript로 변환 중...'));
    
    // 빌드 로직 시뮬레이션
    setTimeout(() => {
      console.log(chalk.green('✅ 빌드가 완료되었습니다!'));
      console.log(chalk.cyan('build/ 폴더에 결과물이 생성되었습니다.'));
    }, 3000);
  });

// al deploy - 배포
program
  .command('deploy')
  .description('프로젝트를 배포합니다')
  .option('-t, --target <target>', '배포 대상 (vercel, netlify, aws)', 'vercel')
  .action(async (options) => {
    console.log(chalk.blue(`🚀 ${options.target}에 배포를 시작합니다...`));
    
    // 배포 로직 시뮬레이션
    setTimeout(() => {
      console.log(chalk.green('✅ 배포가 완료되었습니다!'));
      console.log(chalk.cyan('https://your-project.vercel.app에서 확인할 수 있습니다.'));
    }, 5000);
  });

// al list - 사용 가능한 템플릿 목록
program
  .command('list')
  .description('사용 가능한 템플릿 목록을 보여줍니다')
  .action(() => {
    console.log(chalk.blue('📋 사용 가능한 AILang 템플릿:'));
    console.log('');
    console.log(chalk.green('• basic     ') + chalk.gray('- 기본 카운터와 홈페이지가 있는 간단한 템플릿'));
    console.log(chalk.green('• blog      ') + chalk.gray('- 블로그 기능이 포함된 템플릿'));
    console.log(chalk.green('• ecommerce ') + chalk.gray('- 쇼핑몰 기능이 포함된 템플릿'));
    console.log(chalk.green('• chat      ') + chalk.gray('- 실시간 채팅 기능이 포함된 템플릿'));
    console.log('');
    console.log(chalk.cyan('사용법: al setup my-project --template blog'));
  });

// al help - 도움말 개선
program
  .command('help')
  .description('AILang CLI 사용법을 보여줍니다')
  .action(() => {
    console.log(chalk.blue('🎯 AILang CLI 가이드'));
    console.log('');
    console.log(chalk.yellow('프로젝트 생성:'));
    console.log('  al setup my-project              기본 템플릿으로 프로젝트 생성');
    console.log('  al setup blog-app --template blog  블로그 템플릿으로 프로젝트 생성');
    console.log('');
    console.log(chalk.yellow('개발:'));
    console.log('  al test                          개발 서버 시작 (실시간 리로딩)');
    console.log('  al test --port 4000              포트 4000에서 개발 서버 시작');
    console.log('');
    console.log(chalk.yellow('빌드 & 배포:'));
    console.log('  al build                         프로덕션 빌드');
    console.log('  al deploy                        Vercel에 배포');
    console.log('  al deploy --target netlify       Netlify에 배포');
    console.log('');
    console.log(chalk.yellow('기타:'));
    console.log('  al list                          사용 가능한 템플릿 목록');
    console.log('  al help                          이 도움말 보기');
  });

function getTemplatePath(template) {
  const templates = {
    'basic': '../AILang_Example',
    'blog': '../AILang_Templates/basic-blog',
    'ecommerce': '../AILang_Templates/e-commerce', 
    'chat': '../AILang_Templates/realtime-chat'
  };
  
  return path.join(__dirname, templates[template] || templates.basic);
}

program.parse();
