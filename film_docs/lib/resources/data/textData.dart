

// Scenario Part
const scenarioIntroText = "영화를 제작하기 위해 가장 먼저 해야 하는 것은 ‘무엇을 찍을까’에 대한 답변을 찾는 일입니다. 각본을 만드는 것은 설계를 하는 것과 매우 비슷합니다. 이야기의 구조를 짜고, 이야기의 높낮이를 결정하고, 사건들을 배치하고, 그 안에서 인물들이  역동하는 것을 담는 일은 각본 단계에서 해야 하는 일입니다."
    "\n\n기억해야할 부분은, 설계도는 건물이 완성되어야 그 존재  가치가 생긴다는 점입니다. 각본은 그 자체로 가치 있는 것이 아니라 영화가 만들어져야 그 가치가 비로소 생겨나게 됩니다."
    "\n\n그래서 우리는 각본을 만들 때 어떻게 하면 이것을  ‘시각적’으로 표현할 수 있을까 고민하고 그려내야 합니다.";

const scenarioDocOneText = "흔히 우리가 알고 있는 시나리오 개발단계인 ‘시놉시스 - 트리트먼트 - 시나리오' 단계는 ‘남들에게 보여주는 문서 ’에서의 단계입니다. 아이디어 개발단계는 다른 사람들에게 보여주기 이전의, 건물을 세울 때 땅을 다지는 단계라고 할 수 있습니다."
    "\n\n소재, 주인공, 분위기, 결말, 이 글을 쓰는 이유를 양식에 따라서 정리해봅시다.";

const scenarioDocTwoText = '시놉시스에는 꼭 들어가야 하는 4가지 요소가 있습니다.'
    '\n\n주제, 기획의도, 등장인물, 줄거리.'
    '\n\n주제는 작가가 생각하는 어떤 현상에 대한 고찰이나 새로운 발견과 같은 것들이 주인공을 통해서 드러나는 것입니다.'
    '\n\n기획의도는 ‘주제의 방향성’을 왜 영화로 만들어내고 싶은지, 이 영화를 왜 만들어야 하는지, 이 영화를 통해 어떤 메시지를 전하고 싶은지, 어떤 감정을 전달하고 싶은지, 그리고 그 이유는 무엇인지, 이 작품을 만들게 된 작가의 솔직한 이야기가 담긴 것입니다.'
    '\n\n등장인물을 설정하는 것은 이야기에 영향을 미칠 수 있는 요소들을 적는 것입니다.'
    '\n\n줄거리를 작성하는 것은 이야기의 기승전결을 구성하여 적는 것입니다.'
    '\n\n아이디어 개발단계에서 작성했던 부분을 다듬어 정리하면 시놉시스를 작성하는 것에 도움이 될 것입니다.';

const scenarioDocThreeText = '트리트먼트는 줄거리를 보다 자세히 씬(Scene)별로 나누어 줄글 형식으로 적어낸 문서입니다.'
    '\n\n시나리오에서는 표현되기 어려운 배경이나 상황들을 보다 자세하게 서술할 수 있다는 장점을 가지고 있고, 미리 자세하게 설계해둔 트리트먼트를 통해서 보다 정교한 시나리오가 나올 수 있기 때문에 트리트먼트 작업을 하는 것이 중요한 작업이라고 할 수 있습니다.'
    '\n\n트리트먼트는 정해진 양식이 없습니다. 노트를 펼치거나 컴퓨터를 활용해 문서를 작성해보세요.';

const scenarioDocFourText = '시나리오는 씬, 지문, 대사라는 요소로 구성됩니다.'
    '\n\n씬은 영상을 구성하는 단위로 시간과 장소로 나눈 단위입니다.'
    '\n\n지문은 대사 앞이나 대사 사이에 줄글로 적혀있는 글로 주로  배경이나 상황, 인물의 상태나 행동 등을 보여줍니다.'
    '\n\n대사는 인물들의 말을 적은 부분입니다.'
    '\n\n시나리오는 정해진 양식이 없습니다.  노트를 펼치거나 컴퓨터를 활용해 문서를 작성해보세요.';


// Director Part
const directorIntroText = "연출부는 영화 제작에 있어서 핵심부서 중 하나입니다. 우리가 일반적으로 알고 있는 ‘영화 감독’이 속해 있는 부서가 바로 이곳, 연출부이죠."
    "\n\n연출은 직접 쓰거나 작가가 쓴 시나리오를 바탕으로 영상화하는 작업을 합니다. 직접 영상을 촬영하는 것이 아니라 머릿속으로, 문서로 글의 순간들을 영상으로 설계하는 작업을 합니다."
    "\n\n우리가 흔히 이야기하는 ‘영화감독’과 같은 의미로 연출, 연출 감독이 있습니다. 연출은 연출부의 헤더이면서 동시에 영화 전체의 헤더라고도 볼 수 있는 아주 중요한 역할입니다."
    "\n\n연출부는 연출, 조연출, 스크립터, 슬레이터로 나뉘어져 있고, 각 촬영장마다 다르지만, 역할마다 겸직으로 담당하는 업무들이 있습니다.";

const directorDocOneText = "이야기를 씬이라는 단위로 묶고, 그 씬의 내용, 시간과 장소, 필요한 미술과 의소품을 문서화한 것이 바로 씬 리스트입니다. "
    "\n\n씬 리스트는 각본을 영화화하기 위해 분석하고, 씬별로 빠진 것은 없는지 확인하며 각 부서와 소통할 수 있도록 하기 위한 문서입니다.";
const directorDocTwoText = "씬 리스트는 씬단위로 분석을 했다면, 스크립트 브레이크다운은 샷 단위로 분석을 합니다. 씬 안의 샷들을 어떻게 촬영할 것인지, 구체적으로 정하고 어떤 대사부터 어떤 대사까지 촬영할 것인지, 어떤 행동부터 어떤 행동까지 촬영할 것인지 분석합니다. 이렇게 분석을 하면서 샷 하나당 촬영시간이 얼마나 소요될지, 샷마다 체크해야할 사항은 무엇인지 하나하나 꼼꼼하게 정합니다."
    "\n\n스크립트 브레이크다운은 촬영장마다 다르지만, 시나리오 위에 바로 하는 경우가 많습니다. 샷마다 샷 사이즈와 피사체, 방향 등을 간단하게 적어주고, 그 샷에 해당하는 대사나 지문을 표시합니다. 샷을 짤 때 중요한 점은 촬영감독과 함께, 충분한 상의를 한 뒤 샷 사이즈, 카메라 무빙과 앵글에 대해 결정해야 합니다.";
const directorDocThreeText = "작업하는 방식이 촬영장마다, 사람마다 다르지만, 보통은 모든 장면(샷)의 그림을 그립니다. 스토리보드는 명확한 소통을 하기 위해 그린다고 생각하시면 됩니다. 스토리보드를 보고 촬영감독은 샷의 방향과 샷 안에 들어가야 하는 인물의 크기(샷 사이즈), 샷에 잡히는 소품이나 미술 등을 파악하고 연출의 머릿속에 있는 장면을 영상화할 수 있습니다. 조명감독도 스토리보드를 보고 미리 조명 계획을 짤 수 있습니다. 스토리보드에서 샷에 잡히는 공간을 미리 파악하고, 어디에 어떤 방향으로 조명을 쳐야 하는지 미리 파악할 수 있습니다. 미술감독은 스토리보드에 나오는 미술이나 소품을 미리 파악하고 촬영장에서 효율적인 세팅을 할 수 있도록 미리 계획하는 것이 가능하고, 음향은 샷 사이즈를 보며 어디에서 어떤 장비를 활용하여 소리를 수음할지 미리 정할 수 있습니다."
    "\n\n스토리보드를 그릴 때 고려해서 그려야 하는 부분, 적어주어야 하는 부분들이 있습니다."
    "\n\n1. 샷 사이즈"
    "\n\n2. 카메라 앵글"
    "\n\n3. 카메라 방향"
    "\n\n4. 카메라 무빙";
const directorDocFourText = "일촬표는 회차별로 촬영 계획을 적고, 각 씬과 샷마다 소요되는 시간, 출연 배우, 필요한 의소품 등 다양한 목록들을 한눈에 알아볼 수 있도록 하는 문서입니다. 촬영 당일, 연출부 스태프는 미리 인쇄해온 일촬표를 다른 스태프들에게 하나씩 나누어주거나 잘 보이는 곳에 붙여둡니다. 이 일촬표를 따라서 촬영을 진행하고, 세팅을 하고, 분장을 하게 됩니다. "
    "\n\n일촬표에 들어가는 내용에는 스태프와 배우가 촬영 장소로 모이는 시간인 콜타임, 촬영에 영향을 미칠 수 있는 일출과 일몰 시간, 연출과 PD의 연락망, 씬과 샷 넘버, 샷별 촬영 시작 시간, 세팅 소요시간, 촬영이 들어가기 전 액팅 리허설 시간, 촬영에 걸리는 시간, 샷별 촬영 마치는 시간, 해당 샷의 내용, 장소와, 극중 시간, 출연 배우와 카메라 샷 사이즈, 앵글, 무빙, 세팅 값, 미술의 필요 의소품과 분장에 대한 내용까지. 이 모든 내용이 다 필요하지 않을 수 있지만 꼼꼼하게 적어주게 되면 촬영 때 놓치는 부분이 줄어들고 한눈에 파악하여 보다 원활한 촬영이 이루어질 겁니다.";
const directorDocFiveText = "감독의 OK, NG, keep 사인을 듣고 정리하며 NG가 났을 때 그 이유가 무엇인지 기입합니다. 장비의 문제였는지, 배우의 연기, 장면과 장면의 연결이 부자연스러운지 등 다양한 이유가 있을 겁니다. 스크립터의 역할이 하나 더 있었죠. 바로 장면 연결, 컨티뉴이티를 보는 것인데요, 스크립트의 연결 사항 부분에 ‘해당 인물이 소품을 오른손으로 잡고 있다’와 같은 간단한 연결 사항을 적어줍니다. 이렇게 미리 연결 사항을 적어두면 촬영을 진행하면서 중간에 플레이 백을 하지 않아도 되기 때문에 시간이 절약될 수 있습니다."
    "\n\n스크립트는 편집을 편하게 하기 위해 작성합니다. 촬영을 할 때는 특히 대부분의 영화 촬영은 동시녹음을 진행하는데, 이는 카메라와, 녹음이 동시에 이루어진다는 뜻입니다. 즉, 카메라와 녹음 파일이 따로 존재한다는 겁니다. 그런데 중간중간 촬영본과 녹음 본의 파일 순서가 달라지는 경우가 있습니다. 사운드가 없이 촬영이 이루어지는 때, 사운드만 녹음할 때. 실수로 녹화나 녹음을 하지 않는 한 이 두 가지 이유로 파일 넘버가 달라집니다. 이런 상황을 스크립터가 기입해준다면 후에 편집을 진행할 때 용이하게 진행이 될 것입니다.";

const directorPreP = "프리 프로덕션 단계에서는 먼저 영화의 전체 제작 일정을 정리합니다. 언제까지 프리 기간을 마치고 프로덕션으로 들어갈지, 언제 포스트 프로덕션을 마치고 출품, 배급을 할지 이 모든 일정들을 정리하는 일입니다. 이 과정에서는 제작부가 단독적으로 정할 수 없는 부분들이 많기 때문에 보통 연출부와 함께 진행하게 됩니다. 데스크 헌팅이라는 것도 하는데, 쉽게 말하면 온라인으로 로케이션을 찾는 것을 이야기합니다. 앞서 이야기했던 사무직의 모습이 이때 나타나는 것이죠. 프리 단계에서는 앞으로의 영화 제작에 있어서 효율적인 업무를 하기 위해 역할이 분담됩니다. 보통 인물(배우, 스태프)과 관련된 담당자, 미술과 관련된 담당자, 숙박 및 편의 시설 담당자, 회계 등으로 나뉩니다. 이렇게 다양하게 역할이 나뉘는 이유는 제작부는 시간과 돈을 관리해야 하기 때문에 변수나 추가지출을 최대한 없애기 위해 각자 맡은 역할에만 집중할 수 있도록 업무를 분담하는 것이죠. 그리고 앞서 온라인으로 진행한 데스크 헌팅의 다음 단계인 직접 현장으로 나가 촬영장이 될 장소를 확인하는 로케이션 헌팅을 진행합니다. 로케이션 헌팅을 진행할 때에는 미리 정리해둔 업체, 관리 부서, 담당자 등의 연락처를 리스트업 해둔 후에 답사 기간과 장소를 파악하여 로케이션 헌팅을 진행합니다.";
const directorP = "프로덕션 단계에 들어서면 제작부는 제반 정리라는 것을 합니다. 촬영장의 현장 상황을 파악하여 일어날 수 있는 변수들에 대해 생각하며, 그 변수들이 일어나기 전에 예방하거나, 일어날 경우의 대비책을 마련해둡니다. 또한 현장 주변에 스태프와 배우가 사용할 수 있는 편의시설이 있는지 파악합니다. 쉴 수 있는 공간, 소품 구매처, 편의점, 화장실 등을 미리 파악해두고, 필요시 바로 이용할 수 있도록 미리 시설에 양해를 구하거나 섭외를 해둡니다. 촬영장에서 제작부가 하는 주된 업무 중 하나가 바로 현장 통제입니다. 촬영을 시작하게 되면 그 주변의 행인이나 차량, 필요에 따라서는 소음까지 통제하여 원활하게 촬영을 이어갈 수 있도록 합니다. 스태프와 배우의 상태를 체크하는 것도 굉장히 중요한 업무인데요, 디테일하고 센스있는 행동들이 일 잘하는 제작부를 만듭니다. 날씨와 기온을 미리 파악하여 비가 올 경우를 대비한 우산, 우비, 수건 등을 미리 준비하는 것, 추운 날씨를 대비해 따뜻한 물, 담요, 핫팩 등을 준비하는 것을 예로 들 수 있을 것 같습니다. 기본적으로 구급상자와 상비약을 준비해두어 부상에 대처를 해야 하고, 스태프와 배우들을 수시로 살피며 상태가 좋지 않은 사람들이 보인다면 상태를 묻고, 조치를 취해야 합니다. 지쳐 보이는 스태프에게 초콜릿과 같은 간식을 건네기도 하며, 수분을 충분히 보충할 수 있도록 합니다. 제작부는 가장 먼저 움직이고 가장 마지막까지 남는 부서입니다. 마지막까지 남아서 촬영장을 원래 있었던 상태 그대로 원상복구를 시켜놓아야 합니다. 촬영장에 아무도 오지 않았을 때 촬영장의 모습을 사진으로 촬영해두는 것이 중요합니다. 특히 대관한 공간이라면 가구들의 위치는 어디에 있는지, 가구들에 흠집이 있었던 부분이 있는지 등 촬영이 끝난 이후에 문제가 될 수 있는 부분들을 미리 파악해두고 사진을 찍어두어야 합니다.";
const directorPostP = "촬영이 모두 끝난 후에는 제작부에서 결산을 진행합니다. 그동안 발생했던 지출내역을 바탕으로 결산안을 정리합니다. 렌트했던 장비나 소품, 차량 등을 반납하고, 해야 하는 비용처리도 진행하죠. 촬영이 끝난 후에는 소품으로 활용했던 것들, 기타 제작 물품 등의 비품들이 많이 생기게 됩니다. 이 비품을 정리하는 것도 제작부에서 해야 하는 일이죠. 그렇게 촬영에 관련된 일들을 모두 정리하고 나면 본격적인 포스트 단계의 업무들이 시작됩니다. 먼저 포스트 작업을 하는 스태프들과의 소통이 필요합니다. 편집 담당자, DI(색 보정) 담당자, 음향 편집 담당자 등이 있고, 각 담당자들이 업무를 언제까지 마칠 수 있는지, 언제까지 마쳐야 하는지를 파악하고 조율합니다. 영화제 출품이나 배급, 투자, 크라우드 펀딩 등의 일정을 확인하기 위해서죠. 포스트 작업을 하는 동안 제작부는 출품 가능한 영화제, 투자받을 수 있는 곳, 크라우드 펀딩 계획 등을 미리 세우고 준비합니다. 영화가 완성되고, 제작부 리스트업 해둔 영화제에 차례대로 출품을 하고, 투자를 받거나 크라우드 펀딩을 진행합니다.";

// Production Part
const productionIntroText = "제작부는 연출부, 촬영부와 더불어 영화를 제작할 때 핵심 부서 중 하나입니다."
    "\n\n제작부는 연출부, 촬영부, 조명부, 미술부, 음향부가 영화 제작에만 집중할 수 있도록 그 외의 모든 일을 담당하는 부서라고 이야기할 수 있습니다."
    "\n\n시나리오를 영상화하는 다른 부서와는 다르게 실무적인 부분, 행정적인 부분, 그리고 다른 스태프들의 컨디션을 살피는 일을 합니다."
    "\n\n연출부는 PD를 중심으로 연출부원으로 구성되어 있습니다.";

const productionDocOneText = "해당 장소가 필요한 씬을 정리하고, 극 중 장소의 이름과 로케이션의 비용, 로케이션의 사진, 조감도 등 촬영 장소와 관련된 내용을 정리해둔 문서가 로케이션 리스트입니다."
    "\n\n로케이션 리스트를 작성할 때에 장소의 사진과 조감도를 기록하는 것이 중요하며, 장소의 가로, 세로, 높이를 표시해두면 다른 스태프들이 로케이션을 파악할 때 도움이 됩니다.";
const productionDocTwoText = "배우리스트는 배우의 기본정보와 극 중 정보를 정리해둔 문서입니다."
    "\n\n배우의 프로필 사진과 필모를 간단히 정리하고, 특이사항을 정리합니다.";
const productionDocThreeText = "스태프 리스트는 각 부서 스태프의 소속과 직책, 기본정보를 정리해둔 문서입니다."
    "\n\n비상시 연락망으로 활용되며, 차량 배정을 위한 거주지 및 특이사항을 정리합니다.";
const productionDocFourText = "장비리스트, 미술의 소품, 의상, 분장 리스트, 각종 지출 요소들이 확정되면 예산안을 작성하고,"
    "\n\n지출이 발생할 때 세부 지출 내역을 정리하여 추가 지출이 발생한 것이 있는지, 누락된 부분이 있는지 살핍니다."
    "\n\n촬영이 모두 끝나고, 지출이 완료되었을 때 회계는 결산을 진행합니다.";

const productionPreP = "프리 프로덕션 단계에서는 먼저 영화의 전체 제작 일정을 정리합니다. 언제까지 프리 기간을 마치고 프로덕션으로 들어갈지, 언제 포스트 프로덕션을 마치고 출품, 배급을 할지 이 모든 일정들을 정리하는 일입니다. 이 과정에서는 제작부가 단독적으로 정할 수 없는 부분들이 많기 때문에 보통 연출부와 함께 진행하게 됩니다. 데스크 헌팅이라는 것도 하는데, 쉽게 말하면 온라인으로 로케이션을 찾는 것을 이야기합니다. 앞서 이야기했던 사무직의 모습이 이때 나타나는 것이죠. 프리 단계에서는 앞으로의 영화 제작에 있어서 효율적인 업무를 하기 위해 역할이 분담됩니다. 보통 인물(배우, 스태프)과 관련된 담당자, 미술과 관련된 담당자, 숙박 및 편의 시설 담당자, 회계 등으로 나뉩니다. 이렇게 다양하게 역할이 나뉘는 이유는 제작부는 시간과 돈을 관리해야 하기 때문에 변수나 추가지출을 최대한 없애기 위해 각자 맡은 역할에만 집중할 수 있도록 업무를 분담하는 것이죠. 그리고 앞서 온라인으로 진행한 데스크 헌팅의 다음 단계인 직접 현장으로 나가 촬영장이 될 장소를 확인하는 로케이션 헌팅을 진행합니다. 로케이션 헌팅을 진행할 때에는 미리 정리해둔 업체, 관리 부서, 담당자 등의 연락처를 리스트업 해둔 후에 답사 기간과 장소를 파악하여 로케이션 헌팅을 진행합니다.";
const productionP = "| 프로덕션 단계에 들어서면 제작부는 제반 정리라는 것을 합니다. 촬영장의 현장 상황을 파악하여 일어날 수 있는 변수들에 대해 생각하며, 그 변수들이 일어나기 전에 예방하거나, 일어날 경우의 대비책을 마련해둡니다. 또한 현장 주변에 스태프와 배우가 사용할 수 있는 편의시설이 있는지 파악합니다. 쉴 수 있는 공간, 소품 구매처, 편의점, 화장실 등을 미리 파악해두고, 필요시 바로 이용할 수 있도록 미리 시설에 양해를 구하거나 섭외를 해둡니다. 촬영장에서 제작부가 하는 주된 업무 중 하나가 바로 현장 통제입니다. 촬영을 시작하게 되면 그 주변의 행인이나 차량, 필요에 따라서는 소음까지 통제하여 원활하게 촬영을 이어갈 수 있도록 합니다. 스태프와 배우의 상태를 체크하는 것도 굉장히 중요한 업무인데요, 디테일하고 센스있는 행동들이 일 잘하는 제작부를 만듭니다. 날씨와 기온을 미리 파악하여 비가 올 경우를 대비한 우산, 우비, 수건 등을 미리 준비하는 것, 추운 날씨를 대비해 따뜻한 물, 담요, 핫팩 등을 준비하는 것을 예로 들 수 있을 것 같습니다. 기본적으로 구급상자와 상비약을 준비해두어 부상에 대처를 해야 하고, 스태프와 배우들을 수시로 살피며 상태가 좋지 않은 사람들이 보인다면 상태를 묻고, 조치를 취해야 합니다. 지쳐 보이는 스태프에게 초콜릿과 같은 간식을 건네기도 하며, 수분을 충분히 보충할 수 있도록 합니다. 제작부는 가장 먼저 움직이고 가장 마지막까지 남는 부서입니다. 마지막까지 남아서 촬영장을 원래 있었던 상태 그대로 원상복구를 시켜놓아야 합니다. 촬영장에 아무도 오지 않았을 때 촬영장의 모습을 사진으로 촬영해두는 것이 중요합니다. 특히 대관한 공간이라면 가구들의 위치는 어디에 있는지, 가구들에 흠집이 있었던 부분이 있는지 등 촬영이 끝난 이후에 문제가 될 수 있는 부분들을 미리 파악해두고 사진을 찍어두어야 합니다.";
const productionPostP = "| 촬영이 모두 끝난 후에는 제작부에서 결산을 진행합니다. 그동안 발생했던 지출내역을 바탕으로 결산안을 정리합니다. 렌트했던 장비나 소품, 차량 등을 반납하고, 해야 하는 비용처리도 진행하죠. 촬영이 끝난 후에는 소품으로 활용했던 것들, 기타 제작 물품 등의 비품들이 많이 생기게 됩니다. 이 비품을 정리하는 것도 제작부에서 해야 하는 일이죠. 그렇게 촬영에 관련된 일들을 모두 정리하고 나면 본격적인 포스트 단계의 업무들이 시작됩니다. 먼저 포스트 작업을 하는 스태프들과의 소통이 필요합니다. 편집 담당자, DI(색 보정) 담당자, 음향 편집 담당자 등이 있고, 각 담당자들이 업무를 언제까지 마칠 수 있는지, 언제까지 마쳐야 하는지를 파악하고 조율합니다. 영화제 출품이나 배급, 투자, 크라우드 펀딩 등의 일정을 확인하기 위해서죠. 포스트 작업을 하는 동안 제작부는 출품 가능한 영화제, 투자받을 수 있는 곳, 크라우드 펀딩 계획 등을 미리 세우고 준비합니다. 영화가 완성되고, 제작부 리스트업 해둔 영화제에 차례대로 출품을 하고, 투자를 받거나 크라우드 펀딩을 진행합니다.";

// Camera Part
const cameraIntroText = "촬영부는 이름 뜻 그대로 촬영에 대한 전반적인 역할을 담당하는 부서입니다. 촬영 장비를 다루고 책임지죠."
    "\n\n촬영부는 연출이 머릿속으로 그려둔 그림을 카메라를 이용해 영상화하는 역할을 합니다."
    "\n\n연출부, 제작부와 더불어 핵심 부서에 속합니다."
    "\n\n촬영부는 촬영 감독, 퍼스트, 세컨, 서드 등으로 이루어져 있습니다.";

const cameraDocOneText = "연출이 스크립트 브레이크다운 단계를 거쳐 모든 장면을 분석한 이후에 촬영감독과 함께 어떤 샷이 "
    "어떻게 카메라에 담기면 좋을지 논의하는 시간을 가집니다. "
    "샷 리스트를 정리할 때 정해야 하는 부분은 샷 사이즈, 카메라 앵글과 방향, 카메라의 무빙 등입니다.";
const cameraDocTwoText = "카메라는 어떤 것을 사용할지, 렌즈는 어떤 렌즈들이 필요한지, 짐벌이나 달리와 같은 장비들이 필요한지 등 예산과 촬영장 규모, "
    "그리고 필요에 맞게 연출과 논의하여 장비리스트를 작성합니다. 이때, 카메라 장비, 렌즈, 짐벌, 달리, 삼각대 등 장비 종류 목록을 정해두고 "
    "그 안에 세부 목록을 작성하면 더 꼼꼼하게 작성할 수 있습니다.";
const cameraDocThreeText = "플로어플랜은 조감도로, 촬영장을 하늘에서 내려다 보았을 때의 모습을 간략하게 그려두는 것을 이야기합니다. 플로어플랜에서는 촬영 장소, 입구와 창문의 위치, "
    "인물과 카메라의 위치와 동선을 표기합니다. 플로어플랜은 카메라의 위치와 방향이 나오기 때문에 어떤 장면이 나올지 글보다 더 직관적으로 알 수 있습니다. 플로어플랜은 촬영을 하는 도중에도 "
    "계속 확인하는 문서이기 때문에 잘 작성을 해두면 촬영을 할 때 더 유용하게 이용할 수 있습니다.";
const cameraDocFourText = "스태프 한 명을 정하여 테스트 촬영을 진행할 때 카메라가 어떤 세팅 값으로 촬영되었는지 세팅 값 리스트를 기록하도록 합니다."
    "\n\n본 촬영 때 세팅 값 리스트를 참고하여 빠른 세팅을 하기 위해서 세팅 값 리스트를 작성합니다."
    "\n\n세팅 값 리스트를 작성할 때에는 렌즈 화각, 조리개, 필터 등을 기입하며 카메라의 이동이나 초점이동 등의 기타 사항들을 정리합니다.";

const cameraPreP = '촬영감독은 프리 프로덕션 기간에 연출과 샷 리스트를 정리합니다. 연출이 스크립트 브레이크다운 단계를 거쳐 모든 장면을 분석한 이후에 촬영감독과 함께 어떤 샷이 어떻게 카메라에 담기면 좋을지 논의하는 시간을 가집니다. '
    '샷 리스트를 정리할 때 정해야 하는 부분은 샷 사이즈, 카메라 앵글과 방향, 카메라의 무빙 등입니다. 씬에 해당하는 샷 넘버를 정하고, 그 샷에 해당하는 시나리오의 내용을 정합니다. 샷 리스트를 작성한 이후에는 필요한 장비를 정합니다. 카메라는 어떤 것을 사용할지, 렌즈는 어떤 렌즈들이 필요한지, 짐벌이나 달리와 같은 장비들이 필요한지 등 예산과 촬영장 규모, 그리고 필요에 맞게 연출과 논의하여 장비리스트를 작성합니다. 그러고 나서 플로어플랜을 작성합니다. 플로어플랜은 조감도로, 촬영장을 하늘에서 내려다보았을 때의 모습을 간략하게 그려두는 것을 이야기합니다. 플로어플랜에서는 촬영 장소, 입구와 창문의 위치, 인물과 카메라의 위치와 동선을 표기합니다. 플로어플랜을 미리 작성하여 촬영장에서 어떻게 세팅을 진행하면 되는지 현장에서 우왕좌왕하지 않도록 정해둡니다. 플로어플랜은 카메라의 위치와 방향이 나오기 때문에 어떤 장면이 나올지 글보다 더 직관적으로 알 수 있습니다. 플로어플랜은 촬영을 하는 도중에도 계속 확인하는 문서이기 때문에 잘 작성을 해두면 촬영을 할 때 더 유용하게 이용할 수 있습니다.';
const cameraP = "프로덕선에 들어서게 되면 촬영감독은 카메라를 직접 운용하거나 카메라 오퍼레이터와 함께 촬영을 진행하게 됩니다. 연출이 의도한 대로, 그리고 미리 설계해둔 대로 카메라를 정교하게 운용하면서 연출의 머릿속의 장면들에 최대한 가깝게 구현해냅니다.";
const cameraPostP = "촬영이 끝난 이후 포스트 단계에서는 색 보정 담당자가 따로 없다면 색 보정을 하게 됩니다. 색 보정은 두 단계로 이루어지는데, 첫 번째는 빛과 대비를 교정하는 단계, 두 번째는 색을 입히는 단계로 이루어집니다. 빛과 대비를 조정하는 단계에서는 너무 밝거나 어두운 부분을 원하는 느낌에 맞게 조정해주고, 영상의 분위기에 맞게 대비를 조정합니다. 그리고 색을 입히는 과정에서는 원하는 분위기에 맞게, 색감이 너무 틀어지거나 부자연스럽지 않게 적절히 색 보정 작업을 해야 하죠. 영화에서 가장 중요한 것은 ‘자연스러움'입니다. 색 보정을 했구나 느껴지는 것이 아니라 색 보정을 한 것인지 신경 쓰지 못할 만큼 자연스럽게, 관객의 몰입을 깨지 않도록 해야 합니다.";

// Lighting Part
const lightingIntroText = "조명부는 조명을 활용해 장면의 원하는 분위기를 만들어주고, 그 안에서 촬영을 할 수 있도록 환경을 조성해주는 역할을 합니다. 밤 촬영에서 낮을 만들어주기도 하고, 조명을 활용해 계절을 바꿀 수도 있죠. "
    "\n\n조명을 활용하여 촬영감독이 구현하고 싶은 세상을 구현해주는 역할을 합니다. 그 안에서 촬영감독은 더 효과적으로 장면을 담아낼 수 있습니다."
    "\n\n조명부는 조명감독, 조명부원으로 이루어져 있습니다.";

const lightingDocOneText = "어떤 조명들을 사용할지, 몇 개의 조명이 필요한지, 조명 스탠드나 부가적인 장비는 어떤 것들이 필요한지 등 예산과 촬영장 규모, 그리고 필요에 맞게 연출과 논의하여 장비리스트를 작성합니다. "
    "이때, 조명 장비, 조명 액세서리, 스탠드, 고보 등 장비 종류 목록을 정해두고 그 안에 세부 목록을 작성하면 더 꼼꼼하게 작성할 수 있습니다.";
const lightingDocTwoText = "플로어플랜은 조감도로, 촬영장을 하늘에서 내려다보았을 때의 모습을 간략하게 그려두는 것을 이야기합니다."
    "\n\n조명감독은 촬영감독과 함께 플로어플랜을 작성합니다."
    "\n\n촬영감독이 카메라 위치를 설정해두면, 조명감독은 그 카메라의 위치를 고려하여 촬영에 방해되지 않도록, 원하는 느낌을 낼 수 있도록 조명을 디자인합니다.";
const lightingDocThreeText = "스태프 한 명을 정하여 테스트 촬영을 진행할 때 조명이 어떤 세팅 값으로 설정되었는지 세팅 값 리스트를 기록하도록 합니다."
    "\n\n본 촬영 때 세팅 값 리스트를 참고하여 빠른 세팅을 하기 위해서 세팅 값 리스트를 작성합니다."
    "\n\n세팅 값 리스트를 작성할 때에는 조명의 위치, 광량, 색온도, 고보의 위치 등을 기입하며 반사판이나 조명을 들고 이동하는 등의 기타 사항들을 정리합니다.";

const lightingPreP = "조명감독은 프리 프로덕션 기간 동안 연출과 촬영감독과 함께 회의를 진행하며 영화의 전체적인 톤이나 원하는 분위기를 구상합니다. "
    "조명감독은 낮과 밤, 계절을 고려하여 조명의 높낮이와 색을 정하고, 어떤 장비를 사용하면 좋을지, 얼마나 사용하면 좋을지 촬영감독과 논의합니다. "
    "빛은 카메라의 노출 값과도 연관이 있기 때문에 촬영감독과의 논의 없이 조명을 디자인하게 된다면 촬영장에서 문제가 생길 수 있습니다. "
    "이때 촬영감독과 논의를 통해서 필요한 장비리스트를 작성하고, 촬영감독과 함께 플로어플랜을 작성합니다. 촬영감독이 카메라 위치를 설정해두면, "
    "조명감독은 그 카메라의 위치를 고려하여 촬영에 방해되지 않도록, 원하는 느낌을 낼 수 있도록 조명을 디자인합니다. 조명을 디자인하는 것의 기본은 ‘모티프'를 정하는 것인데, "
    "모티프를 정해 설득력 있는 조명, 즉 진짜 같은 조명을 설계하는 것이 중요합니다. "
    "예를 들면, 집에 있는 장면을 찍을 때에는 형광등이나 창문으로 들어오는 햇빛 모티프가 있을 것이고, 밤 공원 장면을 촬영할 때에는, 달빛과 가로등 불빛 모티프가 있을 것입니다. "
    "이렇게 광원의 위치를 설정하고, 그에 맞는 색온도를 조절하여 자연스러운 조명을 설계하도록 합니다.";
const lightingP = "프로덕션 기간에는 이전에 디자인해두었던 것을 바탕으로 조명을 연출하는 역할을 합니다. 이때 조명감독은 조명을 설치하고 조절하는 것이 아니라 직접 눈으로, "
    "카메라로 보며 조명을 운용하는 스태프들에게 광량과 색온도를 조절하도록 감독하는 역할을 합니다. 조명 장비가 크고 무겁기 때문에 한번 세팅할 때 다른 부서에 비해 시간이 더 걸리게 됩니다. "
    "조명감독은 불필요한 장비 이동, 세팅을 최소화하기 위해 정확하고 빠른 결정을 내리는 것이 중요합니다.";
const lightingPostP = "조명부는 촬영이 끝나면서 업무가 끝난다고 보면 됩니다. 포스트 단계에서 조명부는 업무가 없습니다.";

// Art Part
const artIntroText = "미술부는 영화를 제작할 때 화면 상에 드러나는 공간과 장소의 디자인을 하는 역할을 합니다."
    "\n\n그리고 이와 더불어 소품을 제작하거나, 의상을 구입하거나, 배우의 분장을 하는 일도 하죠."
    "\n\n미술부는 소품과 의상을 활용하여 극 중 시대를 바꿀 수도 있고, 한순간에 분위기를 바꿔버리기도 합니다."
    "\n\n미술부는 미술감독, 미술부원으로 이루어져 있습니다.";

const artDocOneText = "어떤 소품들을 사용할지, 무슨 장면에 왜 필요한지, 소품 비용 등 예산과 촬영장 규모, 그리고 필요에 맞게 연출과 논의하여 소품 리스트를 작성합니다.";
const artDocTwoText = "어떤 의상들을 사용할지, 무슨 장면에 왜 필요한지, 의상 비용 등 예산과 촬영장 규모, 그리고 필요에 맞게 연출과 논의하여 소품 리스트를 작성합니다.";
const artDocThreeText = "어떤 분장을 사용할지, 무슨 장면에 왜 필요한지, 분장 물품 비용 등 예산과 촬영장 규모, 그리고 필요에 맞게 연출과 논의하여 소품 리스트를 작성합니다.";

const artPreP = "프리 프로덕션 단계에서 미술감독은 연출과 회의를 하며 영화의 전체적인 분위기와 디자인 컨셉을 정합니다. 그리고 필요한 소품을 확인하며 함께 소품리스트를 작성하죠. 미술감독은 회의를 통해 정한 컨셉을 바탕으로 다시 한번 시나리오를 분석하면서 소품리스트를 검토하고, 영화의 전체적인 느낌과 어울리는 소품, 의상의 레퍼런스를 찾아봅니다. 레퍼런스가 포함된 소품리스트, 의상리스트를 작성한 후에 명확한 소통을 위해 연출과 다시 회의를 진행하여 의소품을 컨펌 받습니다. 컨펌이 완료되면, 그때부터 필요한 의소품을 찾기 시작합니다. 분장 리스트도 필요합니다. 별도의 분장이 필요하지 않은 인물의 화장만 하면 되는 촬영장에서는 분장 리스트를 작성하지 않는 경우도 있지만, 특수 분장이 필요한 경우에는 꼭 체크를 해두어야 합니다. 이때도 의소품 준비단계와 비슷하게 레퍼런스를 찾고, 연출에게 컨펌을 받은 뒤, 필요하다면 미리 분장 테스트를 해봅니다.";
const artP = "프로덕션 단계에서는 미리 정해둔 대로 공간을 꾸미고, 소품을 배치합니다. 현장과 카메라를 함께 보면서 원하는 분위기가 나오는지 확인하며 미술 세팅을 진행합니다. 영화에서 소품 때문에 옥에 티가 나는 경우가 많이 있습니다. 책상 위에 있었던 필통이 다음 장면에서는 없다거나 하는 것처럼 말이죠. 계속 강조했듯이 관객의 몰입을 깰 수 있는 부분이고, 특히 소품의 경우 관객들이 쉽게 눈치챌 수 있는 부분이기 때문에 프로덕션에서는 소품과 가구 등을 미술부의 허락 없이는 움직이지 못하게 하는 것이 중요합니다. 미술부의 가구와 소품은 미술부만 이동할 수 있도록 하고, 필요에 따라서 움직여야 할 때에는 미술부의 허락을 구한 후에 움직일 수 있도록 미리 전체 스태프에게 공지하는 것이 중요합니다. 미술부도 조명부만큼 촬영장에서 세팅으로 시간을 많이 소요하는 부서이기 때문에 다음 장면의 세팅을 미리 생각하고, 준비하는 것이 원활한 촬영을 진행하는 것에 도움이 될 것입니다.";
const artPostP = "미술부는 촬영이 끝나면서 업무가 끝난다고 보면 됩니다. 포스트 단계에서 미술부는 업무가 없습니다.";

// Sound Part
const soundIntroText = "조명부는 조명으로, 미술부는 의소품으로 영상의 분위기를 만들어 준다면, 음향부는 소리를 통해서 영화의 분위기를 만들어주는 역할을 합니다."
    "\n\n음향은 영상에서 나오는 소리들을 직접적으로 들려주기도 하고, 음악이나 효과음 등으로 분위기를 조성하기도 합니다. 영화에 있어서 소리는 시각적인 것만큼이나 중요한 요소입니다."
    "\n\n어색한 소리는 쉽게 관객들의 몰입을 깨뜨리고, 잘 표현된 소리는 그만큼 관객들이 영화에 더욱 집중할 수 있도록 만들죠."
    "\n\n음향부는 동시녹음 파트에는 음향감독, 붐 오퍼레이터, 붐 어시스턴트 등으로 이루어져 있습니다.";

const soundDocOneText = "어떤 마이크를 사용할지, 레코더의 필요한 채널 수는 몇 개인지, 기타 장비는 어떤 것들이 필요한지 등 예산과 촬영장 규모, 그리고 필요에 맞게 연출과 논의하여 장비리스트를 작성합니다. 이때, 마이크, 레코더, 붐 폴, 액세서리 등 장비 종류 목록을 정해두고 그 안에 세부 목록을 작성하면 더 꼼꼼하게 작성할 수 있습니다.";

const soundPreP = "프리 프로덕션 기간 동안 음향적인 부분에서 특별히 연출과 논의할 수 있는 부분을 논의합니다. 그리고 장비리스트를 작성하고 필요한 장비를 구성합니다.";
const soundP = "프로덕션 기간에는 동시녹음을 진행합니다. 음향감독이 붐 마이크를 직접 들기도 하지만 미세한 소음들을 파악해야 하기 때문에 집중력을 높이기 위해 소리에만 집중하는 경우가 많습니다. 헤드폰이나 이어폰을 착용하고 모든 신경을 소리에 집중시켜 대사와 겹친 소음을 잡아냅니다. 붐 오퍼레이터는 음향감독이 소리에만 집중할 수 있도록 마이크를 들고 배우가 대사를 할 때 수음 각도를 맞추어 수음을 합니다. 현재는 무선 마이크를 활용하는 촬영장도 많이 있지만, 보통은 마이크와 레코더를 케이블로 연결하여 사용합니다. 이때 케이블을 넉넉한 길이로 사용해야 높은 곳에서도 수음을 할 수 있어서 주로 긴 케이블을 활용하는데, 이때 케이블이 엉키게 되는 경우가 많습니다. 이 선을 잘 정리해주고 도와주는 사람이 바로 붐 어시스턴트입니다. 음향장비는 우리가 흔히 사용하는 AA 배터리를 사용하는 장비가 많습니다. AA 배터리로는 음향장비가 오래 버티지 못하기 때문에 중간중간 갈아주어야 하는데, 붐 어시스턴트는 이 배터리를 가지고 다니며 필요할 때 교체하는 일을 합니다.";
const soundPostP = "포스트 프로덕션 기간 동안은 사운드를 편집하고, 필요한 소리들을 배치하는 작업을 합니다. 이 작업을 믹싱이라고 하는데, 믹싱 작업이 끝난 후에는 여러 소리들의 균형을 잡아주는 단계인 마스터링 작업을 거치게 됩니다. 규모가 큰 촬영장에서는 사운드 믹싱 엔지니어, 마스터링 엔지니어, 폴리 아티스트 등 다양한 역할로 나뉘어 후작업이 이루어지는데, 소규모 프로덕션에서는 후반 작업을 주로 음향감독이 맡아서 진행합니다.";