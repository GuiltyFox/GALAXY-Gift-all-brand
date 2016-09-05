.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SurveyFragmentActivity.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/lib/survey/bean/AdBuzzItem;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/view/View;

.field d:Landroid/view/LayoutInflater;

.field e:Landroid/text/InputFilter;

.field final synthetic f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/lib/survey/bean/AdBuzzItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 969
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 1967
    new-instance v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$23;

    invoke-direct {v0, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$23;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->e:Landroid/text/InputFilter;

    .line 970
    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->a:Landroid/content/Context;

    .line 971
    iput-object p3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->b:Ljava/util/ArrayList;

    .line 972
    invoke-virtual {p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->d:Landroid/view/LayoutInflater;

    .line 973
    return-void
.end method

.method private a(Lcom/bzbs/lib/survey/bean/AdBuzzItem;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    .prologue
    .line 2804
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->d:Landroid/view/LayoutInflater;

    sget v1, Lcom/bzbs/lib/survey/R$layout;->bz_campaign_detail_ad_item_pager_image:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 2805
    iput-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->c:Landroid/view/View;

    .line 2806
    sget v0, Lcom/bzbs/lib/survey/R$id;->image:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2807
    sget v1, Lcom/bzbs/lib/survey/R$id;->pbLoadingImg:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 2808
    iget-object v3, p1, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->a:Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2810
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    sget v4, Lcom/bzbs/lib/survey/R$drawable;->t1_1:I

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableTypeRequest;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 2811
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2813
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$24;

    invoke-direct {v3, p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$24;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2826
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v0

    new-instance v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$25;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$25;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/control/CustomPager;->a(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 2913
    return-object v2
.end method

.method private a(Lcom/bzbs/lib/survey/bean/AdBuzzItem;Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 26

    .prologue
    .line 1024
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->d:Landroid/view/LayoutInflater;

    sget v3, Lcom/bzbs/lib/survey/R$layout;->bz_survey_v2_list_row:I

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    .line 1025
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->c:Landroid/view/View;

    .line 1026
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v2, Lcom/bzbs/lib/survey/R$id;->scvSurvey:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->l:Landroid/widget/ScrollView;

    .line 1027
    sget v2, Lcom/bzbs/lib/survey/R$id;->layoutRootSurvey:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 1028
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    .line 1030
    packed-switch v2, :pswitch_data_cd2

    .line 1047
    :goto_40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v2

    new-instance v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$1;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;)V

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/survey/control/CustomPager;->a(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1108
    sget v2, Lcom/bzbs/lib/survey/R$id;->tvTitle:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/widget/TextView;

    .line 1109
    sget v2, Lcom/bzbs/lib/survey/R$id;->wvTitle:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 1110
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 1111
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->l(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1113
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget v5, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->k:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->k:I

    .line 1114
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v4, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->j:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1116
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30d

    .line 1117
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1118
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1119
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1120
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1121
    const/16 v4, 0xb

    if-lt v3, v4, :cond_b8

    .line 1122
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1125
    :cond_b8
    new-instance v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$2;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1133
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v8

    .line 1134
    const-string/jumbo v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "<div style=\'width:100%;\'>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "</div>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "text/html"

    const-string/jumbo v6, "UTF-8"

    const-string/jumbo v7, ""

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1136
    sget-object v3, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v8, v3}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 1137
    new-instance v3, Landroid/webkit/WebChromeClient;

    invoke-direct {v3}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1138
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 1145
    :goto_110
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->f:Ljava/lang/String;

    const-string/jumbo v3, "shuffle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_128

    .line 1146
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 1168
    :cond_128
    const/4 v2, 0x0

    move/from16 v18, v2

    :goto_12b
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_cd0

    .line 1169
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v0, v2, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->a:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 1170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->d:Landroid/view/LayoutInflater;

    sget v3, Lcom/bzbs/lib/survey/R$layout;->bz_survey_v2_list_row_answer:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 1172
    sget v2, Lcom/bzbs/lib/survey/R$id;->layoutQuestion:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 1173
    sget v3, Lcom/bzbs/lib/survey/R$id;->layoutQuestionwithBox:I

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 1174
    sget v4, Lcom/bzbs/lib/survey/R$id;->layoutInfoChoice:I

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 1175
    sget v5, Lcom/bzbs/lib/survey/R$id;->layoutInfoCheckbox:I

    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 1176
    sget v6, Lcom/bzbs/lib/survey/R$id;->layoutInfoInput:I

    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 1177
    sget v8, Lcom/bzbs/lib/survey/R$id;->layoutDate:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 1178
    sget v9, Lcom/bzbs/lib/survey/R$id;->layoutTime:I

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 1179
    sget v10, Lcom/bzbs/lib/survey/R$id;->layoutScanCodeInput:I

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 1180
    sget v11, Lcom/bzbs/lib/survey/R$id;->layoutScanCodeContinuousInput:I

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 1181
    sget v12, Lcom/bzbs/lib/survey/R$id;->layoutImageInput:I

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 1182
    sget v14, Lcom/bzbs/lib/survey/R$id;->layoutInfoTextArea:I

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    .line 1183
    sget v15, Lcom/bzbs/lib/survey/R$id;->layoutInfoRate:I

    invoke-virtual {v7, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 1184
    sget v16, Lcom/bzbs/lib/survey/R$id;->layoutInfoEmotion:I

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 1185
    sget v17, Lcom/bzbs/lib/survey/R$id;->layoutInfoLocation:I

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 1187
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1188
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1189
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1190
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1191
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1192
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1193
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1194
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1195
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1196
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1197
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1198
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1199
    const/16 v21, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1200
    const/16 v16, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1201
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->c:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string/jumbo v21, "scan_code"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_321

    .line 1202
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1203
    sget v2, Lcom/bzbs/lib/survey/R$id;->btnGetCode:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1204
    sget v3, Lcom/bzbs/lib/survey/R$id;->etFieldInputCode:I

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 1205
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->l(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1206
    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1207
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-boolean v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->g:Z

    if-nez v4, :cond_283

    .line 1208
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1210
    :cond_283
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->m(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1211
    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1212
    new-instance v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$3;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/EditText;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1168
    :cond_29b
    :goto_29b
    add-int/lit8 v2, v18, 0x1

    move/from16 v18, v2

    goto/16 :goto_12b

    .line 1032
    :pswitch_2a1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v4

    div-int/lit8 v4, v4, 0xa

    const/4 v5, 0x0

    invoke-virtual {v13, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_40

    .line 1035
    :pswitch_2bc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v2

    div-int/lit8 v2, v2, 0xf

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v4

    div-int/lit8 v4, v4, 0xf

    const/4 v5, 0x0

    invoke-virtual {v13, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_40

    .line 1038
    :pswitch_2d7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v2

    div-int/lit8 v2, v2, 0xf

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v4

    div-int/lit8 v4, v4, 0xf

    const/4 v5, 0x0

    invoke-virtual {v13, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_40

    .line 1041
    :pswitch_2f2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v4

    div-int/lit8 v4, v4, 0x8

    const/4 v5, 0x0

    invoke-virtual {v13, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_40

    .line 1140
    :cond_30d
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1141
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1142
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    goto/16 :goto_110

    .line 1226
    :cond_321
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v10, v10, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->c:Ljava/lang/String;

    const-string/jumbo v16, "scan_code_continuous"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_44b

    .line 1227
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v18

    if-ne v2, v0, :cond_29b

    .line 1228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->b(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->o(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->o(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x1

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1233
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->d:Landroid/view/LayoutInflater;

    sget v3, Lcom/bzbs/lib/survey/R$layout;->bz_survey_continue:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 1236
    sget v2, Lcom/bzbs/lib/survey/R$id;->layout_continue:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1237
    sget v3, Lcom/bzbs/lib/survey/R$id;->layout_button_add_clear:I

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1238
    sget v3, Lcom/bzbs/lib/survey/R$id;->layout_content_row:I

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1241
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v4, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Landroid/widget/LinearLayout;)V

    .line 1243
    sget v4, Lcom/bzbs/lib/survey/R$id;->btn_add:I

    invoke-virtual {v12, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1244
    sget v5, Lcom/bzbs/lib/survey/R$id;->btn_clear:I

    invoke-virtual {v12, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 1247
    const/4 v6, 0x0

    move v10, v6

    :goto_3b8
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v10, v6, :cond_42f

    .line 1248
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v9, v6, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->a:Ljava/lang/String;

    .line 1250
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->d:Landroid/view/LayoutInflater;

    sget v8, Lcom/bzbs/lib/survey/R$layout;->bz_survey_qrcode:I

    const/4 v14, 0x0

    invoke-virtual {v6, v8, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 1251
    sget v6, Lcom/bzbs/lib/survey/R$id;->btnGetCode:I

    invoke-virtual {v14, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1252
    sget v8, Lcom/bzbs/lib/survey/R$id;->etFieldInputCode:I

    invoke-virtual {v14, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 1253
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v15}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->l(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1254
    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1255
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v9, v9, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-boolean v9, v9, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->g:Z

    if-nez v9, :cond_411

    .line 1256
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1258
    :cond_411
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v9}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->m(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1261
    new-instance v9, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v9, v0, v8, v1, v10}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$4;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/EditText;Lcom/bzbs/lib/survey/bean/AdBuzzItem;I)V

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1278
    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1247
    add-int/lit8 v6, v10, 0x1

    move v10, v6

    goto :goto_3b8

    .line 1281
    :cond_42f
    new-instance v6, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$5;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$5;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1321
    new-instance v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$6;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/LinearLayout;)V

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1333
    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1334
    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_29b

    .line 1336
    :cond_44b
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v10, v10, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->c:Ljava/lang/String;

    const-string/jumbo v11, "capture_image"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4d3

    .line 1338
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1339
    sget v2, Lcom/bzbs/lib/survey/R$id;->imgCapture:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1340
    sget v3, Lcom/bzbs/lib/survey/R$id;->imgCaptureDelete:I

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1341
    sget v4, Lcom/bzbs/lib/survey/R$id;->etFieldInputImage:I

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1342
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->l(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1343
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1344
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->r:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1345
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->s(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1346
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->t(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1347
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->u(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1348
    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1349
    new-instance v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$7;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$7;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1373
    new-instance v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$8;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1397
    new-instance v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$9;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_29b

    .line 1406
    :cond_4d3
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v10, v10, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->c:Ljava/lang/String;

    const-string/jumbo v11, "gps"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_542

    .line 1408
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1409
    sget v2, Lcom/bzbs/lib/survey/R$id;->btnGetLocation:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1410
    sget v3, Lcom/bzbs/lib/survey/R$id;->etFieldInputLocation:I

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1411
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v4, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1413
    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1414
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->v(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/util/GPSTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bzbs/lib/survey/util/GPSTracker;->b()D

    move-result-wide v8

    iput-wide v8, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->m:D

    .line 1415
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->v(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/util/GPSTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bzbs/lib/survey/util/GPSTracker;->c()D

    move-result-wide v8

    iput-wide v8, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->n:D

    .line 1416
    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1418
    new-instance v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/TextView;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1455
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v18

    goto/16 :goto_29b

    .line 1456
    :cond_542
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v10, v10, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->c:Ljava/lang/String;

    const-string/jumbo v11, "info_choice_image"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_62a

    .line 1457
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1458
    sget v2, Lcom/bzbs/lib/survey/R$id;->tvFieldAnswer:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/CheckBox;

    .line 1459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->l(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1460
    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1461
    sget v2, Lcom/bzbs/lib/survey/R$id;->imgCheckBoxAnswer:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1462
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    if-eqz v3, :cond_624

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->i:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_624

    .line 1463
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->z(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Z

    move-result v3

    if-eqz v3, :cond_5c8

    .line 1464
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1465
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/high16 v5, 0x420c0000    # 35.0f

    invoke-virtual {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v4, v5, v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1466
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1468
    :cond_5c8
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1469
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->i:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    sget v4, Lcom/bzbs/lib/survey/R$drawable;->t1_1:I

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableTypeRequest;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1473
    :goto_5f5
    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1475
    invoke-virtual {v8, v5}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 1476
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1477
    new-instance v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v6, v13

    invoke-direct/range {v2 .. v7}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Lcom/bzbs/lib/survey/bean/AdBuzzItem;Ljava/lang/String;Landroid/widget/LinearLayout;Landroid/view/View;)V

    invoke-virtual {v8, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_29b

    .line 1471
    :cond_624
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5f5

    .line 1575
    :cond_62a
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v10, v10, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->c:Ljava/lang/String;

    const-string/jumbo v11, "info_choice_rate"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_689

    .line 1577
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1578
    sget v2, Lcom/bzbs/lib/survey/R$id;->etFieldInputRate:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1579
    sget v3, Lcom/bzbs/lib/survey/R$id;->etFieldInputRateValue:I

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1580
    sget v4, Lcom/bzbs/lib/survey/R$id;->sbvRate:I

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    .line 1581
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1582
    new-instance v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$12;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v5, v0, v2, v1, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$12;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/TextView;Lcom/bzbs/lib/survey/bean/AdBuzzItem;Landroid/widget/TextView;)V

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1601
    new-instance v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$13;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$13;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;)V

    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1621
    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1622
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v18

    goto/16 :goto_29b

    .line 1623
    :cond_689
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v10, v10, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->c:Ljava/lang/String;

    const-string/jumbo v11, "info_check_box"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6db

    .line 1624
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1625
    sget v2, Lcom/bzbs/lib/survey/R$id;->chkFieldCheckbox:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1626
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->l(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1627
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1628
    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1630
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1632
    new-instance v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$14;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1, v3, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$14;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Lcom/bzbs/lib/survey/bean/AdBuzzItem;Ljava/lang/String;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_29b

    .line 1647
    :cond_6db
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->c:Ljava/lang/String;

    const-string/jumbo v10, "info_check_box_with_others"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7b2

    .line 1649
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1650
    sget v2, Lcom/bzbs/lib/survey/R$id;->layoutInfoChoiceEdt:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 1651
    sget v3, Lcom/bzbs/lib/survey/R$id;->chkFieldChoice:I

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 1652
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->l(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1653
    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1654
    sget v4, Lcom/bzbs/lib/survey/R$id;->etFieldInputChoice:I

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 1655
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->l(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1656
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1657
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->e:I

    if-eqz v5, :cond_791

    .line 1658
    const/4 v5, 0x2

    new-array v6, v5, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->e:Landroid/text/InputFilter;

    aput-object v8, v6, v5

    const/4 v8, 0x1

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->e:I

    invoke-direct {v9, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v6, v8

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1663
    :goto_75d
    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1665
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1667
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move/from16 v0, v18

    if-ne v0, v6, :cond_79f

    .line 1668
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1669
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_29b

    .line 1660
    :cond_791
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/text/InputFilter;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->e:Landroid/text/InputFilter;

    aput-object v8, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_75d

    .line 1671
    :cond_79f
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1672
    new-instance v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$15;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1, v5, v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$15;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Lcom/bzbs/lib/survey/bean/AdBuzzItem;Ljava/lang/String;Landroid/widget/EditText;)V

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_29b

    .line 1683
    :cond_7b2
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->c:Ljava/lang/String;

    const-string/jumbo v5, "info_choice"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7d0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->c:Ljava/lang/String;

    const-string/jumbo v5, "call_number"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87c

    .line 1684
    :cond_7d0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1685
    sget v2, Lcom/bzbs/lib/survey/R$id;->tvFieldAnswer:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/CheckBox;

    .line 1686
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->l(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1687
    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1688
    sget v2, Lcom/bzbs/lib/survey/R$id;->imgCheckBoxAnswer:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1689
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    if-eqz v3, :cond_876

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->i:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_876

    .line 1690
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1691
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->i:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    sget v4, Lcom/bzbs/lib/survey/R$drawable;->t1_1:I

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableTypeRequest;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1695
    :goto_847
    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1696
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1697
    invoke-virtual {v8, v5}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 1698
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1699
    new-instance v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$16;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v6, v13

    invoke-direct/range {v2 .. v7}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$16;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Lcom/bzbs/lib/survey/bean/AdBuzzItem;Ljava/lang/String;Landroid/widget/LinearLayout;Landroid/view/View;)V

    invoke-virtual {v8, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_29b

    .line 1693
    :cond_876
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_847

    .line 1718
    :cond_87c
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->c:Ljava/lang/String;

    const-string/jumbo v5, "repeat_survey"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_937

    .line 1719
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1720
    sget v2, Lcom/bzbs/lib/survey/R$id;->tvFieldAnswer:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/CheckBox;

    .line 1721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->l(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1722
    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1723
    sget v2, Lcom/bzbs/lib/survey/R$id;->imgCheckBoxAnswer:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1724
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    if-eqz v3, :cond_931

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->i:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_931

    .line 1726
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1727
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->i:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    sget v4, Lcom/bzbs/lib/survey/R$drawable;->t1_1:I

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableTypeRequest;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1731
    :goto_902
    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1732
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1733
    invoke-virtual {v8, v5}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 1734
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1735
    new-instance v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$17;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v6, v13

    invoke-direct/range {v2 .. v7}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$17;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Lcom/bzbs/lib/survey/bean/AdBuzzItem;Ljava/lang/String;Landroid/widget/LinearLayout;Landroid/view/View;)V

    invoke-virtual {v8, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_29b

    .line 1729
    :cond_931
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_902

    .line 1745
    :cond_937
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->c:Ljava/lang/String;

    const-string/jumbo v5, "info_choice_with_others"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a7e

    .line 1747
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1748
    sget v2, Lcom/bzbs/lib/survey/R$id;->layoutInfoAnswerEdt:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 1749
    sget v3, Lcom/bzbs/lib/survey/R$id;->tvFieldAnswerBox:I

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 1750
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->l(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1751
    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1752
    sget v4, Lcom/bzbs/lib/survey/R$id;->etFieldInputAnswer:I

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    .line 1753
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->l(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1754
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1755
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->e:I

    if-eqz v4, :cond_a51

    .line 1756
    const/4 v4, 0x2

    new-array v5, v4, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->e:Landroid/text/InputFilter;

    aput-object v6, v5, v4

    const/4 v6, 0x1

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->e:I

    invoke-direct {v8, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v5, v6

    invoke-virtual {v12, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1760
    :goto_9b9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1762
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_a60

    .line 1763
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1764
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1765
    new-instance v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$18;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v13, v7}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$18;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/LinearLayout;Landroid/view/View;)V

    invoke-virtual {v12, v2}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1793
    :goto_9f2
    sget v2, Lcom/bzbs/lib/survey/R$id;->imgCheckBoxAnswerBox:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1794
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    if-eqz v3, :cond_a78

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->i:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a78

    .line 1796
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1797
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->i:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    sget v4, Lcom/bzbs/lib/survey/R$drawable;->t1_1:I

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableTypeRequest;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1801
    :goto_a4c
    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_29b

    .line 1758
    :cond_a51
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->e:Landroid/text/InputFilter;

    aput-object v6, v4, v5

    invoke-virtual {v12, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_9b9

    .line 1775
    :cond_a60
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1776
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1777
    new-instance v8, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v14, v7

    invoke-direct/range {v8 .. v14}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Lcom/bzbs/lib/survey/bean/AdBuzzItem;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/view/View;)V

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_9f2

    .line 1799
    :cond_a78
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a4c

    .line 1802
    :cond_a7e
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->c:Ljava/lang/String;

    const-string/jumbo v4, "info_input"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c06

    .line 1803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const v3, 0x103006b

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->setTheme(I)V

    .line 1804
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->b:Ljava/lang/String;

    const-string/jumbo v3, "date"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_adb

    .line 1805
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1806
    sget v2, Lcom/bzbs/lib/survey/R$id;->etFieldInputDate:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1807
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->l(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1808
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1809
    new-instance v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$20;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$20;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/TextView;)V

    invoke-virtual {v8, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1890
    :cond_ad6
    :goto_ad6
    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_29b

    .line 1831
    :cond_adb
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->b:Ljava/lang/String;

    const-string/jumbo v3, "time"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1b

    .line 1832
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1833
    sget v2, Lcom/bzbs/lib/survey/R$id;->etFieldInputTime:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1834
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->l(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1835
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1836
    new-instance v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$21;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$21;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/TextView;)V

    invoke-virtual {v9, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_ad6

    .line 1858
    :cond_b1b
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1859
    sget v2, Lcom/bzbs/lib/survey/R$id;->tvFieldTitle:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1860
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->l(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1861
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1862
    sget v2, Lcom/bzbs/lib/survey/R$id;->etFieldInput:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1866
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->l(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1867
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1868
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/bzbs/lib/survey/R$color;->hint_default:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1869
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->e:I

    if-eqz v3, :cond_bc3

    .line 1870
    const/4 v3, 0x2

    new-array v4, v3, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->e:Landroid/text/InputFilter;

    aput-object v5, v4, v3

    const/4 v5, 0x1

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->e:I

    invoke-direct {v6, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1874
    :goto_b97
    if-eqz v20, :cond_ad6

    const-string/jumbo v3, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ad6

    .line 1875
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->b:Ljava/lang/String;

    .line 1876
    const-string/jumbo v4, "number"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bd1

    .line 1877
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_ad6

    .line 1872
    :cond_bc3
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->e:Landroid/text/InputFilter;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_b97

    .line 1878
    :cond_bd1
    const-string/jumbo v4, "email"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_be1

    .line 1879
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_ad6

    .line 1880
    :cond_be1
    const-string/jumbo v4, "mobile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad6

    .line 1881
    const/16 v3, 0xa

    .line 1882
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    .line 1883
    const/4 v5, 0x0

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v6, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v4, v5

    .line 1884
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 1885
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1886
    const-string/jumbo v3, "mobile"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_ad6

    .line 1891
    :cond_c06
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->c:Ljava/lang/String;

    const-string/jumbo v4, "info_text_area"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c88

    .line 1892
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1893
    sget v2, Lcom/bzbs/lib/survey/R$id;->etFieldTextArea:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1894
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->e:I

    if-eqz v3, :cond_c7a

    .line 1895
    const/4 v3, 0x2

    new-array v4, v3, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->e:Landroid/text/InputFilter;

    aput-object v5, v4, v3

    const/4 v5, 0x1

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->e:I

    invoke-direct {v6, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1899
    :goto_c58
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->l(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1900
    if-eqz v20, :cond_c75

    const-string/jumbo v3, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c75

    .line 1901
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1903
    :cond_c75
    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_29b

    .line 1897
    :cond_c7a
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->e:Landroid/text/InputFilter;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_c58

    .line 1905
    :cond_c88
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1906
    sget v2, Lcom/bzbs/lib/survey/R$id;->tvFieldAnswer:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1907
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->l(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1908
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1909
    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1910
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1911
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1912
    new-instance v9, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$22;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object v14, v7

    invoke-direct/range {v9 .. v14}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$22;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Lcom/bzbs/lib/survey/bean/AdBuzzItem;Ljava/lang/String;Landroid/widget/LinearLayout;Landroid/view/View;)V

    invoke-virtual {v2, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_29b

    .line 1926
    :cond_cd0
    return-object v19

    .line 1030
    nop

    :pswitch_data_cd2
    .packed-switch 0x1
        :pswitch_2d7
        :pswitch_2bc
        :pswitch_2a1
        :pswitch_2f2
    .end packed-switch
.end method

.method private a(Landroid/view/View;Landroid/view/View;)V
    .registers 13

    .prologue
    const/4 v7, 0x0

    .line 2722
    sget v0, Lcom/bzbs/lib/survey/R$id;->layoutRootSurvey:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2723
    if-eqz v0, :cond_c2

    move v6, v7

    .line 2724
    :goto_c
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v6, v1, :cond_c2

    .line 2725
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2726
    if-eq v8, p2, :cond_bd

    .line 2727
    sget v1, Lcom/bzbs/lib/survey/R$id;->layoutQuestion:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 2728
    if-eqz v1, :cond_bd

    .line 2729
    sget v2, Lcom/bzbs/lib/survey/R$id;->layoutInfoChoice:I

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 2730
    sget v3, Lcom/bzbs/lib/survey/R$id;->layoutInfoInput:I

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 2731
    sget v4, Lcom/bzbs/lib/survey/R$id;->layoutInfoTextArea:I

    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 2732
    sget v5, Lcom/bzbs/lib/survey/R$id;->layoutQuestionwithBox:I

    invoke-virtual {v8, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 2734
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_53

    .line 2735
    sget v1, Lcom/bzbs/lib/survey/R$id;->tvFieldAnswer:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 2736
    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2738
    :cond_53
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_84

    .line 2739
    sget v1, Lcom/bzbs/lib/survey/R$id;->tvFieldAnswerBox:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 2740
    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2741
    sget v1, Lcom/bzbs/lib/survey/R$id;->etFieldInputAnswer:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 2742
    const-string/jumbo v5, ""

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2743
    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v9, "input_method"

    invoke-virtual {v5, v9}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    .line 2744
    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v5, v1, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2746
    :cond_84
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_95

    .line 2747
    sget v1, Lcom/bzbs/lib/survey/R$id;->chkFieldChoice:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 2748
    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2750
    :cond_95
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_a9

    .line 2751
    sget v1, Lcom/bzbs/lib/survey/R$id;->etFieldInput:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 2752
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2754
    :cond_a9
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_bd

    .line 2755
    sget v1, Lcom/bzbs/lib/survey/R$id;->etFieldTextArea:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 2756
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2724
    :cond_bd
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_c

    .line 2762
    :cond_c2
    return-void
.end method

.method static synthetic a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 963
    invoke-direct {p0, p1, p2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->a(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private b(Lcom/bzbs/lib/survey/bean/AdBuzzItem;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/high16 v7, 0x42b40000    # 90.0f

    const/high16 v6, 0x41f00000    # 30.0f

    const/4 v5, 0x1

    .line 2986
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iput-boolean v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->p:Z

    .line 2987
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->d:Landroid/view/LayoutInflater;

    sget v2, Lcom/bzbs/lib/survey/R$layout;->bz_campaign_detail_ad_item_pager_video:I

    invoke-virtual {v1, v2, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a:Landroid/view/View;

    .line 2988
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a:Landroid/view/View;

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->c:Landroid/view/View;

    .line 2989
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->i(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2990
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->j(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2991
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a:Landroid/view/View;

    sget v2, Lcom/bzbs/lib/survey/R$id;->videoSurface:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    invoke-static {v1, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Landroid/view/SurfaceView;)Landroid/view/SurfaceView;

    .line 2992
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a:Landroid/view/View;

    sget v1, Lcom/bzbs/lib/survey/R$id;->videoSurfaceContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 2993
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v2

    if-le v1, v2, :cond_148

    .line 2994
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v3, v7}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(F)I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x10

    div-int/lit8 v2, v2, 0x9

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v4, v7}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(F)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2995
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3001
    :goto_82
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->H(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 3002
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->H(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 3003
    invoke-interface {v0, v5}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 3004
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 3005
    invoke-interface {v0, v9}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 3007
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 3008
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    new-instance v1, Lcom/bzbs/lib/survey/control/VideoControllerView;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {v1, v2}, Lcom/bzbs/lib/survey/control/VideoControllerView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Lcom/bzbs/lib/survey/control/VideoControllerView;)Lcom/bzbs/lib/survey/control/VideoControllerView;

    .line 3009
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->I(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/VideoControllerView;

    move-result-object v0

    new-instance v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$27;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$27;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/control/VideoControllerView;->a(Lcom/bzbs/lib/survey/control/VideoControllerView$OnRqExitListener;)V

    .line 3017
    :try_start_c4
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->J(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 3018
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->J(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 3019
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->K(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uri vdo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/Campaign;->ar:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3020
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->J(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/Campaign;->ar:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3021
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->J(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 3022
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->J(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 3023
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->J(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_135
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c4 .. :try_end_135} :catch_170
    .catch Ljava/lang/SecurityException; {:try_start_c4 .. :try_end_135} :catch_17d
    .catch Ljava/lang/IllegalStateException; {:try_start_c4 .. :try_end_135} :catch_18a
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_135} :catch_197

    .line 3038
    :goto_135
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v0

    new-instance v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/control/CustomPager;->b(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 3105
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a:Landroid/view/View;

    return-object v0

    .line 2997
    :cond_148
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v3, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(F)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v4, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(F)I

    move-result v4

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x9

    div-int/lit8 v3, v3, 0x10

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2998
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_82

    .line 3024
    :catch_170
    move-exception v0

    .line 3025
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v2, "IllegalArgumentException"

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    .line 3026
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_135

    .line 3027
    :catch_17d
    move-exception v0

    .line 3028
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v2, "SecurityException"

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    .line 3029
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_135

    .line 3030
    :catch_18a
    move-exception v0

    .line 3031
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v2, "IllegalStateException"

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    .line 3032
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_135

    .line 3033
    :catch_197
    move-exception v0

    .line 3034
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v2, "IOException"

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    .line 3035
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_135
.end method

.method private b(Lcom/bzbs/lib/survey/bean/AdBuzzItem;Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 13

    .prologue
    .line 2917
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->d:Landroid/view/LayoutInflater;

    sget v1, Lcom/bzbs/lib/survey/R$layout;->bz_survey_v2_list_row:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 2919
    iput-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->c:Landroid/view/View;

    .line 2920
    sget v0, Lcom/bzbs/lib/survey/R$id;->layoutRootSurvey:I

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2921
    sget v1, Lcom/bzbs/lib/survey/R$id;->vLine:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2922
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2923
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->d:Landroid/view/LayoutInflater;

    sget v2, Lcom/bzbs/lib/survey/R$layout;->bz_survey_v2_last_page:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 2924
    sget v1, Lcom/bzbs/lib/survey/R$id;->tvSurveyName:I

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2925
    sget v2, Lcom/bzbs/lib/survey/R$id;->tvNumQuestion:I

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2926
    sget v3, Lcom/bzbs/lib/survey/R$id;->tvFinishDate:I

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2927
    sget v4, Lcom/bzbs/lib/survey/R$id;->btnSaveSurvey:I

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2928
    iget-object v7, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v7}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->l(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2929
    iget-object v7, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v7}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->l(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2930
    iget-object v7, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v7}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->l(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2932
    iget-object v7, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v7}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->F(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7a

    .line 2933
    iget-object v7, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v7}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->F(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2935
    :cond_7a
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/lib/survey/bean/Campaign;->aq:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v1, v1, Lcom/bzbs/lib/survey/bean/CampaignExtra;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurvey;

    iget-object v1, v1, Lcom/bzbs/lib/survey/bean/CampaignExtraSurvey;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2936
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "All  : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2938
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 2940
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Finish  : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2941
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2975
    new-instance v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$26;

    invoke-direct {v0, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$26;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2982
    return-object v5
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 987
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq p2, v0, :cond_61

    .line 988
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    .line 989
    iget-object v1, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->a:Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;

    if-eqz v1, :cond_57

    .line 990
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->j:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v1, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;I)I

    .line 992
    iget-object v1, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->a:Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;

    iget-object v1, v1, Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;->c:Ljava/lang/String;

    const-string/jumbo v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 993
    invoke-direct {p0, v0, p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->b(Lcom/bzbs/lib/survey/bean/AdBuzzItem;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 994
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0, v3}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 997
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/bzbs/lib/survey/control/CustomPager;->setPagingEnabled(Z)V

    .line 1015
    :goto_41
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->c:Landroid/view/View;

    return-object v0

    .line 1000
    :cond_44
    invoke-direct {p0, v0, p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->a(Lcom/bzbs/lib/survey/bean/AdBuzzItem;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1001
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0, v3}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 1002
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/bzbs/lib/survey/control/CustomPager;->setPagingEnabled(Z)V

    goto :goto_41

    .line 1006
    :cond_57
    invoke-direct {p0, v0, p1, p2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->a(Lcom/bzbs/lib/survey/bean/AdBuzzItem;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    .line 1007
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0, v3}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    goto :goto_41

    .line 1010
    :cond_61
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    .line 1011
    invoke-direct {p0, v0, p1, p2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->b(Lcom/bzbs/lib/survey/bean/AdBuzzItem;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    .line 1012
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0, v3}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    goto :goto_41
.end method

.method public a(I)Ljava/lang/String;
    .registers 23

    .prologue
    .line 2342
    const-string/jumbo v18, ""

    .line 2343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->b:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v4, v4, p1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    .line 2345
    sget v4, Lcom/bzbs/lib/survey/R$id;->layoutRootSurvey:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 2346
    if-eqz v3, :cond_117

    .line 2347
    const/4 v4, 0x0

    move/from16 v19, v4

    :goto_32
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_117

    .line 2348
    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 2349
    sget v4, Lcom/bzbs/lib/survey/R$id;->layoutQuestion:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 2350
    if-eqz v4, :cond_89c

    .line 2351
    sget v5, Lcom/bzbs/lib/survey/R$id;->layoutInfoChoice:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 2352
    sget v6, Lcom/bzbs/lib/survey/R$id;->layoutInfoCheckbox:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 2353
    sget v7, Lcom/bzbs/lib/survey/R$id;->layoutInfoInput:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 2354
    sget v8, Lcom/bzbs/lib/survey/R$id;->layoutDate:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 2355
    sget v9, Lcom/bzbs/lib/survey/R$id;->layoutTime:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 2356
    sget v10, Lcom/bzbs/lib/survey/R$id;->layoutScanCodeInput:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 2357
    sget v11, Lcom/bzbs/lib/survey/R$id;->layoutScanCodeContinuousInput:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 2358
    sget v12, Lcom/bzbs/lib/survey/R$id;->layoutImageInput:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 2359
    sget v13, Lcom/bzbs/lib/survey/R$id;->layoutInfoTextArea:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    .line 2360
    sget v14, Lcom/bzbs/lib/survey/R$id;->layoutQuestionwithBox:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    .line 2361
    sget v15, Lcom/bzbs/lib/survey/R$id;->layoutInfoRate:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 2362
    sget v16, Lcom/bzbs/lib/survey/R$id;->layoutInfoEmotion:I

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 2363
    sget v17, Lcom/bzbs/lib/survey/R$id;->layoutInfoLocation:I

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 2364
    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_133

    .line 2365
    sget v4, Lcom/bzbs/lib/survey/R$id;->etFieldInputCode:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2366
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_12a

    .line 2367
    iget-object v4, v2, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    add-int/lit8 v5, v19, -0x3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-boolean v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->f:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_118

    .line 2368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v3, Lcom/bzbs/lib/survey/R$string;->msg_alert_survey:I

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    .line 2614
    :cond_117
    :goto_117
    return-object v18

    .line 2372
    :cond_118
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    :goto_120
    move-object/from16 v4, v18

    .line 2347
    :goto_122
    add-int/lit8 v5, v19, 0x1

    move/from16 v19, v5

    move-object/from16 v18, v4

    goto/16 :goto_32

    .line 2375
    :cond_12a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto :goto_120

    .line 2377
    :cond_133
    invoke-virtual {v11}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_181

    .line 2378
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->r(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_176

    .line 2379
    iget-object v4, v2, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    add-int/lit8 v5, v19, -0x3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-boolean v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->f:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_16b

    .line 2380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v3, Lcom/bzbs/lib/survey/R$string;->msg_alert_survey:I

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto :goto_117

    .line 2384
    :cond_16b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    move-object/from16 v4, v18

    goto :goto_122

    .line 2387
    :cond_176
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    move-object/from16 v4, v18

    goto :goto_122

    .line 2389
    :cond_181
    invoke-virtual {v12}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_1dd

    .line 2390
    sget v4, Lcom/bzbs/lib/survey/R$id;->etFieldInputImage:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2391
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1d4

    .line 2392
    iget-object v4, v2, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    add-int/lit8 v5, v19, -0x3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-boolean v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->f:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1c8

    .line 2393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v3, Lcom/bzbs/lib/survey/R$string;->msg_alert_survey:I

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_117

    .line 2397
    :cond_1c8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    :goto_1d0
    move-object/from16 v4, v18

    .line 2402
    goto/16 :goto_122

    .line 2400
    :cond_1d4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto :goto_1d0

    .line 2402
    :cond_1dd
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_21c

    .line 2403
    sget v4, Lcom/bzbs/lib/survey/R$id;->etFieldInputRate:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2404
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_208

    .line 2405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_117

    .line 2408
    :cond_208
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v5, Lcom/bzbs/lib/survey/R$string;->msg_alert_survey:I

    invoke-virtual {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2409
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_122

    .line 2411
    :cond_21c
    invoke-virtual/range {v16 .. v16}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_25b

    .line 2412
    sget v4, Lcom/bzbs/lib/survey/R$id;->etFieldInputMode:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2413
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_247

    .line 2414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_117

    .line 2417
    :cond_247
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v5, Lcom/bzbs/lib/survey/R$string;->msg_alert_survey:I

    invoke-virtual {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2418
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_122

    .line 2420
    :cond_25b
    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_2ab

    .line 2421
    sget v4, Lcom/bzbs/lib/survey/R$id;->etFieldInputLocation:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2422
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_297

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "0.0,0.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_297

    .line 2423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_117

    .line 2426
    :cond_297
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v5, Lcom/bzbs/lib/survey/R$string;->msg_alert_survey:I

    invoke-virtual {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2427
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_122

    .line 2429
    :cond_2ab
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_37c

    .line 2430
    sget v4, Lcom/bzbs/lib/survey/R$id;->tvFieldAnswer:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 2431
    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_368

    .line 2432
    iget-object v3, v2, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-boolean v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->e:Z

    if-eqz v3, :cond_342

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v2, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    add-int/lit8 v5, v19, -0x3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->k:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_342

    .line 2433
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v3, Lcom/bzbs/lib/survey/R$string;->survey_wrong_answer:I

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v3, Lcom/bzbs/lib/survey/R$string;->dialog_title_address:I

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2435
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->D(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    .line 2436
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->E(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v4

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/Campaign;->aq:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtra;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurvey;

    iget v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurvey;->a:I

    if-le v3, v4, :cond_32f

    .line 2437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a()V

    goto/16 :goto_117

    .line 2440
    :cond_32f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v0, v18

    invoke-static {v3, v2, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_117

    .line 2445
    :cond_342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;I)I

    .line 2446
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    .line 2447
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    add-int/lit8 v4, v19, -0x3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->h:Ljava/lang/String;

    iput-object v2, v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->e:Ljava/lang/String;

    goto/16 :goto_117

    .line 2452
    :cond_368
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v5, Lcom/bzbs/lib/survey/R$string;->msg_alert_survey:I

    invoke-virtual {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2453
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_122

    .line 2456
    :cond_37c
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3d2

    .line 2457
    sget v4, Lcom/bzbs/lib/survey/R$id;->chkFieldCheckbox:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 2459
    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_39c

    .line 2460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_117

    .line 2463
    :cond_39c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v5, Lcom/bzbs/lib/survey/R$string;->msg_alert_survey:I

    invoke-virtual {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2464
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    .line 2467
    const-string/jumbo v5, "OAT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " actionSubmitValidtvFieldCheckbox= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_122

    .line 2468
    :cond_3d2
    invoke-virtual {v14}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_489

    .line 2469
    sget v4, Lcom/bzbs/lib/survey/R$id;->tvFieldAnswerBox:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 2470
    sget v5, Lcom/bzbs/lib/survey/R$id;->etFieldInputAnswer:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 2471
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v7, "input_method"

    invoke-virtual {v6, v7}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    .line 2472
    invoke-virtual {v5}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2473
    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_425

    .line 2474
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    add-int/lit8 v4, v19, -0x3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->h:Ljava/lang/String;

    iput-object v2, v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->e:Ljava/lang/String;

    .line 2475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_117

    .line 2478
    :cond_425
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v6, Lcom/bzbs/lib/survey/R$string;->msg_alert_survey:I

    invoke-virtual {v4, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2479
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    .line 2481
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_453

    .line 2482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_117

    .line 2485
    :cond_453
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v5, Lcom/bzbs/lib/survey/R$string;->msg_alert_survey:I

    invoke-virtual {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2486
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    .line 2490
    const-string/jumbo v5, "OAT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " actionSubmitValidtvFieldAnswer= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_122

    .line 2491
    :cond_489
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_53e

    .line 2492
    sget v4, Lcom/bzbs/lib/survey/R$id;->chkFieldChoice:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 2493
    sget v5, Lcom/bzbs/lib/survey/R$id;->etFieldInputChoice:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 2494
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v7, "input_method"

    invoke-virtual {v6, v7}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    .line 2495
    invoke-virtual {v5}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2497
    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4c8

    .line 2498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_117

    .line 2501
    :cond_4c8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v6, Lcom/bzbs/lib/survey/R$string;->msg_alert_survey:I

    invoke-virtual {v4, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2502
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    .line 2505
    sget v4, Lcom/bzbs/lib/survey/R$id;->layoutInfoChoiceEdt:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 2506
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_8a0

    .line 2507
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_508

    .line 2508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    move-object/from16 v18, v6

    .line 2509
    goto/16 :goto_117

    .line 2511
    :cond_508
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v5, Lcom/bzbs/lib/survey/R$string;->msg_alert_survey:I

    invoke-virtual {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2512
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    .line 2516
    :goto_51a
    const-string/jumbo v5, "OAT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " actionSubmitValidchkFieldChoice= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_122

    .line 2517
    :cond_53e
    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_76f

    .line 2518
    sget v4, Lcom/bzbs/lib/survey/R$id;->etFieldInput:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 2519
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v6, "input_method"

    invoke-virtual {v5, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    .line 2520
    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2521
    invoke-virtual {v4}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_608

    invoke-virtual {v4}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "mobile"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_608

    .line 2522
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v5

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/Campaign;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->w(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/lib/survey/LibUserLogin;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a5

    .line 2523
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->b(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2525
    :cond_5a5
    iget-object v5, v2, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    add-int/lit8 v6, v19, -0x3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-boolean v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->f:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5d6

    .line 2527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v3, "([0\\\\+]+[0-9]{9})"

    const-string/jumbo v5, "invalid phone number"

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->a(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    .line 2528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v3, Lcom/bzbs/lib/survey/R$string;->msg_alert_invalid_phone:I

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_117

    .line 2530
    :cond_5d6
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_608

    .line 2531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v3, "([0\\\\+]+[0-9]{9})"

    const-string/jumbo v5, "invalid phone number"

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->a(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    .line 2532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v3, Lcom/bzbs/lib/survey/R$string;->msg_alert_invalid_phone:I

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_117

    .line 2536
    :cond_608
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_66d

    .line 2537
    iget-object v4, v2, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    add-int/lit8 v5, v19, -0x3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-boolean v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->f:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_63f

    .line 2538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v3, Lcom/bzbs/lib/survey/R$string;->msg_alert_survey:I

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_117

    .line 2542
    :cond_63f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    .line 2569
    :cond_647
    const-string/jumbo v4, "OAT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " actionSubmitValidetFieldInput= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, v18

    .line 2570
    goto/16 :goto_122

    .line 2545
    :cond_66d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    .line 2546
    iget-object v5, v2, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    add-int/lit8 v6, v19, -0x3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->b:Ljava/lang/String;

    const-string/jumbo v6, "number"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a5

    .line 2547
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2548
    const-string/jumbo v6, "[0-9]+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6d3

    .line 2549
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    .line 2556
    :cond_6a5
    invoke-virtual {v4}, Landroid/widget/EditText;->getInputType()I

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_6e7

    .line 2557
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6e7

    .line 2558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v3, Lcom/bzbs/lib/survey/R$string;->toast_email_invalid:I

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_117

    .line 2551
    :cond_6d3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v3, Lcom/bzbs/lib/survey/R$string;->edt_field_number_only:I

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_117

    .line 2563
    :cond_6e7
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v4, v2, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    add-int/lit8 v6, v19, -0x3

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->d:I

    if-ge v5, v4, :cond_647

    .line 2564
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v5, Lcom/bzbs/lib/survey/R$string;->edt_field_min_max1:I

    invoke-virtual {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v2, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    add-int/lit8 v5, v19, -0x3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->a:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v5, Lcom/bzbs/lib/survey/R$string;->edt_field_min_max2:I

    invoke-virtual {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    add-int/lit8 v4, v19, -0x3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget v2, v2, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->d:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 2565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_117

    .line 2570
    :cond_76f
    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_7e0

    .line 2571
    sget v4, Lcom/bzbs/lib/survey/R$id;->etFieldInputTime:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2572
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v6, "input_method"

    invoke-virtual {v5, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    .line 2573
    invoke-virtual {v4}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2574
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_7d7

    .line 2575
    iget-object v4, v2, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    add-int/lit8 v5, v19, -0x3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-boolean v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->f:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7cb

    .line 2576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v3, Lcom/bzbs/lib/survey/R$string;->msg_alert_survey:I

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_117

    .line 2580
    :cond_7cb
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    :goto_7d3
    move-object/from16 v4, v18

    .line 2585
    goto/16 :goto_122

    .line 2583
    :cond_7d7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto :goto_7d3

    .line 2585
    :cond_7e0
    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_851

    .line 2586
    sget v4, Lcom/bzbs/lib/survey/R$id;->etFieldInputDate:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2587
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v6, "input_method"

    invoke-virtual {v5, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    .line 2588
    invoke-virtual {v4}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2589
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_848

    .line 2590
    iget-object v4, v2, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    add-int/lit8 v5, v19, -0x3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-boolean v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->f:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_83c

    .line 2591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v3, Lcom/bzbs/lib/survey/R$string;->msg_alert_survey:I

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_117

    .line 2595
    :cond_83c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    :goto_844
    move-object/from16 v4, v18

    .line 2600
    goto/16 :goto_122

    .line 2598
    :cond_848
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto :goto_844

    .line 2600
    :cond_851
    invoke-virtual {v13}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_89c

    .line 2601
    sget v4, Lcom/bzbs/lib/survey/R$id;->etFieldTextArea:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 2602
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v6, "input_method"

    invoke-virtual {v5, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    .line 2603
    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2604
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_894

    .line 2605
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    move-object/from16 v4, v18

    goto/16 :goto_122

    .line 2607
    :cond_894
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    :cond_89c
    move-object/from16 v4, v18

    goto/16 :goto_122

    :cond_8a0
    move-object v4, v6

    goto/16 :goto_51a
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    .prologue
    .line 1021
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 982
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/widget/EditText;)Z
    .registers 4

    .prologue
    .line 1954
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1955
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1958
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_18

    .line 1960
    const/4 v0, 0x0

    .line 1963
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x1

    goto :goto_17
.end method

.method public a(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 1933
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1935
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1938
    if-eqz p4, :cond_1a

    invoke-virtual {p0, p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->a(Landroid/widget/EditText;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1947
    :cond_19
    :goto_19
    return v0

    .line 1941
    :cond_1a
    if-eqz p4, :cond_22

    invoke-static {p2, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1947
    :cond_22
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public b()I
    .registers 2

    .prologue
    .line 977
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public b(I)Ljava/lang/String;
    .registers 20

    .prologue
    .line 2618
    const-string/jumbo v16, ""

    .line 2621
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2622
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->b:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v3, v3, p1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    .line 2624
    sget v1, Lcom/bzbs/lib/survey/R$id;->layoutRootSurvey:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2625
    if-eqz v1, :cond_2ce

    .line 2627
    const/4 v2, 0x0

    move v15, v2

    :goto_31
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v15, v2, :cond_2ce

    .line 2628
    invoke-virtual {v1, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 2629
    sget v2, Lcom/bzbs/lib/survey/R$id;->layoutQuestion:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 2630
    if-eqz v2, :cond_d5

    .line 2631
    sget v3, Lcom/bzbs/lib/survey/R$id;->layoutInfoChoice:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 2632
    sget v4, Lcom/bzbs/lib/survey/R$id;->layoutInfoCheckbox:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 2633
    sget v5, Lcom/bzbs/lib/survey/R$id;->layoutInfoInput:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 2634
    sget v6, Lcom/bzbs/lib/survey/R$id;->layoutDate:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 2635
    sget v7, Lcom/bzbs/lib/survey/R$id;->layoutTime:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 2636
    sget v8, Lcom/bzbs/lib/survey/R$id;->layoutInfoTextArea:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 2637
    sget v9, Lcom/bzbs/lib/survey/R$id;->layoutQuestionwithBox:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 2638
    sget v10, Lcom/bzbs/lib/survey/R$id;->layoutScanCodeInput:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 2639
    sget v11, Lcom/bzbs/lib/survey/R$id;->layoutImageInput:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 2640
    sget v12, Lcom/bzbs/lib/survey/R$id;->layoutInfoRate:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 2641
    sget v13, Lcom/bzbs/lib/survey/R$id;->layoutInfoEmotion:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 2642
    sget v14, Lcom/bzbs/lib/survey/R$id;->layoutInfoLocation:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 2643
    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_da

    .line 2644
    sget v2, Lcom/bzbs/lib/survey/R$id;->etFieldInputCode:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2645
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2627
    :cond_d5
    :goto_d5
    add-int/lit8 v2, v15, 0x1

    move v15, v2

    goto/16 :goto_31

    .line 2646
    :cond_da
    invoke-virtual {v11}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_115

    .line 2647
    sget v2, Lcom/bzbs/lib/survey/R$id;->imgCapture:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2648
    sget v3, Lcom/bzbs/lib/survey/R$id;->imgCaptureDelete:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 2649
    sget v4, Lcom/bzbs/lib/survey/R$id;->etFieldInputImage:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2651
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2652
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2653
    const-string/jumbo v3, ""

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2654
    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d5

    .line 2655
    :cond_115
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_13a

    .line 2656
    sget v2, Lcom/bzbs/lib/survey/R$id;->sbvRate:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 2657
    sget v3, Lcom/bzbs/lib/survey/R$id;->etFieldInputRate:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2658
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2659
    const-string/jumbo v2, ""

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d5

    .line 2660
    :cond_13a
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_160

    .line 2661
    sget v2, Lcom/bzbs/lib/survey/R$id;->etFieldInputMode:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2662
    sget v3, Lcom/bzbs/lib/survey/R$id;->view_pager:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    .line 2663
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2664
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d5

    .line 2665
    :cond_160
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_178

    .line 2666
    sget v2, Lcom/bzbs/lib/survey/R$id;->etFieldInputLocation:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2667
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d5

    .line 2668
    :cond_178
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_18e

    .line 2669
    sget v2, Lcom/bzbs/lib/survey/R$id;->tvFieldAnswer:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 2670
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_d5

    .line 2671
    :cond_18e
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1a4

    .line 2672
    sget v2, Lcom/bzbs/lib/survey/R$id;->chkFieldCheckbox:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 2673
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_d5

    .line 2674
    :cond_1a4
    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1df

    .line 2675
    sget v2, Lcom/bzbs/lib/survey/R$id;->tvFieldAnswerBox:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 2676
    sget v3, Lcom/bzbs/lib/survey/R$id;->etFieldInputAnswer:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 2677
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v5, "input_method"

    invoke-virtual {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 2678
    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2679
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2680
    const-string/jumbo v2, ""

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d5

    .line 2681
    :cond_1df
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_21a

    .line 2682
    sget v2, Lcom/bzbs/lib/survey/R$id;->chkFieldChoice:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 2683
    sget v3, Lcom/bzbs/lib/survey/R$id;->etFieldInputChoice:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 2684
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v5, "input_method"

    invoke-virtual {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 2685
    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2686
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2687
    const-string/jumbo v2, ""

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d5

    .line 2689
    :cond_21a
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_247

    .line 2690
    sget v2, Lcom/bzbs/lib/survey/R$id;->etFieldInput:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 2691
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 2692
    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2693
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d5

    .line 2695
    :cond_247
    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_274

    .line 2696
    sget v2, Lcom/bzbs/lib/survey/R$id;->etFieldInputTime:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2697
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 2698
    invoke-virtual {v2}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2699
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d5

    .line 2700
    :cond_274
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2a1

    .line 2701
    sget v2, Lcom/bzbs/lib/survey/R$id;->etFieldInputDate:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2702
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 2703
    invoke-virtual {v2}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2704
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d5

    .line 2705
    :cond_2a1
    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_d5

    .line 2706
    sget v2, Lcom/bzbs/lib/survey/R$id;->etFieldTextArea:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 2707
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 2708
    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2709
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d5

    .line 2717
    :cond_2ce
    return-object v16
.end method

.method public d()V
    .registers 36

    .prologue
    .line 1985
    .line 1986
    const/16 v30, 0x0

    .line 1987
    const/4 v4, 0x0

    .line 1988
    const-string/jumbo v28, ""

    .line 1989
    const-string/jumbo v27, "["

    .line 1990
    const-string/jumbo v26, ""

    .line 1991
    const/4 v3, 0x0

    .line 1992
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v32, v2

    move v2, v3

    move v3, v4

    :goto_1f
    if-lez v32, :cond_cb9

    .line 1993
    add-int/lit8 v33, v2, 0x1

    .line 2000
    const/16 v31, 0x0

    .line 2001
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v2

    move/from16 v0, v32

    invoke-virtual {v2, v0}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2002
    sget v4, Lcom/bzbs/lib/survey/R$id;->layoutRootSurvey:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/LinearLayout;

    .line 2003
    if-eqz v16, :cond_f1a

    .line 2004
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "{check_box:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 2005
    const-string/jumbo v24, ""

    .line 2006
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "{check_box:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 2007
    const-string/jumbo v22, ""

    .line 2008
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "{info_choice_with_others:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2009
    const-string/jumbo v2, ""

    .line 2010
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "{inputs:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 2011
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "{image_url:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 2012
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "{scan_code:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 2013
    const-string/jumbo v18, ""

    .line 2014
    const/16 v29, 0x0

    .line 2015
    const/16 v17, 0x0

    :goto_d2
    invoke-virtual/range {v16 .. v16}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_b77

    .line 2016
    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v34

    .line 2017
    sget v2, Lcom/bzbs/lib/survey/R$id;->layoutQuestion:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 2018
    if-eqz v2, :cond_f2d

    .line 2020
    sget v3, Lcom/bzbs/lib/survey/R$id;->layoutInfoChoice:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 2021
    sget v4, Lcom/bzbs/lib/survey/R$id;->layoutInfoCheckbox:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 2022
    sget v5, Lcom/bzbs/lib/survey/R$id;->layoutInfoInput:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 2023
    sget v6, Lcom/bzbs/lib/survey/R$id;->layoutDate:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 2024
    sget v7, Lcom/bzbs/lib/survey/R$id;->layoutTime:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 2025
    sget v8, Lcom/bzbs/lib/survey/R$id;->layoutInfoTextArea:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 2026
    sget v9, Lcom/bzbs/lib/survey/R$id;->layoutQuestionwithBox:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 2027
    sget v10, Lcom/bzbs/lib/survey/R$id;->layoutScanCodeInput:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 2028
    sget v11, Lcom/bzbs/lib/survey/R$id;->layoutScanCodeContinuousInput:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 2029
    sget v12, Lcom/bzbs/lib/survey/R$id;->layoutImageInput:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 2030
    sget v13, Lcom/bzbs/lib/survey/R$id;->layoutInfoRate:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 2031
    sget v14, Lcom/bzbs/lib/survey/R$id;->layoutInfoEmotion:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 2032
    sget v15, Lcom/bzbs/lib/survey/R$id;->layoutInfoLocation:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 2033
    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_255

    .line 2034
    sget v2, Lcom/bzbs/lib/survey/R$id;->etFieldInputCode:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2036
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20f

    .line 2037
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2038
    const-string/jumbo v3, ""

    .line 2039
    const-string/jumbo v2, ","

    .line 2040
    const-string/jumbo v4, ","

    .line 2041
    const/4 v7, 0x0

    .line 2042
    const/4 v6, 0x1

    :goto_1d5
    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-object v11, v4

    move-object v12, v5

    move-object/from16 v13, v28

    move v14, v6

    move v15, v7

    move-object v4, v3

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object v3, v2

    move/from16 v2, v17

    move/from16 v17, v31

    .line 2015
    :goto_1ed
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    move/from16 v29, v14

    move/from16 v30, v15

    move/from16 v31, v17

    move/from16 v17, v2

    goto/16 :goto_d2

    .line 2044
    :cond_20f
    const/4 v7, 0x0

    .line 2045
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2046
    const-string/jumbo v3, ""

    .line 2047
    const-string/jumbo v2, ","

    .line 2048
    const-string/jumbo v4, ","

    move/from16 v6, v29

    goto :goto_1d5

    .line 2050
    :cond_255
    invoke-virtual {v11}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_2b1

    .line 2051
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",{answer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->r(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2052
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move-object v12, v2

    move-object/from16 v13, v28

    move/from16 v14, v29

    move/from16 v15, v30

    move/from16 v2, v17

    move/from16 v17, v31

    goto/16 :goto_1ed

    .line 2053
    :cond_2b1
    invoke-virtual {v12}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_37a

    .line 2054
    sget v2, Lcom/bzbs/lib/survey/R$id;->etFieldInputImage:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2056
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_334

    .line 2057
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2058
    const-string/jumbo v3, ""

    .line 2059
    const-string/jumbo v2, ","

    .line 2060
    const-string/jumbo v4, ","

    .line 2061
    const/4 v7, 0x0

    .line 2062
    const/4 v6, 0x1

    :goto_31a
    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-object v11, v4

    move-object v12, v5

    move-object/from16 v13, v28

    move v14, v6

    move v15, v7

    move-object/from16 v4, v19

    move-object v5, v3

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object v3, v2

    move/from16 v2, v17

    move/from16 v17, v31

    .line 2070
    goto/16 :goto_1ed

    .line 2064
    :cond_334
    const/4 v7, 0x0

    .line 2065
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2066
    const-string/jumbo v3, ""

    .line 2067
    const-string/jumbo v2, ","

    .line 2068
    const-string/jumbo v4, ","

    move/from16 v6, v29

    goto :goto_31a

    .line 2070
    :cond_37a
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_407

    .line 2071
    sget v2, Lcom/bzbs/lib/survey/R$id;->etFieldInputRateValue:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2072
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3ff

    .line 2073
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "{answer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2074
    const-string/jumbo v3, ","

    .line 2075
    const/4 v6, 0x0

    .line 2076
    const/4 v5, 0x1

    .line 2080
    :goto_3e1
    invoke-virtual/range {v16 .. v16}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-object v11, v3

    move-object v12, v4

    move-object/from16 v13, v28

    move v14, v5

    move v15, v6

    move/from16 v17, v31

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    .line 2081
    goto/16 :goto_1ed

    .line 2078
    :cond_3ff
    const/4 v6, 0x1

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    move/from16 v5, v29

    goto :goto_3e1

    .line 2081
    :cond_407
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_494

    .line 2082
    sget v2, Lcom/bzbs/lib/survey/R$id;->etFieldInputMode:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2083
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48c

    .line 2084
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "{answer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2085
    const-string/jumbo v3, ","

    .line 2086
    const/4 v6, 0x0

    .line 2087
    const/4 v5, 0x1

    .line 2091
    :goto_46e
    invoke-virtual/range {v16 .. v16}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-object v11, v3

    move-object v12, v4

    move-object/from16 v13, v28

    move v14, v5

    move v15, v6

    move/from16 v17, v31

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    .line 2092
    goto/16 :goto_1ed

    .line 2089
    :cond_48c
    const/4 v6, 0x1

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    move/from16 v5, v29

    goto :goto_46e

    .line 2092
    :cond_494
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_52e

    .line 2093
    sget v2, Lcom/bzbs/lib/survey/R$id;->etFieldInputLocation:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2094
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_526

    .line 2095
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "{latitude:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-wide v4, v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->m:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "longitude:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-wide v4, v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->n:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2096
    const-string/jumbo v2, ","

    .line 2097
    const/4 v5, 0x0

    .line 2098
    const/4 v4, 0x1

    :goto_50a
    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-object v11, v2

    move-object v12, v3

    move-object/from16 v13, v28

    move v14, v4

    move v15, v5

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v17, v31

    .line 2102
    goto/16 :goto_1ed

    .line 2100
    :cond_526
    const/4 v5, 0x1

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move/from16 v4, v29

    goto :goto_50a

    .line 2102
    :cond_52e
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5bc

    .line 2103
    sget v2, Lcom/bzbs/lib/survey/R$id;->tvFieldAnswer:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 2104
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5b4

    .line 2105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "{answer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->b:Ljava/util/ArrayList;

    add-int/lit8 v4, v33, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    add-int/lit8 v4, v17, -0x3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget v2, v2, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->k:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2106
    const-string/jumbo v2, ","

    .line 2107
    const/4 v5, 0x0

    .line 2108
    const/4 v4, 0x1

    :goto_598
    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-object v11, v2

    move-object v12, v3

    move-object/from16 v13, v28

    move v14, v4

    move v15, v5

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v17, v31

    .line 2113
    goto/16 :goto_1ed

    .line 2110
    :cond_5b4
    const/4 v5, 0x1

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move/from16 v4, v29

    goto :goto_598

    .line 2113
    :cond_5bc
    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6e1

    .line 2115
    sget v2, Lcom/bzbs/lib/survey/R$id;->tvFieldAnswerBox:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 2116
    sget v3, Lcom/bzbs/lib/survey/R$id;->layoutInfoAnswerEdt:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 2117
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_632

    .line 2118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "{answer:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->b:Ljava/util/ArrayList;

    add-int/lit8 v6, v33, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    add-int/lit8 v6, v17, -0x3

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->k:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", choice_input :\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\"}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 2119
    const-string/jumbo v26, ","

    .line 2120
    const/16 v30, 0x0

    .line 2121
    const/16 v29, 0x1

    .line 2123
    :cond_632
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_f67

    .line 2124
    sget v4, Lcom/bzbs/lib/survey/R$id;->etFieldInputAnswer:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 2125
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_f67

    .line 2126
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "{answer:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->b:Ljava/util/ArrayList;

    add-int/lit8 v7, v33, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    add-int/lit8 v7, v17, -0x3

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->k:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", choice_input :\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\"}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 2127
    const-string/jumbo v26, ","

    .line 2128
    const/16 v30, 0x0

    .line 2129
    const/16 v29, 0x1

    move-object/from16 v4, v26

    move-object/from16 v5, v27

    move/from16 v6, v29

    .line 2132
    :goto_6b5
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_f63

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_f63

    .line 2133
    const/16 v30, 0x1

    move/from16 v2, v30

    :goto_6c5
    move-object/from16 v3, v18

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-object v11, v4

    move-object v12, v5

    move-object/from16 v13, v28

    move v14, v6

    move v15, v2

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move/from16 v2, v17

    move/from16 v17, v31

    .line 2136
    goto/16 :goto_1ed

    :cond_6e1
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7b6

    .line 2137
    sget v2, Lcom/bzbs/lib/survey/R$id;->chkFieldChoice:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 2138
    sget v3, Lcom/bzbs/lib/survey/R$id;->layoutInfoChoiceEdt:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 2139
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_f59

    .line 2140
    const/4 v10, 0x1

    .line 2141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->b:Ljava/util/ArrayList;

    add-int/lit8 v6, v33, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    add-int/lit8 v6, v17, -0x3

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->k:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2142
    const-string/jumbo v23, ""

    .line 2143
    const-string/jumbo v5, ","

    .line 2144
    const-string/jumbo v6, ","

    .line 2145
    const/16 v30, 0x0

    .line 2146
    const/16 v29, 0x1

    .line 2148
    :goto_756
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_f51

    .line 2149
    sget v4, Lcom/bzbs/lib/survey/R$id;->etFieldInputChoice:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 2150
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_f51

    .line 2151
    const-string/jumbo v23, ""

    .line 2152
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    .line 2153
    const/16 v30, 0x0

    .line 2154
    const/16 v29, 0x1

    move-object/from16 v4, v23

    move-object/from16 v8, v28

    move/from16 v9, v29

    .line 2157
    :goto_78d
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_f4d

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_f4d

    .line 2158
    const/16 v30, 0x1

    move/from16 v2, v30

    :goto_79d
    move-object/from16 v3, v18

    move-object v11, v6

    move-object v12, v7

    move-object v13, v8

    move v14, v9

    move v15, v2

    move-object v8, v4

    move-object/from16 v9, v24

    move/from16 v2, v17

    move-object/from16 v6, v21

    move-object v7, v5

    move-object/from16 v5, v20

    move-object/from16 v4, v19

    move/from16 v17, v10

    move-object/from16 v10, v25

    .line 2160
    goto/16 :goto_1ed

    :cond_7b6
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_844

    .line 2161
    sget v2, Lcom/bzbs/lib/survey/R$id;->chkFieldCheckbox:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 2162
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_838

    .line 2163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->b:Ljava/util/ArrayList;

    add-int/lit8 v4, v33, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    add-int/lit8 v4, v17, -0x3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget v2, v2, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->k:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2164
    const-string/jumbo v3, ""

    .line 2165
    const-string/jumbo v2, ","

    .line 2166
    const-string/jumbo v4, ","

    .line 2167
    const/4 v7, 0x0

    .line 2168
    const/4 v6, 0x1

    :goto_81e
    move-object/from16 v8, v23

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move-object/from16 v13, v28

    move v14, v6

    move v15, v7

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v17, v31

    .line 2173
    goto/16 :goto_1ed

    .line 2170
    :cond_838
    const/4 v7, 0x1

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    move-object/from16 v5, v27

    move/from16 v6, v29

    goto :goto_81e

    .line 2173
    :cond_844
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_904

    .line 2174
    sget v2, Lcom/bzbs/lib/survey/R$id;->etFieldInput:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 2175
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8c7

    .line 2176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2177
    const-string/jumbo v3, ""

    .line 2178
    const-string/jumbo v2, ","

    .line 2179
    const-string/jumbo v4, ","

    .line 2180
    const/4 v7, 0x0

    .line 2181
    const/4 v6, 0x1

    :goto_8ad
    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-object v11, v4

    move-object v12, v5

    move-object/from16 v13, v28

    move v14, v6

    move v15, v7

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object v6, v3

    move-object/from16 v7, v22

    move-object v3, v2

    move/from16 v2, v17

    move/from16 v17, v31

    .line 2189
    goto/16 :goto_1ed

    .line 2183
    :cond_8c7
    const/4 v7, 0x0

    .line 2184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2185
    const-string/jumbo v3, ""

    .line 2186
    const-string/jumbo v2, ","

    .line 2187
    const-string/jumbo v4, ","

    move/from16 v6, v29

    goto :goto_8ad

    .line 2189
    :cond_904
    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9cd

    .line 2190
    sget v2, Lcom/bzbs/lib/survey/R$id;->etFieldInputTime:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2191
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_987

    .line 2192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2193
    const-string/jumbo v3, ""

    .line 2194
    const-string/jumbo v2, ","

    .line 2195
    const-string/jumbo v4, ","

    .line 2196
    const/4 v7, 0x0

    .line 2197
    const/4 v6, 0x1

    :goto_96d
    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-object v11, v4

    move-object v12, v5

    move-object/from16 v13, v28

    move v14, v6

    move v15, v7

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object v6, v3

    move-object/from16 v7, v22

    move-object v3, v2

    move/from16 v2, v17

    move/from16 v17, v31

    .line 2205
    goto/16 :goto_1ed

    .line 2199
    :cond_987
    const/4 v7, 0x0

    .line 2200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2201
    const-string/jumbo v3, ""

    .line 2202
    const-string/jumbo v2, ","

    .line 2203
    const-string/jumbo v4, ","

    move/from16 v6, v29

    goto :goto_96d

    .line 2205
    :cond_9cd
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_a96

    .line 2206
    sget v2, Lcom/bzbs/lib/survey/R$id;->etFieldInputDate:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2207
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a50

    .line 2208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2209
    const-string/jumbo v3, ""

    .line 2210
    const-string/jumbo v2, ","

    .line 2211
    const-string/jumbo v4, ","

    .line 2212
    const/4 v7, 0x0

    .line 2213
    const/4 v6, 0x1

    :goto_a36
    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-object v11, v4

    move-object v12, v5

    move-object/from16 v13, v28

    move v14, v6

    move v15, v7

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object v6, v3

    move-object/from16 v7, v22

    move-object v3, v2

    move/from16 v2, v17

    move/from16 v17, v31

    .line 2221
    goto/16 :goto_1ed

    .line 2215
    :cond_a50
    const/4 v7, 0x0

    .line 2216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2217
    const-string/jumbo v3, ""

    .line 2218
    const-string/jumbo v2, ","

    .line 2219
    const-string/jumbo v4, ","

    move/from16 v6, v29

    goto :goto_a36

    .line 2221
    :cond_a96
    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_f2d

    .line 2222
    sget v2, Lcom/bzbs/lib/survey/R$id;->etFieldTextArea:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 2223
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b19

    .line 2224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2225
    const-string/jumbo v3, ""

    .line 2226
    const-string/jumbo v2, ","

    .line 2227
    const-string/jumbo v4, ","

    .line 2228
    const/4 v7, 0x0

    .line 2229
    const/4 v6, 0x1

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-object v11, v4

    move-object v12, v5

    move-object/from16 v13, v28

    move v14, v6

    move v15, v7

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object v6, v3

    move-object/from16 v7, v22

    move-object v3, v2

    move/from16 v2, v17

    move/from16 v17, v31

    goto/16 :goto_1ed

    .line 2231
    :cond_b19
    const/4 v6, 0x0

    .line 2232
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2233
    const-string/jumbo v3, ""

    .line 2234
    const-string/jumbo v2, ","

    .line 2235
    const-string/jumbo v4, ","

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-object v11, v4

    move-object v12, v5

    move-object/from16 v13, v28

    move/from16 v14, v29

    move v15, v6

    move-object v6, v3

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object v3, v2

    move/from16 v2, v17

    move/from16 v17, v31

    goto/16 :goto_1ed

    .line 2240
    :cond_b77
    const-string/jumbo v2, ""

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b98

    .line 2241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 2243
    :cond_b98
    const-string/jumbo v2, ""

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc4

    .line 2244
    const-string/jumbo v2, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5f

    .line 2245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 2252
    :cond_bc4
    :goto_bc4
    const-string/jumbo v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be5

    .line 2253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 2255
    :cond_be5
    const-string/jumbo v2, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c06

    .line 2256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 2258
    :cond_c06
    const-string/jumbo v2, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f23

    .line 2259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move/from16 v6, v29

    move/from16 v4, v30

    .line 2263
    :goto_c2f
    const/4 v5, 0x1

    if-ne v4, v5, :cond_c50

    if-nez v6, :cond_c50

    .line 2264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "{survey_pass:true}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2265
    const-string/jumbo v2, ","

    .line 2266
    const/4 v4, 0x0

    .line 1992
    :cond_c50
    add-int/lit8 v5, v32, -0x1

    move/from16 v32, v5

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move/from16 v30, v4

    move v3, v6

    move/from16 v2, v33

    goto/16 :goto_1f

    .line 2246
    :cond_c5f
    const-string/jumbo v2, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c94

    const/4 v2, 0x1

    move/from16 v0, v31

    if-ne v0, v2, :cond_c94

    .line 2247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "],check_box_input :\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_bc4

    .line 2249
    :cond_c94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",{check_box:[],check_box_input :\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_bc4

    .line 2270
    :cond_cb9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2271
    const-string/jumbo v2, "OAT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "JSON ANSWER:= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v2, v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->t:Ljava/util/Calendar;

    if-nez v2, :cond_d09

    .line 2281
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 2282
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->t:Ljava/util/Calendar;

    .line 2283
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v4, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->t:Ljava/util/Calendar;

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2286
    :cond_d09
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v2, v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->t:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v2, v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->s:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    long-to-int v2, v4

    .line 2287
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v4, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->t:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v6, v6, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->s:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x36ee80

    div-long/2addr v4, v6

    long-to-int v4, v4

    .line 2288
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->t:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->s:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xea60

    div-long/2addr v6, v8

    long-to-int v5, v6

    .line 2289
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v6, v6, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->t:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v8, v8, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->s:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v6, v6

    .line 2290
    const-string/jumbo v7, "OAT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "presumedDays= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, ", presumedHours= "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", presumedMins= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", presumedSec= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    div-int/lit16 v4, v6, 0xe10

    .line 2293
    rem-int/lit16 v2, v6, 0xe10

    div-int/lit8 v5, v2, 0x3c

    .line 2294
    rem-int/lit8 v6, v6, 0x3c

    .line 2295
    const-string/jumbo v2, ""

    .line 2305
    const-string/jumbo v7, ""

    .line 2306
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v7}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v7

    iget-object v7, v7, Lcom/bzbs/lib/survey/bean/Campaign;->G:Ljava/lang/String;

    const-string/jumbo v8, "6"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ee8

    .line 2311
    :goto_dcc
    const-string/jumbo v4, "OAT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "TIMES:= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v6, ""

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v8, Lcom/bzbs/lib/survey/R$string;->please_wait:I

    invoke-virtual {v7, v8}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static {v5, v6, v7, v8, v9}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 2316
    new-instance v4, Lcom/bzbs/lib/survey/util/GPSTracker;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->w(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/bzbs/lib/survey/util/GPSTracker;-><init>(Landroid/content/Context;)V

    .line 2317
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/bzbs/lib/survey/LibConst;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "api/campaign/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v6

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/Campaign;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/redeem"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2319
    const-string/jumbo v6, "campaign.adbuzz"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "redeem url="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    new-instance v6, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v6}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 2322
    const-string/jumbo v7, "token"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v8}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/bzbs/lib/survey/LibUserLogin;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2323
    const-string/jumbo v7, "info1"

    invoke-virtual {v6, v7, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2324
    const-string/jumbo v3, "info2"

    invoke-virtual {v6, v3, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2325
    const-string/jumbo v2, "latitude"

    invoke-virtual {v4}, Lcom/bzbs/lib/survey/util/GPSTracker;->b()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2326
    const-string/jumbo v2, "longtitude"

    invoke-virtual {v4}, Lcom/bzbs/lib/survey/util/GPSTracker;->c()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->w(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/lib/survey/LibUserLogin;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1408708652720704"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f0d

    .line 2328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->C(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2329
    const-string/jumbo v2, "content://someURI"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2330
    new-instance v3, Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2331
    const-string/jumbo v2, "url"

    invoke-virtual {v3, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2332
    const-string/jumbo v2, "paramCampaignName"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v4

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/Campaign;->d:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v4, -0x1

    invoke-virtual {v2, v4, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 2334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->finish()V

    .line 2338
    :goto_ee7
    return-void

    .line 2309
    :cond_ee8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_dcc

    .line 2336
    :cond_f0d
    new-instance v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    invoke-static {v5, v6, v2}, Lcom/bzbs/lib/survey/util/http/BuzzbeesRestClient;->b(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto :goto_ee7

    :cond_f1a
    move-object/from16 v2, v26

    move v6, v3

    move/from16 v4, v30

    move-object/from16 v3, v27

    goto/16 :goto_c2f

    :cond_f23
    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move/from16 v6, v29

    move/from16 v4, v30

    goto/16 :goto_c2f

    :cond_f2d
    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move-object/from16 v12, v27

    move-object/from16 v13, v28

    move/from16 v14, v29

    move/from16 v15, v30

    move/from16 v17, v31

    goto/16 :goto_1ed

    :cond_f4d
    move/from16 v2, v30

    goto/16 :goto_79d

    :cond_f51
    move-object/from16 v4, v23

    move-object/from16 v8, v28

    move/from16 v9, v29

    goto/16 :goto_78d

    :cond_f59
    move-object/from16 v5, v22

    move-object/from16 v6, v26

    move-object/from16 v7, v27

    move/from16 v10, v31

    goto/16 :goto_756

    :cond_f63
    move/from16 v2, v30

    goto/16 :goto_6c5

    :cond_f67
    move-object/from16 v4, v26

    move-object/from16 v5, v27

    move/from16 v6, v29

    goto/16 :goto_6b5
.end method

.method public e(I)V
    .registers 11

    .prologue
    const/4 v7, 0x0

    .line 2765
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2766
    sget v1, Lcom/bzbs/lib/survey/R$id;->layoutRootSurvey:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2767
    if-eqz v0, :cond_e1

    move v6, v7

    .line 2769
    :goto_16
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v6, v1, :cond_e1

    .line 2770
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2771
    sget v1, Lcom/bzbs/lib/survey/R$id;->layoutQuestion:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 2772
    if-eqz v1, :cond_50

    .line 2773
    sget v2, Lcom/bzbs/lib/survey/R$id;->layoutInfoChoice:I

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 2774
    sget v3, Lcom/bzbs/lib/survey/R$id;->layoutInfoInput:I

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 2775
    sget v4, Lcom/bzbs/lib/survey/R$id;->layoutInfoTextArea:I

    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 2776
    sget v5, Lcom/bzbs/lib/survey/R$id;->layoutQuestionwithBox:I

    invoke-virtual {v8, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 2778
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_54

    .line 2769
    :cond_50
    :goto_50
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_16

    .line 2780
    :cond_54
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7d

    .line 2781
    sget v1, Lcom/bzbs/lib/survey/R$id;->chkFieldChoice:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 2782
    sget v1, Lcom/bzbs/lib/survey/R$id;->etFieldInputChoice:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 2783
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 2784
    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2, v1, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_50

    .line 2785
    :cond_7d
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9e

    .line 2786
    sget v1, Lcom/bzbs/lib/survey/R$id;->etFieldInputAnswer:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 2787
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 2788
    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2, v1, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_50

    .line 2789
    :cond_9e
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_bf

    .line 2790
    sget v1, Lcom/bzbs/lib/survey/R$id;->etFieldInput:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 2791
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 2792
    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2, v1, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_50

    .line 2793
    :cond_bf
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_50

    .line 2794
    sget v1, Lcom/bzbs/lib/survey/R$id;->etFieldTextArea:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 2795
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 2796
    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2, v1, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_50

    .line 2801
    :cond_e1
    return-void
.end method
