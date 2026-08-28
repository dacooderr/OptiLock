**OptiLock FPS Config** tem como objetivo reduzir os gráficos máximo possível mantendo <ins>integridade competitiva</ins> pra partidas competitivas. Está incluso um VPK modificado que contém mods de desempenho e correções necessárias para melhorar o suporte à configuração.

**Se precisar de ajuda em quaisquer etapas, entre no [OptiLock Discord](https://discord.gg/UxjsJB5Rp5) e/ou veja o [Tutorial em vídeo.](https://www.youtube.com/watch?v=JBB-dmaNxOE)** (Não disponível em PT-BR por enquanto)**

**Com a configuração OptiLock, você pode ter uma melhora de ~30% nos 1% lows e ~40% ganho em FPS médio na maioria dos sistemas de baixo a médio desempenho.**

[GameBanana Mod Page](https://gamebanana.com/mods/678180)


________________________________________________________________________________________________________

*Instruções Básicas*

Instruções:

	Substitua seu gameinfo.gi COMPLETAMENTE com a FPS Config de sua escolha no steamapps/common/deadlock/game/citadel (Versão recomendada: OptiLock Max FPS)

	Abra o vídeo.txt (baixado) e copie o texto inteiro

	Abra o seu vídeo.txt em C:\Program Files (x86)\Steam\steamapps\common\Deadlock\game\citadel\cfg

	Delete tudo em baixo de deviceid

	Cole o que você copiou

	Salvar e feche. (O jogo pode crashar na primeira inicialização, é normal. Apenas abra o jogo novamente, se continuar a crashar algum processo pode ter sido feito errado, tente novamente do começo e veja o resultado)

Notar que você DEVE fazer os dois procedimentos, caso contrário o jogo vai ficar com os gráficos esquisitos ou pode crashar.

Seu vídeo.txt deve estar assim antes de abrir o jogo.

Att: SE VOCÊ AUMENTAR O setting.r_texture_stream_mip_bias ACIMA DE 4 NO vídeo.txt, VOCÊ VAI TER QUE INSTALAR O "SINNER'S LIGHT FIX MOD" (Config quebra as luzes da máquina) ESTÁ INCLUSO NA PASTA "ESSENTIAL FIXES".
________________________________________________________________________________________________________

Otimizações Opcionais
Projeto de Otimização do Windows e Linux

Melhore seu 1% Low: Usando RTSS e limitando seu FPS em jogo para 03 menos que a frequência do seu monitor e ativando VSYNC + GSYNC (Ou AMD Freesync/Intel Adaptive-Sync) pode melhorar bastante seu 1% lows. Download aqui.

Process Lasso: Usar isso junto com todas as outras otimizações pode melhorar ainda mais os 1% lows, dando alta prioridade ao Deadlock e ajustando a afinidade da CPU de acordo com o seu processador. Baixe aqui

Você pode encontrar um tutorial de como usar o Process Lasso aqui.
________________________________________________________________________________________________________

Anúncio Bem Importante
A Valve começou a restringir algumas convars no final de março. Por enquanto, a config ainda funciona, e a Valve está ciente dessa config e da necessidade dela. Então, só o tempo dirá.
________________________________________________________________________________________________________

Tabela
Aqui está uma lista de cada configuração disponível no repo. 

Arquivo:
OptiLock FPS Config (Recomendado)
OptiLock Potato Config
Kaiz Potato Config
cvarlist.md

Propósito:
Sistemas low-end. 
Configuração com objetivo de performance mas intenção de uso competitivo.
Configuração que prioriza FPS acima de tudo, diminuindo muito a qualidade gráfica
Todos os convars no código do jogo. Não é uma config, é mais uma referência.

________________________________________________________________________________________________________

FAQ (Perguntas e Respostas)

"Como eu acho um comando específico na config?"
CTRL + F no editor de texto e digite o comando que quer trocar.

"Como reseto o valor pro padrão?" 
Remover o comando inteiro é a forma mais fácil.

"Como mudo meu FOV? (Campo de Visão)" 
r_aspectratio citadel_camera_hero_fov

> Ajuste os dois valores ao seu gosto.

"A Config quebrou no novo patch"
O gameinfo.gi é reescrito em algumas atualizações, até os menores. Você vai precisar recolocar ele manualmente.

"Meu jogo tá crashando" 
Você vai precisar deletar e reinstalar o jogo tendo certeza que não tem nenhum arquivo sobrando de configs antigas ou mods antigos. (alguns mods mudam arquivos originais e fazem alguns arquivos continuar mesmo depois de desinstalar pela steam). Tenha certeza que exclui a pasta INTEIRA do Deadlock. - Exemplo

________________________________________________________________________________________________________

Mods úteis para melhorar Gameplay e game-sense 

QoL Lite por dacooderr | Uma coleção de mods de qualidade de vida em um único mod. (Ex.: Top Bar Plus, Better Map, Always Show Passive Items and Actives Icons e mais.)
Top Bar Plus por bonclide | Adiciona timers e indicadores úteis no topo da tela para facilitar a percepção do que está acontecendo na partida.
Always Show Passive Items and Actives Icons por Hanturaya | Sempre mostra os cooldowns das passivas e habilidades ativas.
Mid/Bridge Buff/Neutrals Timer por Hanturaya | Adiciona timers para Mid e Bridge sem precisar do Top Bar.
See Friends Rank, Stats and See Account ID por Hanturaya | Permite ver o rank e as estatísticas dos seus amigos.
Show stats in shop por Goblin Man Sam | Mostra os atributos do seu herói na loja.
Smart Cooldown Tracker por iAfar | Adiciona o acompanhamento das cargas das suas habilidades perto da mira e um lembrete rápido acima da mira quando uma habilidade está pronta para ser usada.
Enhanced QuickBuy por Aminsx | Indicador de compra rápida personalizado com cálculo de almas necessárias.
Clean Damage Indicator por lustie_ | Deixa o indicador de dano menor e mais acima do alvo que está recebendo o dano (dependendo da resolução fica muito em cima kkkkkkk).
Daylock por BreadRollius | Adiciona um céu estrelado e claro para melhorar a visibilidade. Instale apenas o arquivo .pak. (simplesmente curto como que fica)
'Fullbright' Mod por Sadie Sinks Husband | Um mod que remove todas as sombras/sombreamento nas texturas, dando aquele visual plano.
________________________________________________________________________________________________________

Créditos: 
Um grande agradecimento a todo esse pessoal, do fundo do meu coração. Pessoas incríveis.

dacodeerr: QoL Lite e Criador do OptiLock 
Artemon121: Fez o Citadel cvar unhider 
boot: Fez a configuração Potato
simcasting: Benchmarking
pidjan: Contribuição no Gameinfo
Piggy: Contribuição para o original e agora aposentado video.txt
soneparfait: Traduziu essa seção pra Português Brasil
