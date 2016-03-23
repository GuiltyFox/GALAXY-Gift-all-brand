.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SurveyFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdsPagerAdapter"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field filter:Landroid/text/InputFilter;

.field gAdBuzzItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/lib/survey/bean/AdBuzzItem;",
            ">;"
        }
    .end annotation
.end field

.field gViewRoot:Landroid/view/View;

.field inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
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
    .local p3, "adBuzzItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/lib/survey/bean/AdBuzzItem;>;"
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 1967
    new-instance v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$23;

    invoke-direct {v0, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$23;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->filter:Landroid/text/InputFilter;

    .line 970
    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->context:Landroid/content/Context;

    .line 971
    iput-object p3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    .line 972
    invoke-virtual {p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 973
    return-void
.end method

.method static synthetic access$3000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 963
    invoke-direct {p0, p1, p2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->resetSurvey(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private initialViewDescription(Lcom/bzbs/lib/survey/bean/AdBuzzItem;Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 17
    .param p1, "adBuzzItem"    # Lcom/bzbs/lib/survey/bean/AdBuzzItem;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "position"    # I

    .prologue
    .line 2917
    iget-object v10, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v11, Lcom/bzbs/lib/survey/R$layout;->bz_survey_v2_list_row:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, p2, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 2919
    .local v9, "viewDescription":Landroid/view/View;
    iput-object v9, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->gViewRoot:Landroid/view/View;

    .line 2920
    sget v10, Lcom/bzbs/lib/survey/R$id;->layoutRootSurvey:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 2921
    .local v2, "layoutRootSurvey":Landroid/widget/LinearLayout;
    sget v10, Lcom/bzbs/lib/survey/R$id;->vLine:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 2922
    .local v7, "vLine":Landroid/view/View;
    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2923
    iget-object v10, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v11, Lcom/bzbs/lib/survey/R$layout;->bz_survey_v2_last_page:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 2924
    .local v8, "viewContent":Landroid/view/View;
    sget v10, Lcom/bzbs/lib/survey/R$id;->tvSurveyName:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2925
    .local v6, "tvSurveyName":Landroid/widget/TextView;
    sget v10, Lcom/bzbs/lib/survey/R$id;->tvNumQuestion:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2926
    .local v5, "tvNumQuestion":Landroid/widget/TextView;
    sget v10, Lcom/bzbs/lib/survey/R$id;->tvFinishDate:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2927
    .local v4, "tvFinishDate":Landroid/widget/TextView;
    sget v10, Lcom/bzbs/lib/survey/R$id;->btnSaveSurvey:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2928
    .local v0, "btnSaveSurvey":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v10}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2929
    iget-object v10, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v10}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2930
    iget-object v10, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v10}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2932
    iget-object v10, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->strThankyouMessage:Ljava/lang/String;
    invoke-static {v10}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$3700(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7a

    .line 2933
    iget-object v10, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->strThankyouMessage:Ljava/lang/String;
    invoke-static {v10}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$3700(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2935
    :cond_7a
    iget-object v10, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;
    invoke-static {v10}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v10

    iget-object v10, v10, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v10, v10, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraSurvey:Lcom/bzbs/lib/survey/bean/CampaignExtraSurvey;

    iget-object v10, v10, Lcom/bzbs/lib/survey/bean/CampaignExtraSurvey;->ArrayCampaignExtraSurveyPages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2936
    .local v3, "qt":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "All  : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2938
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 2940
    .local v1, "currentDateTimeString":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Finish  : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2941
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2975
    new-instance v10, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$26;

    invoke-direct {v10, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$26;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;)V

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2982
    return-object v9
.end method

.method private initialViewPhoto(Lcom/bzbs/lib/survey/bean/AdBuzzItem;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "adBuzzItem"    # Lcom/bzbs/lib/survey/bean/AdBuzzItem;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 2804
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v5, Lcom/bzbs/lib/survey/R$layout;->bz_campaign_detail_ad_item_pager_image:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 2805
    .local v3, "viewPhoto":Landroid/view/View;
    iput-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->gViewRoot:Landroid/view/View;

    .line 2806
    sget v4, Lcom/bzbs/lib/survey/R$id;->image:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2807
    .local v0, "imageView":Landroid/widget/ImageView;
    sget v4, Lcom/bzbs/lib/survey/R$id;->pbLoadingImg:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 2808
    .local v2, "pbLoadingImg":Landroid/widget/ProgressBar;
    iget-object v4, p1, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraAdItem:Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;->Src:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2810
    .local v1, "img_url":Ljava/lang/String;
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    sget v5, Lcom/bzbs/lib/survey/R$drawable;->t1_1:I

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableTypeRequest;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 2811
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2813
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$24;

    invoke-direct {v5, p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$24;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2826
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v4

    new-instance v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$25;

    invoke-direct {v5, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$25;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;)V

    invoke-virtual {v4, v5}, Lcom/bzbs/lib/survey/control/CustomPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 2913
    return-object v3
.end method

.method private initialViewSurvey(Lcom/bzbs/lib/survey/bean/AdBuzzItem;Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 80
    .param p1, "adBuzzItem"    # Lcom/bzbs/lib/survey/bean/AdBuzzItem;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "position"    # I

    .prologue
    .line 1024
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/bzbs/lib/survey/R$layout;->bz_survey_v2_list_row:I

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v5, v6, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v74

    .line 1025
    .local v74, "viewSurvey":Landroid/view/View;
    move-object/from16 v0, v74

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->gViewRoot:Landroid/view/View;

    .line 1026
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v5, Lcom/bzbs/lib/survey/R$id;->scvSurvey:I

    move-object/from16 v0, v74

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, v6, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->scvSurvey:Landroid/widget/ScrollView;

    .line 1027
    sget v5, Lcom/bzbs/lib/survey/R$id;->layoutRootSurvey:I

    move-object/from16 v0, v74

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 1028
    .local v16, "layoutRootSurvey":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v67, v5, 0xf

    .line 1030
    .local v67, "screenSize":I
    packed-switch v67, :pswitch_data_e2e

    .line 1047
    :goto_40
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v5

    new-instance v6, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$1;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;)V

    invoke-virtual {v5, v6}, Lcom/bzbs/lib/survey/control/CustomPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1108
    sget v5, Lcom/bzbs/lib/survey/R$id;->tvTitle:I

    move-object/from16 v0, v74

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v70

    check-cast v70, Landroid/widget/TextView;

    .line 1109
    .local v70, "tvTitle":Landroid/widget/TextView;
    sget v5, Lcom/bzbs/lib/survey/R$id;->wvTitle:I

    move-object/from16 v0, v74

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    .line 1110
    .local v4, "wvTitle":Landroid/webkit/WebView;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 1111
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v70

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1113
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget v6, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->countInput:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->countInput:I

    .line 1114
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->listCampaignExtra:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1116
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->html_question:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_319

    .line 1117
    const/16 v5, 0x8

    move-object/from16 v0, v70

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1118
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1119
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1120
    sget v38, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1121
    .local v38, "gSDK_INT":I
    const/16 v5, 0xb

    move/from16 v0, v38

    if-lt v0, v5, :cond_bd

    .line 1122
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1125
    :cond_bd
    new-instance v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$2;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1133
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v75

    .line 1134
    .local v75, "webSettings":Landroid/webkit/WebSettings;
    const-string/jumbo v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "<div style=\'width:100%;\'>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v7, v7, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->html_question:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "</div>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "text/html"

    const-string/jumbo v8, "UTF-8"

    const-string/jumbo v9, ""

    invoke-virtual/range {v4 .. v9}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    const/4 v5, 0x1

    move-object/from16 v0, v75

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1136
    sget-object v5, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    move-object/from16 v0, v75

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 1137
    new-instance v5, Landroid/webkit/WebChromeClient;

    invoke-direct {v5}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1138
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    sget-object v6, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 1145
    .end local v38    # "gSDK_INT":I
    .end local v75    # "webSettings":Landroid/webkit/WebSettings;
    :goto_119
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->order_by:Ljava/lang/String;

    const-string/jumbo v6, "shuffle"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_131

    .line 1146
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 1168
    :cond_131
    const/16 v39, 0x0

    .local v39, "i":I
    :goto_133
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v39

    if-ge v0, v5, :cond_e2d

    .line 1169
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v0, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->caption:Ljava/lang/String;

    move-object/from16 v35, v0

    .line 1170
    .local v35, "field":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/bzbs/lib/survey/R$layout;->bz_survey_v2_list_row_answer:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 1172
    .local v10, "viewField":Landroid/view/View;
    sget v5, Lcom/bzbs/lib/survey/R$id;->layoutQuestion:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v56

    check-cast v56, Landroid/widget/RelativeLayout;

    .line 1173
    .local v56, "layoutQuestion":Landroid/widget/RelativeLayout;
    sget v5, Lcom/bzbs/lib/survey/R$id;->layoutQuestionwithBox:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v57

    check-cast v57, Landroid/widget/RelativeLayout;

    .line 1174
    .local v57, "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    sget v5, Lcom/bzbs/lib/survey/R$id;->layoutInfoChoice:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v49

    check-cast v49, Landroid/widget/RelativeLayout;

    .line 1175
    .local v49, "layoutInfoChoice":Landroid/widget/RelativeLayout;
    sget v5, Lcom/bzbs/lib/survey/R$id;->layoutInfoCheckbox:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v48

    check-cast v48, Landroid/widget/RelativeLayout;

    .line 1176
    .local v48, "layoutInfoCheckbox":Landroid/widget/RelativeLayout;
    sget v5, Lcom/bzbs/lib/survey/R$id;->layoutInfoInput:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v52

    check-cast v52, Landroid/widget/RelativeLayout;

    .line 1177
    .local v52, "layoutInfoInput":Landroid/widget/RelativeLayout;
    sget v5, Lcom/bzbs/lib/survey/R$id;->layoutDate:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v45

    check-cast v45, Landroid/widget/RelativeLayout;

    .line 1178
    .local v45, "layoutDate":Landroid/widget/RelativeLayout;
    sget v5, Lcom/bzbs/lib/survey/R$id;->layoutTime:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v60

    check-cast v60, Landroid/widget/RelativeLayout;

    .line 1179
    .local v60, "layoutTime":Landroid/widget/RelativeLayout;
    sget v5, Lcom/bzbs/lib/survey/R$id;->layoutScanCodeInput:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v59

    check-cast v59, Landroid/widget/RelativeLayout;

    .line 1180
    .local v59, "layoutScanCodeInput":Landroid/widget/RelativeLayout;
    sget v5, Lcom/bzbs/lib/survey/R$id;->layoutScanCodeContinuousInput:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v58

    check-cast v58, Landroid/widget/RelativeLayout;

    .line 1181
    .local v58, "layoutScanCodeContinuousInput":Landroid/widget/RelativeLayout;
    sget v5, Lcom/bzbs/lib/survey/R$id;->layoutImageInput:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v46

    check-cast v46, Landroid/widget/RelativeLayout;

    .line 1182
    .local v46, "layoutImageInput":Landroid/widget/RelativeLayout;
    sget v5, Lcom/bzbs/lib/survey/R$id;->layoutInfoTextArea:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v55

    check-cast v55, Landroid/widget/RelativeLayout;

    .line 1183
    .local v55, "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    sget v5, Lcom/bzbs/lib/survey/R$id;->layoutInfoRate:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v54

    check-cast v54, Landroid/widget/LinearLayout;

    .line 1184
    .local v54, "layoutInfoRate":Landroid/widget/LinearLayout;
    sget v5, Lcom/bzbs/lib/survey/R$id;->layoutInfoEmotion:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v51

    check-cast v51, Landroid/widget/LinearLayout;

    .line 1185
    .local v51, "layoutInfoEmotion":Landroid/widget/LinearLayout;
    sget v5, Lcom/bzbs/lib/survey/R$id;->layoutInfoLocation:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v53

    check-cast v53, Landroid/widget/LinearLayout;

    .line 1187
    .local v53, "layoutInfoLocation":Landroid/widget/LinearLayout;
    const/16 v5, 0x8

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1188
    const/16 v5, 0x8

    move-object/from16 v0, v57

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1189
    const/16 v5, 0x8

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1190
    const/16 v5, 0x8

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1191
    const/16 v5, 0x8

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1192
    const/16 v5, 0x8

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1193
    const/16 v5, 0x8

    move-object/from16 v0, v60

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1194
    const/16 v5, 0x8

    move-object/from16 v0, v59

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1195
    const/16 v5, 0x8

    move-object/from16 v0, v58

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1196
    const/16 v5, 0x8

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1197
    const/16 v5, 0x8

    move-object/from16 v0, v55

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1198
    const/16 v5, 0x8

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1199
    const/16 v5, 0x8

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1200
    const/16 v5, 0x8

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1201
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->type:Ljava/lang/String;

    const-string/jumbo v6, "scan_code"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_331

    .line 1202
    const/4 v5, 0x0

    move-object/from16 v0, v59

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1203
    sget v5, Lcom/bzbs/lib/survey/R$id;->btnGetCode:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 1204
    .local v20, "btnGetCode":Landroid/widget/TextView;
    sget v5, Lcom/bzbs/lib/survey/R$id;->etFieldInputCode:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/EditText;

    .line 1205
    .local v26, "etFieldInputCode":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1206
    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1207
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-boolean v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->can_edit:Z

    if-nez v5, :cond_281

    .line 1208
    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1210
    :cond_281
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->tvScanCode:Ljava/util/List;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1500(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1211
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1212
    new-instance v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v5, v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$3;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/EditText;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1168
    .end local v20    # "btnGetCode":Landroid/widget/TextView;
    .end local v26    # "etFieldInputCode":Landroid/widget/EditText;
    :cond_2a1
    :goto_2a1
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_133

    .line 1032
    .end local v4    # "wvTitle":Landroid/webkit/WebView;
    .end local v10    # "viewField":Landroid/view/View;
    .end local v35    # "field":Ljava/lang/String;
    .end local v39    # "i":I
    .end local v45    # "layoutDate":Landroid/widget/RelativeLayout;
    .end local v46    # "layoutImageInput":Landroid/widget/RelativeLayout;
    .end local v48    # "layoutInfoCheckbox":Landroid/widget/RelativeLayout;
    .end local v49    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .end local v51    # "layoutInfoEmotion":Landroid/widget/LinearLayout;
    .end local v52    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .end local v53    # "layoutInfoLocation":Landroid/widget/LinearLayout;
    .end local v54    # "layoutInfoRate":Landroid/widget/LinearLayout;
    .end local v55    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    .end local v56    # "layoutQuestion":Landroid/widget/RelativeLayout;
    .end local v57    # "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    .end local v58    # "layoutScanCodeContinuousInput":Landroid/widget/RelativeLayout;
    .end local v59    # "layoutScanCodeInput":Landroid/widget/RelativeLayout;
    .end local v60    # "layoutTime":Landroid/widget/RelativeLayout;
    .end local v70    # "tvTitle":Landroid/widget/TextView;
    :pswitch_2a5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gScreenWidth:I
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v5

    div-int/lit8 v5, v5, 0xa

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gScreenWidth:I
    invoke-static {v7}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v7

    div-int/lit8 v7, v7, 0xa

    const/4 v9, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6, v7, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_40

    .line 1035
    :pswitch_2c2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gScreenWidth:I
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v5

    div-int/lit8 v5, v5, 0xf

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gScreenWidth:I
    invoke-static {v7}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v7

    div-int/lit8 v7, v7, 0xf

    const/4 v9, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6, v7, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_40

    .line 1038
    :pswitch_2df
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gScreenWidth:I
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v5

    div-int/lit8 v5, v5, 0xf

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gScreenWidth:I
    invoke-static {v7}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v7

    div-int/lit8 v7, v7, 0xf

    const/4 v9, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6, v7, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_40

    .line 1041
    :pswitch_2fc
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gScreenWidth:I
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v5

    div-int/lit8 v5, v5, 0x8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gScreenWidth:I
    invoke-static {v7}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v7

    div-int/lit8 v7, v7, 0x8

    const/4 v9, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6, v7, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_40

    .line 1140
    .restart local v4    # "wvTitle":Landroid/webkit/WebView;
    .restart local v70    # "tvTitle":Landroid/widget/TextView;
    :cond_319
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->title:Ljava/lang/String;

    move-object/from16 v0, v70

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1141
    const/4 v5, 0x0

    move-object/from16 v0, v70

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1142
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setVisibility(I)V

    goto/16 :goto_119

    .line 1226
    .restart local v10    # "viewField":Landroid/view/View;
    .restart local v35    # "field":Ljava/lang/String;
    .restart local v39    # "i":I
    .restart local v45    # "layoutDate":Landroid/widget/RelativeLayout;
    .restart local v46    # "layoutImageInput":Landroid/widget/RelativeLayout;
    .restart local v48    # "layoutInfoCheckbox":Landroid/widget/RelativeLayout;
    .restart local v49    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .restart local v51    # "layoutInfoEmotion":Landroid/widget/LinearLayout;
    .restart local v52    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .restart local v53    # "layoutInfoLocation":Landroid/widget/LinearLayout;
    .restart local v54    # "layoutInfoRate":Landroid/widget/LinearLayout;
    .restart local v55    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    .restart local v56    # "layoutQuestion":Landroid/widget/RelativeLayout;
    .restart local v57    # "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    .restart local v58    # "layoutScanCodeContinuousInput":Landroid/widget/RelativeLayout;
    .restart local v59    # "layoutScanCodeInput":Landroid/widget/RelativeLayout;
    .restart local v60    # "layoutTime":Landroid/widget/RelativeLayout;
    :cond_331
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->type:Ljava/lang/String;

    const-string/jumbo v6, "scan_code_continuous"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_497

    .line 1227
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, v39

    if-ne v5, v0, :cond_2a1

    .line 1228
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->continueDataModels:Ljava/util/ArrayList;
    invoke-static {v5, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1702(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1229
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->dataContinues:Ljava/util/ArrayList;
    invoke-static {v5, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1802(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1230
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->dataContinues:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1800(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1231
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->dataContinues:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1800(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x1

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1233
    const/4 v5, 0x0

    move-object/from16 v0, v58

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1235
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/bzbs/lib/survey/R$layout;->bz_survey_continue:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v72

    .line 1236
    .local v72, "viewContinue":Landroid/view/View;
    sget v5, Lcom/bzbs/lib/survey/R$id;->layout_continue:I

    move-object/from16 v0, v72

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v63

    check-cast v63, Landroid/widget/LinearLayout;

    .line 1237
    .local v63, "llContinue":Landroid/widget/LinearLayout;
    sget v5, Lcom/bzbs/lib/survey/R$id;->layout_button_add_clear:I

    move-object/from16 v0, v72

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v61

    check-cast v61, Landroid/widget/LinearLayout;

    .line 1238
    .local v61, "llButtonAddClear":Landroid/widget/LinearLayout;
    sget v5, Lcom/bzbs/lib/survey/R$id;->layout_content_row:I

    move-object/from16 v0, v72

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v62

    check-cast v62, Landroid/widget/LinearLayout;

    .line 1241
    .local v62, "llContentRow":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v0, v62

    # invokes: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->setDataContinue(Landroid/widget/LinearLayout;)V
    invoke-static {v5, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1900(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Landroid/widget/LinearLayout;)V

    .line 1243
    sget v5, Lcom/bzbs/lib/survey/R$id;->btn_add:I

    move-object/from16 v0, v72

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    .line 1244
    .local v18, "btnAdd":Landroid/widget/Button;
    sget v5, Lcom/bzbs/lib/survey/R$id;->btn_clear:I

    move-object/from16 v0, v72

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    .line 1247
    .local v19, "btnClear":Landroid/widget/Button;
    const/16 v40, 0x0

    .local v40, "i1":I
    :goto_3d4
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v40

    if-ge v0, v5, :cond_46b

    .line 1248
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v0, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->caption:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 1250
    .local v36, "fieldHint":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/bzbs/lib/survey/R$layout;->bz_survey_qrcode:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v73

    .line 1251
    .local v73, "viewQRCode":Landroid/view/View;
    sget v5, Lcom/bzbs/lib/survey/R$id;->btnGetCode:I

    move-object/from16 v0, v73

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 1252
    .restart local v20    # "btnGetCode":Landroid/widget/TextView;
    sget v5, Lcom/bzbs/lib/survey/R$id;->etFieldInputCode:I

    move-object/from16 v0, v73

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/EditText;

    .line 1253
    .restart local v26    # "etFieldInputCode":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1254
    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1255
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-boolean v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->can_edit:Z

    if-nez v5, :cond_43f

    .line 1256
    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1258
    :cond_43f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->tvScanCode:Ljava/util/List;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1500(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1260
    move/from16 v37, v40

    .line 1261
    .local v37, "finalI":I
    new-instance v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    move/from16 v3, v37

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$4;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/EditText;Lcom/bzbs/lib/survey/bean/AdBuzzItem;I)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1278
    move-object/from16 v0, v63

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1247
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_3d4

    .line 1281
    .end local v20    # "btnGetCode":Landroid/widget/TextView;
    .end local v26    # "etFieldInputCode":Landroid/widget/EditText;
    .end local v36    # "fieldHint":Ljava/lang/String;
    .end local v37    # "finalI":I
    .end local v73    # "viewQRCode":Landroid/view/View;
    :cond_46b
    new-instance v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v62

    invoke-direct {v5, v0, v1, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$5;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1321
    new-instance v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v5, v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$6;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/LinearLayout;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1333
    move-object/from16 v0, v58

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1334
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2a1

    .line 1336
    .end local v18    # "btnAdd":Landroid/widget/Button;
    .end local v19    # "btnClear":Landroid/widget/Button;
    .end local v40    # "i1":I
    .end local v61    # "llButtonAddClear":Landroid/widget/LinearLayout;
    .end local v62    # "llContentRow":Landroid/widget/LinearLayout;
    .end local v63    # "llContinue":Landroid/widget/LinearLayout;
    .end local v72    # "viewContinue":Landroid/view/View;
    :cond_497
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->type:Ljava/lang/String;

    const-string/jumbo v6, "capture_image"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53b

    .line 1338
    const/4 v5, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1339
    sget v5, Lcom/bzbs/lib/survey/R$id;->imgCapture:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/ImageView;

    .line 1340
    .local v41, "imgCapture":Landroid/widget/ImageView;
    sget v5, Lcom/bzbs/lib/survey/R$id;->imgCaptureDelete:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/ImageView;

    .line 1341
    .local v42, "imgCaptureDelete":Landroid/widget/ImageView;
    sget v5, Lcom/bzbs/lib/survey/R$id;->etFieldInputImage:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 1342
    .local v28, "etFieldInputImage":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1343
    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1344
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->params:Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1345
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$2200(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1346
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgImageCancel:Ljava/util/List;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$2300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1347
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->tvImageUrl:Ljava/util/List;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$2400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1348
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1349
    new-instance v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v5, v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$7;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/ImageView;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1373
    new-instance v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$8;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v5, v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$8;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/ImageView;)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1397
    new-instance v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$9;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v5, v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$9;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/ImageView;)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2a1

    .line 1406
    .end local v28    # "etFieldInputImage":Landroid/widget/TextView;
    .end local v41    # "imgCapture":Landroid/widget/ImageView;
    .end local v42    # "imgCaptureDelete":Landroid/widget/ImageView;
    :cond_53b
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->type:Ljava/lang/String;

    const-string/jumbo v6, "gps"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b4

    .line 1408
    const/4 v5, 0x0

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1409
    sget v5, Lcom/bzbs/lib/survey/R$id;->btnGetLocation:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 1410
    .local v21, "btnGetLocation":Landroid/widget/TextView;
    sget v5, Lcom/bzbs/lib/survey/R$id;->etFieldInputLocation:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 1411
    .local v29, "etFieldInputLocation":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v0, v29

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->etLocation:Landroid/widget/TextView;
    invoke-static {v5, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$2502(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1413
    const-string/jumbo v5, ""

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1414
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gps:Lcom/bzbs/lib/survey/util/GPSTracker;
    invoke-static {v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$2600(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/util/GPSTracker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bzbs/lib/survey/util/GPSTracker;->getLatitude()D

    move-result-wide v6

    iput-wide v6, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->lat:D

    .line 1415
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gps:Lcom/bzbs/lib/survey/util/GPSTracker;
    invoke-static {v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$2600(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/util/GPSTracker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bzbs/lib/survey/util/GPSTracker;->getLongitude()D

    move-result-wide v6

    iput-wide v6, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->lng:D

    .line 1416
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1418
    new-instance v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v5, v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$10;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/TextView;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1455
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v39

    .line 1456
    goto/16 :goto_2a1

    .end local v21    # "btnGetLocation":Landroid/widget/TextView;
    .end local v29    # "etFieldInputLocation":Landroid/widget/TextView;
    :cond_5b4
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->type:Ljava/lang/String;

    const-string/jumbo v6, "info_choice_image"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b8

    .line 1457
    const/4 v5, 0x0

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1458
    sget v5, Lcom/bzbs/lib/survey/R$id;->tvFieldAnswer:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/CheckBox;

    .line 1459
    .local v23, "chkFieldChoice":Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1460
    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1461
    sget v5, Lcom/bzbs/lib/survey/R$id;->imgCheckBoxAnswer:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/ImageView;

    .line 1462
    .local v43, "imgCheckBoxAnswer":Landroid/widget/ImageView;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    if-eqz v5, :cond_6b0

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->url_image:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6b0

    .line 1463
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->isLanscape:Z
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$2900(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Z

    move-result v5

    if-eqz v5, :cond_647

    .line 1464
    new-instance v65, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gScreenWidth:I
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    const/4 v6, -0x2

    move-object/from16 v0, v65

    invoke-direct {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1465
    .local v65, "rp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/high16 v6, 0x420c0000

    invoke-virtual {v5, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->GetPixelFromDips(F)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v65

    invoke-virtual {v0, v5, v6, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1466
    move-object/from16 v0, v43

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1468
    .end local v65    # "rp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_647
    const/4 v5, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1469
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->url_image:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    sget v6, Lcom/bzbs/lib/survey/R$drawable;->t1_1:I

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableTypeRequest;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1473
    :goto_678
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1474
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1475
    .local v8, "index":Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 1476
    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1477
    new-instance v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v9, v16

    invoke-direct/range {v5 .. v10}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Lcom/bzbs/lib/survey/bean/AdBuzzItem;Ljava/lang/String;Landroid/widget/LinearLayout;Landroid/view/View;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2a1

    .line 1471
    .end local v8    # "index":Ljava/lang/String;
    :cond_6b0
    const/16 v5, 0x8

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_678

    .line 1575
    .end local v23    # "chkFieldChoice":Landroid/widget/CheckBox;
    .end local v43    # "imgCheckBoxAnswer":Landroid/widget/ImageView;
    :cond_6b8
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->type:Ljava/lang/String;

    const-string/jumbo v6, "info_choice_rate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_725

    .line 1577
    const/4 v5, 0x0

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1578
    sget v5, Lcom/bzbs/lib/survey/R$id;->etFieldInputRate:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 1579
    .local v30, "etFieldInputRate":Landroid/widget/TextView;
    sget v5, Lcom/bzbs/lib/survey/R$id;->etFieldInputRateValue:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 1580
    .local v31, "etFieldInputRateValue":Landroid/widget/TextView;
    sget v5, Lcom/bzbs/lib/survey/R$id;->sbvRate:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v66

    check-cast v66, Landroid/widget/SeekBar;

    .line 1581
    .local v66, "sbvRate":Landroid/widget/SeekBar;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, v66

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1582
    new-instance v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$12;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, p1

    move-object/from16 v3, v31

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$12;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/TextView;Lcom/bzbs/lib/survey/bean/AdBuzzItem;Landroid/widget/TextView;)V

    move-object/from16 v0, v66

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1601
    new-instance v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$13;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$13;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;)V

    move-object/from16 v0, v66

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1621
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1622
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v39

    .line 1623
    goto/16 :goto_2a1

    .end local v30    # "etFieldInputRate":Landroid/widget/TextView;
    .end local v31    # "etFieldInputRateValue":Landroid/widget/TextView;
    .end local v66    # "sbvRate":Landroid/widget/SeekBar;
    :cond_725
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->type:Ljava/lang/String;

    const-string/jumbo v6, "info_check_box"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_783

    .line 1624
    const/4 v5, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1625
    sget v5, Lcom/bzbs/lib/survey/R$id;->chkFieldCheckbox:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/CheckBox;

    .line 1626
    .local v22, "chkFieldCheckbox":Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1627
    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1628
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1630
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1632
    .restart local v8    # "index":Ljava/lang/String;
    new-instance v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$14;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v5, v0, v1, v8, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$14;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Lcom/bzbs/lib/survey/bean/AdBuzzItem;Ljava/lang/String;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2a1

    .line 1647
    .end local v8    # "index":Ljava/lang/String;
    .end local v22    # "chkFieldCheckbox":Landroid/widget/CheckBox;
    :cond_783
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->type:Ljava/lang/String;

    const-string/jumbo v6, "info_check_box_with_others"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_874

    .line 1649
    const/4 v5, 0x0

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1650
    sget v5, Lcom/bzbs/lib/survey/R$id;->layoutInfoChoiceEdt:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v50

    check-cast v50, Landroid/widget/RelativeLayout;

    .line 1651
    .local v50, "layoutInfoChoiceEdt":Landroid/widget/RelativeLayout;
    sget v5, Lcom/bzbs/lib/survey/R$id;->chkFieldChoice:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/CheckBox;

    .line 1652
    .restart local v23    # "chkFieldChoice":Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1653
    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1654
    sget v5, Lcom/bzbs/lib/survey/R$id;->etFieldInputChoice:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/EditText;

    .line 1655
    .local v25, "etFieldInputChoice":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1656
    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1657
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->max_length:I

    if-eqz v5, :cond_84b

    .line 1658
    const/4 v5, 0x2

    new-array v6, v5, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->filter:Landroid/text/InputFilter;

    aput-object v7, v6, v5

    const/4 v7, 0x1

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->max_length:I

    invoke-direct {v9, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v6, v7

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1663
    :goto_811
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1665
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1667
    .restart local v8    # "index":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, v39

    if-ne v0, v5, :cond_85b

    .line 1668
    const/4 v5, 0x0

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1669
    const/16 v5, 0x8

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_2a1

    .line 1660
    .end local v8    # "index":Ljava/lang/String;
    :cond_84b
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/text/InputFilter;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->filter:Landroid/text/InputFilter;

    aput-object v7, v5, v6

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_811

    .line 1671
    .restart local v8    # "index":Ljava/lang/String;
    :cond_85b
    const/16 v5, 0x8

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1672
    new-instance v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$15;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v5, v0, v1, v8, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$15;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Lcom/bzbs/lib/survey/bean/AdBuzzItem;Ljava/lang/String;Landroid/widget/EditText;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2a1

    .line 1683
    .end local v8    # "index":Ljava/lang/String;
    .end local v23    # "chkFieldChoice":Landroid/widget/CheckBox;
    .end local v25    # "etFieldInputChoice":Landroid/widget/EditText;
    .end local v50    # "layoutInfoChoiceEdt":Landroid/widget/RelativeLayout;
    :cond_874
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->type:Ljava/lang/String;

    const-string/jumbo v6, "info_choice"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_892

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->type:Ljava/lang/String;

    const-string/jumbo v6, "call_number"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_952

    .line 1684
    :cond_892
    const/4 v5, 0x0

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1685
    sget v5, Lcom/bzbs/lib/survey/R$id;->tvFieldAnswer:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/CheckBox;

    .line 1686
    .restart local v23    # "chkFieldChoice":Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1687
    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1688
    sget v5, Lcom/bzbs/lib/survey/R$id;->imgCheckBoxAnswer:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/ImageView;

    .line 1689
    .restart local v43    # "imgCheckBoxAnswer":Landroid/widget/ImageView;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    if-eqz v5, :cond_94a

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->url_image:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_94a

    .line 1690
    const/4 v5, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1691
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->url_image:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    sget v6, Lcom/bzbs/lib/survey/R$drawable;->t1_1:I

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableTypeRequest;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1695
    :goto_912
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1696
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1697
    .restart local v8    # "index":Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 1698
    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1699
    new-instance v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$16;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v9, v16

    invoke-direct/range {v5 .. v10}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$16;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Lcom/bzbs/lib/survey/bean/AdBuzzItem;Ljava/lang/String;Landroid/widget/LinearLayout;Landroid/view/View;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2a1

    .line 1693
    .end local v8    # "index":Ljava/lang/String;
    :cond_94a
    const/16 v5, 0x8

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_912

    .line 1718
    .end local v23    # "chkFieldChoice":Landroid/widget/CheckBox;
    .end local v43    # "imgCheckBoxAnswer":Landroid/widget/ImageView;
    :cond_952
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->type:Ljava/lang/String;

    const-string/jumbo v6, "repeat_survey"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a21

    .line 1719
    const/4 v5, 0x0

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1720
    sget v5, Lcom/bzbs/lib/survey/R$id;->tvFieldAnswer:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/CheckBox;

    .line 1721
    .restart local v23    # "chkFieldChoice":Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1722
    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1723
    sget v5, Lcom/bzbs/lib/survey/R$id;->imgCheckBoxAnswer:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/ImageView;

    .line 1724
    .restart local v43    # "imgCheckBoxAnswer":Landroid/widget/ImageView;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    if-eqz v5, :cond_a19

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->url_image:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a19

    .line 1726
    const/4 v5, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1727
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->url_image:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    sget v6, Lcom/bzbs/lib/survey/R$drawable;->t1_1:I

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableTypeRequest;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1731
    :goto_9e1
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1732
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1733
    .restart local v8    # "index":Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 1734
    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1735
    new-instance v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$17;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v9, v16

    invoke-direct/range {v5 .. v10}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$17;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Lcom/bzbs/lib/survey/bean/AdBuzzItem;Ljava/lang/String;Landroid/widget/LinearLayout;Landroid/view/View;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2a1

    .line 1729
    .end local v8    # "index":Ljava/lang/String;
    :cond_a19
    const/16 v5, 0x8

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9e1

    .line 1745
    .end local v23    # "chkFieldChoice":Landroid/widget/CheckBox;
    .end local v43    # "imgCheckBoxAnswer":Landroid/widget/ImageView;
    :cond_a21
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->type:Ljava/lang/String;

    const-string/jumbo v6, "info_choice_with_others"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b84

    .line 1747
    const/4 v5, 0x0

    move-object/from16 v0, v57

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1748
    sget v5, Lcom/bzbs/lib/survey/R$id;->layoutInfoAnswerEdt:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/RelativeLayout;

    .line 1749
    .local v47, "layoutInfoAnswerEdt":Landroid/widget/RelativeLayout;
    sget v5, Lcom/bzbs/lib/survey/R$id;->tvFieldAnswerBox:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v69

    check-cast v69, Landroid/widget/CheckBox;

    .line 1750
    .local v69, "tvFieldAnswerBox":Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v69

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1751
    move-object/from16 v0, v69

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1752
    sget v5, Lcom/bzbs/lib/survey/R$id;->etFieldInputAnswer:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/EditText;

    .line 1753
    .local v15, "etFieldInputAnswer":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1754
    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1755
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->max_length:I

    if-eqz v5, :cond_b4d

    .line 1756
    const/4 v5, 0x2

    new-array v6, v5, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->filter:Landroid/text/InputFilter;

    aput-object v7, v6, v5

    const/4 v7, 0x1

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->max_length:I

    invoke-direct {v9, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v6, v7

    invoke-virtual {v15, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1760
    :goto_aa9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1762
    .restart local v8    # "index":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, v39

    if-ne v0, v5, :cond_b5c

    .line 1763
    const/4 v5, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1764
    const/16 v5, 0x8

    move-object/from16 v0, v69

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1765
    new-instance v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$18;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v5, v0, v1, v10}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$18;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/LinearLayout;Landroid/view/View;)V

    invoke-virtual {v15, v5}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1793
    :goto_ae8
    sget v5, Lcom/bzbs/lib/survey/R$id;->imgCheckBoxAnswerBox:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v44

    check-cast v44, Landroid/widget/ImageView;

    .line 1794
    .local v44, "imgCheckBoxAnswerBox":Landroid/widget/ImageView;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    if-eqz v5, :cond_b7c

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->url_image:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b7c

    .line 1796
    const/4 v5, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1797
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->url_image:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    sget v6, Lcom/bzbs/lib/survey/R$drawable;->t1_1:I

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableTypeRequest;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    move-object/from16 v0, v44

    invoke-virtual {v5, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1801
    :goto_b46
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2a1

    .line 1758
    .end local v8    # "index":Ljava/lang/String;
    .end local v44    # "imgCheckBoxAnswerBox":Landroid/widget/ImageView;
    :cond_b4d
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/text/InputFilter;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->filter:Landroid/text/InputFilter;

    aput-object v7, v5, v6

    invoke-virtual {v15, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_aa9

    .line 1775
    .restart local v8    # "index":Ljava/lang/String;
    :cond_b5c
    const/16 v5, 0x8

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1776
    const/4 v5, 0x0

    move-object/from16 v0, v69

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1777
    new-instance v11, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object v14, v8

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Lcom/bzbs/lib/survey/bean/AdBuzzItem;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/view/View;)V

    move-object/from16 v0, v69

    invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_ae8

    .line 1799
    .restart local v44    # "imgCheckBoxAnswerBox":Landroid/widget/ImageView;
    :cond_b7c
    const/16 v5, 0x8

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b46

    .line 1802
    .end local v8    # "index":Ljava/lang/String;
    .end local v15    # "etFieldInputAnswer":Landroid/widget/EditText;
    .end local v44    # "imgCheckBoxAnswerBox":Landroid/widget/ImageView;
    .end local v47    # "layoutInfoAnswerEdt":Landroid/widget/RelativeLayout;
    .end local v69    # "tvFieldAnswerBox":Landroid/widget/CheckBox;
    :cond_b84
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->type:Ljava/lang/String;

    const-string/jumbo v6, "info_input"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d4a

    .line 1803
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const v6, 0x103006b

    invoke-virtual {v5, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->setTheme(I)V

    .line 1804
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->type:Ljava/lang/String;

    const-string/jumbo v6, "date"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bed

    .line 1805
    const/4 v5, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1806
    sget v5, Lcom/bzbs/lib/survey/R$id;->etFieldInputDate:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 1807
    .local v27, "etFieldInputDate":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1808
    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1809
    new-instance v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$20;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v5, v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$20;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/TextView;)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1890
    .end local v27    # "etFieldInputDate":Landroid/widget/TextView;
    :cond_be6
    :goto_be6
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2a1

    .line 1831
    :cond_bed
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->type:Ljava/lang/String;

    const-string/jumbo v6, "time"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c37

    .line 1832
    const/4 v5, 0x0

    move-object/from16 v0, v60

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1833
    sget v5, Lcom/bzbs/lib/survey/R$id;->etFieldInputTime:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 1834
    .local v32, "etFieldInputTime":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1835
    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1836
    new-instance v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$21;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v5, v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$21;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/TextView;)V

    move-object/from16 v0, v60

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_be6

    .line 1858
    .end local v32    # "etFieldInputTime":Landroid/widget/TextView;
    :cond_c37
    const/4 v5, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1859
    sget v5, Lcom/bzbs/lib/survey/R$id;->tvFieldTitle:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v68

    check-cast v68, Landroid/widget/TextView;

    .line 1860
    .local v68, "tvField":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v68

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1861
    move-object/from16 v0, v68

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1862
    sget v5, Lcom/bzbs/lib/survey/R$id;->etFieldInput:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/EditText;

    .line 1866
    .local v24, "etFieldInput":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1867
    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1868
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/bzbs/lib/survey/R$color;->hint_default:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1869
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->max_length:I

    if-eqz v5, :cond_cf3

    .line 1870
    const/4 v5, 0x2

    new-array v6, v5, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->filter:Landroid/text/InputFilter;

    aput-object v7, v6, v5

    const/4 v7, 0x1

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->max_length:I

    invoke-direct {v9, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v6, v7

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1874
    :goto_cc1
    if-eqz v35, :cond_be6

    const-string/jumbo v5, ""

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_be6

    .line 1875
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v0, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->type:Ljava/lang/String;

    move-object/from16 v71, v0

    .line 1876
    .local v71, "type":Ljava/lang/String;
    const-string/jumbo v5, "number"

    move-object/from16 v0, v71

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d03

    .line 1877
    const/4 v5, 0x3

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_be6

    .line 1872
    .end local v71    # "type":Ljava/lang/String;
    :cond_cf3
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/text/InputFilter;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->filter:Landroid/text/InputFilter;

    aput-object v7, v5, v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_cc1

    .line 1878
    .restart local v71    # "type":Ljava/lang/String;
    :cond_d03
    const-string/jumbo v5, "email"

    move-object/from16 v0, v71

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d17

    .line 1879
    const/16 v5, 0x20

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_be6

    .line 1880
    :cond_d17
    const-string/jumbo v5, "mobile"

    move-object/from16 v0, v71

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_be6

    .line 1881
    const/16 v64, 0xa

    .line 1882
    .local v64, "maxLength":I
    const/4 v5, 0x1

    new-array v0, v5, [Landroid/text/InputFilter;

    move-object/from16 v34, v0

    .line 1883
    .local v34, "fArray":[Landroid/text/InputFilter;
    const/4 v5, 0x0

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    move/from16 v0, v64

    invoke-direct {v6, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v34, v5

    .line 1884
    const/4 v5, 0x3

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 1885
    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1886
    const-string/jumbo v5, "mobile"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_be6

    .line 1891
    .end local v24    # "etFieldInput":Landroid/widget/EditText;
    .end local v34    # "fArray":[Landroid/text/InputFilter;
    .end local v64    # "maxLength":I
    .end local v68    # "tvField":Landroid/widget/TextView;
    .end local v71    # "type":Ljava/lang/String;
    :cond_d4a
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->type:Ljava/lang/String;

    const-string/jumbo v6, "info_text_area"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_dd8

    .line 1892
    const/4 v5, 0x0

    move-object/from16 v0, v55

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1893
    sget v5, Lcom/bzbs/lib/survey/R$id;->etFieldTextArea:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/EditText;

    .line 1894
    .local v33, "etFieldTextArea":Landroid/widget/EditText;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->max_length:I

    if-eqz v5, :cond_dc8

    .line 1895
    const/4 v5, 0x2

    new-array v6, v5, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->filter:Landroid/text/InputFilter;

    aput-object v7, v6, v5

    const/4 v7, 0x1

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->max_length:I

    invoke-direct {v9, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v6, v7

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1899
    :goto_da0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1900
    if-eqz v35, :cond_dc1

    const-string/jumbo v5, ""

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_dc1

    .line 1901
    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1903
    :cond_dc1
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2a1

    .line 1897
    :cond_dc8
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/text/InputFilter;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->filter:Landroid/text/InputFilter;

    aput-object v7, v5, v6

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_da0

    .line 1905
    .end local v33    # "etFieldTextArea":Landroid/widget/EditText;
    :cond_dd8
    const/4 v5, 0x0

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1906
    sget v5, Lcom/bzbs/lib/survey/R$id;->tvFieldAnswer:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/CheckBox;

    .line 1907
    .restart local v23    # "chkFieldChoice":Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1908
    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1909
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1910
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1911
    .restart local v8    # "index":Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1912
    new-instance v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$22;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v9, v16

    invoke-direct/range {v5 .. v10}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$22;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Lcom/bzbs/lib/survey/bean/AdBuzzItem;Ljava/lang/String;Landroid/widget/LinearLayout;Landroid/view/View;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2a1

    .line 1926
    .end local v8    # "index":Ljava/lang/String;
    .end local v10    # "viewField":Landroid/view/View;
    .end local v23    # "chkFieldChoice":Landroid/widget/CheckBox;
    .end local v35    # "field":Ljava/lang/String;
    .end local v45    # "layoutDate":Landroid/widget/RelativeLayout;
    .end local v46    # "layoutImageInput":Landroid/widget/RelativeLayout;
    .end local v48    # "layoutInfoCheckbox":Landroid/widget/RelativeLayout;
    .end local v49    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .end local v51    # "layoutInfoEmotion":Landroid/widget/LinearLayout;
    .end local v52    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .end local v53    # "layoutInfoLocation":Landroid/widget/LinearLayout;
    .end local v54    # "layoutInfoRate":Landroid/widget/LinearLayout;
    .end local v55    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    .end local v56    # "layoutQuestion":Landroid/widget/RelativeLayout;
    .end local v57    # "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    .end local v58    # "layoutScanCodeContinuousInput":Landroid/widget/RelativeLayout;
    .end local v59    # "layoutScanCodeInput":Landroid/widget/RelativeLayout;
    .end local v60    # "layoutTime":Landroid/widget/RelativeLayout;
    :cond_e2d
    return-object v74

    .line 1030
    :pswitch_data_e2e
    .packed-switch 0x1
        :pswitch_2df
        :pswitch_2c2
        :pswitch_2a5
        :pswitch_2fc
    .end packed-switch
.end method

.method private initialViewVideo(Lcom/bzbs/lib/survey/bean/AdBuzzItem;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .param p1, "adBuzzItem"    # Lcom/bzbs/lib/survey/bean/AdBuzzItem;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/high16 v9, 0x42b40000

    const/high16 v8, 0x41f00000

    const/4 v7, 0x1

    .line 2986
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iput-boolean v7, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->isVideo:Z

    .line 2987
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/bzbs/lib/survey/R$layout;->bz_campaign_detail_ad_item_pager_video:I

    invoke-virtual {v5, v6, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gVideoLayout:Landroid/view/View;

    .line 2988
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v4, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gVideoLayout:Landroid/view/View;

    iput-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->gViewRoot:Landroid/view/View;

    .line 2989
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgNext:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1100(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2990
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgBack:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1200(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2991
    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v4, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gVideoLayout:Landroid/view/View;

    sget v6, Lcom/bzbs/lib/survey/R$id;->videoSurface:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceView;

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->videoSurface:Landroid/view/SurfaceView;
    invoke-static {v5, v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$3802(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Landroid/view/SurfaceView;)Landroid/view/SurfaceView;

    .line 2992
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v4, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gVideoLayout:Landroid/view/View;

    sget v5, Lcom/bzbs/lib/survey/R$id;->videoSurfaceContainer:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 2993
    .local v3, "videoSurfaceContainer":Landroid/widget/FrameLayout;
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gScreenWidth:I
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gScreenHeight:I
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$3900(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v5

    if-le v4, v5, :cond_148

    .line 2994
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gScreenHeight:I
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$3900(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v5, v9}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->GetPixelFromDips(F)I

    move-result v5

    sub-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x10

    div-int/lit8 v4, v4, 0x9

    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gScreenHeight:I
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$3900(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v5

    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v6, v9}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->GetPixelFromDips(F)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2995
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3001
    :goto_82
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->videoSurface:Landroid/view/SurfaceView;
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$3800(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/view/SurfaceView;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 3002
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->videoSurface:Landroid/view/SurfaceView;
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$3800(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/view/SurfaceView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    .line 3003
    .local v2, "videoHolder":Landroid/view/SurfaceHolder;
    invoke-interface {v2, v7}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 3004
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-interface {v2, v4}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 3005
    invoke-interface {v2, v11}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 3007
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;
    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$4002(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 3008
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    new-instance v5, Lcom/bzbs/lib/survey/control/VideoControllerView;

    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {v5, v6}, Lcom/bzbs/lib/survey/control/VideoControllerView;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->controller:Lcom/bzbs/lib/survey/control/VideoControllerView;
    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$4102(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Lcom/bzbs/lib/survey/control/VideoControllerView;)Lcom/bzbs/lib/survey/control/VideoControllerView;

    .line 3009
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->controller:Lcom/bzbs/lib/survey/control/VideoControllerView;
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$4100(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/VideoControllerView;

    move-result-object v4

    new-instance v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$27;

    invoke-direct {v5, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$27;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;)V

    invoke-virtual {v4, v5}, Lcom/bzbs/lib/survey/control/VideoControllerView;->setOnRqExitListener(Lcom/bzbs/lib/survey/control/VideoControllerView$OnRqExitListener;)V

    .line 3017
    :try_start_c4
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$4000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/media/MediaPlayer;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 3018
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$4000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/media/MediaPlayer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 3019
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$4200(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uri vdo "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;
    invoke-static {v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v6

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra_video_download_uri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3020
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$4000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/media/MediaPlayer;

    move-result-object v4

    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;
    invoke-static {v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v6

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra_video_download_uri:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3021
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$4000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/media/MediaPlayer;

    move-result-object v4

    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 3022
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$4000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/media/MediaPlayer;

    move-result-object v4

    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 3023
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$4000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/media/MediaPlayer;

    move-result-object v4

    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_135
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c4 .. :try_end_135} :catch_170
    .catch Ljava/lang/SecurityException; {:try_start_c4 .. :try_end_135} :catch_17d
    .catch Ljava/lang/IllegalStateException; {:try_start_c4 .. :try_end_135} :catch_18a
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_135} :catch_197

    .line 3038
    :goto_135
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v4

    new-instance v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28;

    invoke-direct {v5, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;)V

    invoke-virtual {v4, v5}, Lcom/bzbs/lib/survey/control/CustomPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 3105
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v4, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gVideoLayout:Landroid/view/View;

    return-object v4

    .line 2997
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "videoHolder":Landroid/view/SurfaceHolder;
    :cond_148
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gScreenWidth:I
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v5, v8}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->GetPixelFromDips(F)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gScreenWidth:I
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v5

    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v6, v8}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->GetPixelFromDips(F)I

    move-result v6

    sub-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x9

    div-int/lit8 v5, v5, 0x10

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2998
    .restart local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_82

    .line 3024
    .restart local v2    # "videoHolder":Landroid/view/SurfaceHolder;
    :catch_170
    move-exception v0

    .line 3025
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v5, "IllegalArgumentException"

    # invokes: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$700(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    .line 3026
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_135

    .line 3027
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_17d
    move-exception v0

    .line 3028
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v5, "SecurityException"

    # invokes: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$700(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    .line 3029
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_135

    .line 3030
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_18a
    move-exception v0

    .line 3031
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v5, "IllegalStateException"

    # invokes: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$700(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    .line 3032
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_135

    .line 3033
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_197
    move-exception v0

    .line 3034
    .local v0, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v5, "IOException"

    # invokes: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$700(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    .line 3035
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_135
.end method

.method private resetSurvey(Landroid/view/View;Landroid/view/View;)V
    .registers 20
    .param p1, "pViewRootSurvey"    # Landroid/view/View;
    .param p2, "pViewField"    # Landroid/view/View;

    .prologue
    .line 2722
    sget v15, Lcom/bzbs/lib/survey/R$id;->layoutRootSurvey:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 2723
    .local v12, "layoutRootSurvey":Landroid/widget/LinearLayout;
    if-eqz v12, :cond_cd

    .line 2724
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_d
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v15

    if-ge v6, v15, :cond_cd

    .line 2725
    invoke-virtual {v12, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 2726
    .local v14, "view_field_row":Landroid/view/View;
    move-object/from16 v0, p2

    if-eq v14, v0, :cond_c9

    .line 2727
    sget v15, Lcom/bzbs/lib/survey/R$id;->layoutQuestion:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 2728
    .local v10, "layoutQuestion":Landroid/widget/RelativeLayout;
    if-eqz v10, :cond_c9

    .line 2729
    sget v15, Lcom/bzbs/lib/survey/R$id;->layoutInfoChoice:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 2730
    .local v7, "layoutInfoChoice":Landroid/widget/RelativeLayout;
    sget v15, Lcom/bzbs/lib/survey/R$id;->layoutInfoInput:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 2731
    .local v8, "layoutInfoInput":Landroid/widget/RelativeLayout;
    sget v15, Lcom/bzbs/lib/survey/R$id;->layoutInfoTextArea:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 2732
    .local v9, "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    sget v15, Lcom/bzbs/lib/survey/R$id;->layoutQuestionwithBox:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 2734
    .local v11, "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v15

    if-nez v15, :cond_57

    .line 2735
    sget v15, Lcom/bzbs/lib/survey/R$id;->tvFieldAnswer:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 2736
    .local v1, "chkFieldChoice":Landroid/widget/CheckBox;
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2738
    .end local v1    # "chkFieldChoice":Landroid/widget/CheckBox;
    :cond_57
    invoke-virtual {v11}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v15

    if-nez v15, :cond_8f

    .line 2739
    sget v15, Lcom/bzbs/lib/survey/R$id;->tvFieldAnswerBox:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    .line 2740
    .local v13, "tvFieldAnswerBox":Landroid/widget/CheckBox;
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2741
    sget v15, Lcom/bzbs/lib/survey/R$id;->etFieldInputAnswer:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 2742
    .local v3, "etFieldInputAnswer":Landroid/widget/EditText;
    const-string/jumbo v15, ""

    invoke-virtual {v3, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2743
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v16, "input_method"

    invoke-virtual/range {v15 .. v16}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    .line 2744
    .local v5, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2746
    .end local v3    # "etFieldInputAnswer":Landroid/widget/EditText;
    .end local v5    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v13    # "tvFieldAnswerBox":Landroid/widget/CheckBox;
    :cond_8f
    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v15

    if-nez v15, :cond_a1

    .line 2747
    sget v15, Lcom/bzbs/lib/survey/R$id;->chkFieldChoice:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 2748
    .restart local v1    # "chkFieldChoice":Landroid/widget/CheckBox;
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2750
    .end local v1    # "chkFieldChoice":Landroid/widget/CheckBox;
    :cond_a1
    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v15

    if-nez v15, :cond_b5

    .line 2751
    sget v15, Lcom/bzbs/lib/survey/R$id;->etFieldInput:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 2752
    .local v2, "etFieldInput":Landroid/widget/EditText;
    const-string/jumbo v15, ""

    invoke-virtual {v2, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2754
    .end local v2    # "etFieldInput":Landroid/widget/EditText;
    :cond_b5
    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v15

    if-nez v15, :cond_c9

    .line 2755
    sget v15, Lcom/bzbs/lib/survey/R$id;->etFieldTextArea:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 2756
    .local v4, "etFieldTextArea":Landroid/widget/EditText;
    const-string/jumbo v15, ""

    invoke-virtual {v4, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2724
    .end local v4    # "etFieldTextArea":Landroid/widget/EditText;
    .end local v7    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .end local v8    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .end local v9    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    .end local v10    # "layoutQuestion":Landroid/widget/RelativeLayout;
    .end local v11    # "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    :cond_c9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_d

    .line 2762
    .end local v6    # "j":I
    .end local v14    # "view_field_row":Landroid/view/View;
    :cond_cd
    return-void
.end method


# virtual methods
.method public actionBackClear(I)Ljava/lang/String;
    .registers 43
    .param p1, "position"    # I

    .prologue
    .line 2618
    const-string/jumbo v4, ""

    .line 2621
    .local v4, "alertText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v39, v0

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;
    invoke-static/range {v39 .. v39}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    .line 2622
    .local v38, "view_pager_survey":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v40

    sub-int v40, v40, p1

    invoke-virtual/range {v39 .. v40}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    .line 2624
    .local v3, "adBuzzItem":Lcom/bzbs/lib/survey/bean/AdBuzzItem;
    sget v39, Lcom/bzbs/lib/survey/R$id;->layoutRootSurvey:I

    invoke-virtual/range {v38 .. v39}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/LinearLayout;

    .line 2625
    .local v31, "layoutRootSurvey":Landroid/widget/LinearLayout;
    if-eqz v31, :cond_38e

    .line 2627
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_39
    invoke-virtual/range {v31 .. v31}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v39

    move/from16 v0, v19

    move/from16 v1, v39

    if-ge v0, v1, :cond_38e

    .line 2628
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v36

    .line 2629
    .local v36, "view_field_row":Landroid/view/View;
    sget v39, Lcom/bzbs/lib/survey/R$id;->layoutQuestion:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/RelativeLayout;

    .line 2630
    .local v29, "layoutQuestion":Landroid/widget/RelativeLayout;
    if-eqz v29, :cond_103

    .line 2631
    sget v39, Lcom/bzbs/lib/survey/R$id;->layoutInfoChoice:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/RelativeLayout;

    .line 2632
    .local v23, "layoutInfoChoice":Landroid/widget/RelativeLayout;
    sget v39, Lcom/bzbs/lib/survey/R$id;->layoutInfoCheckbox:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout;

    .line 2633
    .local v22, "layoutInfoCheckbox":Landroid/widget/RelativeLayout;
    sget v39, Lcom/bzbs/lib/survey/R$id;->layoutInfoInput:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/RelativeLayout;

    .line 2634
    .local v25, "layoutInfoInput":Landroid/widget/RelativeLayout;
    sget v39, Lcom/bzbs/lib/survey/R$id;->layoutDate:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout;

    .line 2635
    .local v20, "layoutDate":Landroid/widget/RelativeLayout;
    sget v39, Lcom/bzbs/lib/survey/R$id;->layoutTime:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/RelativeLayout;

    .line 2636
    .local v33, "layoutTime":Landroid/widget/RelativeLayout;
    sget v39, Lcom/bzbs/lib/survey/R$id;->layoutInfoTextArea:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/RelativeLayout;

    .line 2637
    .local v28, "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    sget v39, Lcom/bzbs/lib/survey/R$id;->layoutQuestionwithBox:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/RelativeLayout;

    .line 2638
    .local v30, "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    sget v39, Lcom/bzbs/lib/survey/R$id;->layoutScanCodeInput:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/RelativeLayout;

    .line 2639
    .local v32, "layoutScanCodeInput":Landroid/widget/RelativeLayout;
    sget v39, Lcom/bzbs/lib/survey/R$id;->layoutImageInput:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/RelativeLayout;

    .line 2640
    .local v21, "layoutImageInput":Landroid/widget/RelativeLayout;
    sget v39, Lcom/bzbs/lib/survey/R$id;->layoutInfoRate:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/LinearLayout;

    .line 2641
    .local v27, "layoutInfoRate":Landroid/widget/LinearLayout;
    sget v39, Lcom/bzbs/lib/survey/R$id;->layoutInfoEmotion:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 2642
    .local v24, "layoutInfoEmotion":Landroid/widget/LinearLayout;
    sget v39, Lcom/bzbs/lib/survey/R$id;->layoutInfoLocation:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    .line 2643
    .local v26, "layoutInfoLocation":Landroid/widget/LinearLayout;
    invoke-virtual/range {v32 .. v32}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v39

    if-nez v39, :cond_107

    .line 2644
    sget v39, Lcom/bzbs/lib/survey/R$id;->etFieldInputCode:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 2645
    .local v10, "etFieldInputCode":Landroid/widget/TextView;
    const-string/jumbo v39, ""

    move-object/from16 v0, v39

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2627
    .end local v10    # "etFieldInputCode":Landroid/widget/TextView;
    .end local v20    # "layoutDate":Landroid/widget/RelativeLayout;
    .end local v21    # "layoutImageInput":Landroid/widget/RelativeLayout;
    .end local v22    # "layoutInfoCheckbox":Landroid/widget/RelativeLayout;
    .end local v23    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .end local v24    # "layoutInfoEmotion":Landroid/widget/LinearLayout;
    .end local v25    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .end local v26    # "layoutInfoLocation":Landroid/widget/LinearLayout;
    .end local v27    # "layoutInfoRate":Landroid/widget/LinearLayout;
    .end local v28    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    .end local v30    # "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    .end local v32    # "layoutScanCodeInput":Landroid/widget/RelativeLayout;
    .end local v33    # "layoutTime":Landroid/widget/RelativeLayout;
    :cond_103
    :goto_103
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_39

    .line 2646
    .restart local v20    # "layoutDate":Landroid/widget/RelativeLayout;
    .restart local v21    # "layoutImageInput":Landroid/widget/RelativeLayout;
    .restart local v22    # "layoutInfoCheckbox":Landroid/widget/RelativeLayout;
    .restart local v23    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .restart local v24    # "layoutInfoEmotion":Landroid/widget/LinearLayout;
    .restart local v25    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .restart local v26    # "layoutInfoLocation":Landroid/widget/LinearLayout;
    .restart local v27    # "layoutInfoRate":Landroid/widget/LinearLayout;
    .restart local v28    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    .restart local v30    # "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    .restart local v32    # "layoutScanCodeInput":Landroid/widget/RelativeLayout;
    .restart local v33    # "layoutTime":Landroid/widget/RelativeLayout;
    :cond_107
    invoke-virtual/range {v21 .. v21}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v39

    if-nez v39, :cond_156

    .line 2647
    sget v39, Lcom/bzbs/lib/survey/R$id;->imgCapture:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 2648
    .local v16, "imgCapture":Landroid/widget/ImageView;
    sget v39, Lcom/bzbs/lib/survey/R$id;->imgCaptureDelete:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 2649
    .local v17, "imgCaptureDelete":Landroid/widget/ImageView;
    sget v39, Lcom/bzbs/lib/survey/R$id;->etFieldInputImage:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 2651
    .local v11, "etFieldInputImage":Landroid/widget/TextView;
    const/16 v39, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2652
    const/16 v39, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2653
    const-string/jumbo v39, ""

    move-object/from16 v0, v39

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2654
    const v39, 0x106000d

    move-object/from16 v0, v16

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_103

    .line 2655
    .end local v11    # "etFieldInputImage":Landroid/widget/TextView;
    .end local v16    # "imgCapture":Landroid/widget/ImageView;
    .end local v17    # "imgCaptureDelete":Landroid/widget/ImageView;
    :cond_156
    invoke-virtual/range {v27 .. v27}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v39

    if-nez v39, :cond_187

    .line 2656
    sget v39, Lcom/bzbs/lib/survey/R$id;->sbvRate:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/SeekBar;

    .line 2657
    .local v34, "sbvRate":Landroid/widget/SeekBar;
    sget v39, Lcom/bzbs/lib/survey/R$id;->etFieldInputRate:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 2658
    .local v14, "etFieldInputRate":Landroid/widget/TextView;
    const/16 v39, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2659
    const-string/jumbo v39, ""

    move-object/from16 v0, v39

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_103

    .line 2660
    .end local v14    # "etFieldInputRate":Landroid/widget/TextView;
    .end local v34    # "sbvRate":Landroid/widget/SeekBar;
    :cond_187
    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v39

    if-nez v39, :cond_1b8

    .line 2661
    sget v39, Lcom/bzbs/lib/survey/R$id;->etFieldInputMode:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 2662
    .local v13, "etFieldInputMode":Landroid/widget/TextView;
    sget v39, Lcom/bzbs/lib/survey/R$id;->view_pager:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/support/v4/view/ViewPager;

    .line 2663
    .local v37, "view_pager":Landroid/support/v4/view/ViewPager;
    const/16 v39, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2664
    const-string/jumbo v39, ""

    move-object/from16 v0, v39

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_103

    .line 2665
    .end local v13    # "etFieldInputMode":Landroid/widget/TextView;
    .end local v37    # "view_pager":Landroid/support/v4/view/ViewPager;
    :cond_1b8
    invoke-virtual/range {v26 .. v26}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v39

    if-nez v39, :cond_1d4

    .line 2666
    sget v39, Lcom/bzbs/lib/survey/R$id;->etFieldInputLocation:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 2667
    .local v12, "etFieldInputLocation":Landroid/widget/TextView;
    const-string/jumbo v39, ""

    move-object/from16 v0, v39

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_103

    .line 2668
    .end local v12    # "etFieldInputLocation":Landroid/widget/TextView;
    :cond_1d4
    invoke-virtual/range {v29 .. v29}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v39

    if-nez v39, :cond_1ef

    .line 2669
    sget v39, Lcom/bzbs/lib/survey/R$id;->tvFieldAnswer:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 2670
    .local v6, "chkFieldChoice":Landroid/widget/CheckBox;
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_103

    .line 2671
    .end local v6    # "chkFieldChoice":Landroid/widget/CheckBox;
    :cond_1ef
    invoke-virtual/range {v22 .. v22}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v39

    if-nez v39, :cond_20a

    .line 2672
    sget v39, Lcom/bzbs/lib/survey/R$id;->chkFieldCheckbox:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 2673
    .local v5, "chkFieldCheckbox":Landroid/widget/CheckBox;
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_103

    .line 2674
    .end local v5    # "chkFieldCheckbox":Landroid/widget/CheckBox;
    :cond_20a
    invoke-virtual/range {v30 .. v30}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v39

    if-nez v39, :cond_259

    .line 2675
    sget v39, Lcom/bzbs/lib/survey/R$id;->tvFieldAnswerBox:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/CheckBox;

    .line 2676
    .local v35, "tvFieldAnswerBox":Landroid/widget/CheckBox;
    sget v39, Lcom/bzbs/lib/survey/R$id;->etFieldInputAnswer:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 2677
    .local v8, "etFieldInputAnswer":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v39, v0

    const-string/jumbo v40, "input_method"

    invoke-virtual/range {v39 .. v40}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodManager;

    .line 2678
    .local v18, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v8}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2679
    const/16 v39, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2680
    const-string/jumbo v39, ""

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_103

    .line 2681
    .end local v8    # "etFieldInputAnswer":Landroid/widget/EditText;
    .end local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v35    # "tvFieldAnswerBox":Landroid/widget/CheckBox;
    :cond_259
    invoke-virtual/range {v23 .. v23}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v39

    if-nez v39, :cond_2a6

    .line 2682
    sget v39, Lcom/bzbs/lib/survey/R$id;->chkFieldChoice:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 2683
    .restart local v6    # "chkFieldChoice":Landroid/widget/CheckBox;
    sget v39, Lcom/bzbs/lib/survey/R$id;->etFieldInputChoice:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 2684
    .local v9, "etFieldInputChoice":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v39, v0

    const-string/jumbo v40, "input_method"

    invoke-virtual/range {v39 .. v40}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodManager;

    .line 2685
    .restart local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v9}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2686
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2687
    const-string/jumbo v39, ""

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_103

    .line 2689
    .end local v6    # "chkFieldChoice":Landroid/widget/CheckBox;
    .end local v9    # "etFieldInputChoice":Landroid/widget/EditText;
    .end local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2a6
    invoke-virtual/range {v25 .. v25}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v39

    if-nez v39, :cond_2e0

    .line 2690
    sget v39, Lcom/bzbs/lib/survey/R$id;->etFieldInput:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 2691
    .local v7, "etFieldInput":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v39, v0

    const-string/jumbo v40, "input_method"

    invoke-virtual/range {v39 .. v40}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodManager;

    .line 2692
    .restart local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v7}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2693
    const-string/jumbo v39, ""

    move-object/from16 v0, v39

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_103

    .line 2695
    .end local v7    # "etFieldInput":Landroid/widget/EditText;
    .end local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2e0
    invoke-virtual/range {v33 .. v33}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v39

    if-nez v39, :cond_31a

    .line 2696
    sget v39, Lcom/bzbs/lib/survey/R$id;->etFieldInputTime:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 2697
    .local v7, "etFieldInput":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v39, v0

    const-string/jumbo v40, "input_method"

    invoke-virtual/range {v39 .. v40}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodManager;

    .line 2698
    .restart local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v7}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2699
    const-string/jumbo v39, ""

    move-object/from16 v0, v39

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_103

    .line 2700
    .end local v7    # "etFieldInput":Landroid/widget/TextView;
    .end local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_31a
    invoke-virtual/range {v20 .. v20}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v39

    if-nez v39, :cond_354

    .line 2701
    sget v39, Lcom/bzbs/lib/survey/R$id;->etFieldInputDate:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 2702
    .restart local v7    # "etFieldInput":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v39, v0

    const-string/jumbo v40, "input_method"

    invoke-virtual/range {v39 .. v40}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodManager;

    .line 2703
    .restart local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v7}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2704
    const-string/jumbo v39, ""

    move-object/from16 v0, v39

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_103

    .line 2705
    .end local v7    # "etFieldInput":Landroid/widget/TextView;
    .end local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_354
    invoke-virtual/range {v28 .. v28}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v39

    if-nez v39, :cond_103

    .line 2706
    sget v39, Lcom/bzbs/lib/survey/R$id;->etFieldTextArea:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/EditText;

    .line 2707
    .local v15, "etFieldTextArea":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v39, v0

    const-string/jumbo v40, "input_method"

    invoke-virtual/range {v39 .. v40}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodManager;

    .line 2708
    .restart local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v15}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2709
    const-string/jumbo v39, ""

    move-object/from16 v0, v39

    invoke-virtual {v15, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_103

    .line 2717
    .end local v15    # "etFieldTextArea":Landroid/widget/EditText;
    .end local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v19    # "j":I
    .end local v20    # "layoutDate":Landroid/widget/RelativeLayout;
    .end local v21    # "layoutImageInput":Landroid/widget/RelativeLayout;
    .end local v22    # "layoutInfoCheckbox":Landroid/widget/RelativeLayout;
    .end local v23    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .end local v24    # "layoutInfoEmotion":Landroid/widget/LinearLayout;
    .end local v25    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .end local v26    # "layoutInfoLocation":Landroid/widget/LinearLayout;
    .end local v27    # "layoutInfoRate":Landroid/widget/LinearLayout;
    .end local v28    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    .end local v29    # "layoutQuestion":Landroid/widget/RelativeLayout;
    .end local v30    # "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    .end local v32    # "layoutScanCodeInput":Landroid/widget/RelativeLayout;
    .end local v33    # "layoutTime":Landroid/widget/RelativeLayout;
    .end local v36    # "view_field_row":Landroid/view/View;
    :cond_38e
    return-object v4
.end method

.method public actionSubmit()V
    .registers 76

    .prologue
    .line 1985
    const/16 v25, 0x0

    .line 1986
    .local v25, "isCheck":Z
    const/16 v46, 0x0

    .line 1987
    .local v46, "passSurvey":Z
    const/16 v19, 0x0

    .line 1988
    .local v19, "haveAnswer":Z
    const-string/jumbo v4, ""

    .line 1989
    .local v4, "checkbox_input_text":Ljava/lang/String;
    const-string/jumbo v22, "["

    .line 1990
    .local v22, "info1":Ljava/lang/String;
    const-string/jumbo v59, ""

    .line 1991
    .local v59, "str_comma":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1992
    .local v17, "forIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v69, v0

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;
    invoke-static/range {v69 .. v69}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildCount()I

    move-result v69

    add-int/lit8 v21, v69, -0x1

    .local v21, "i":I
    :goto_21
    if-lez v21, :cond_c82

    .line 1993
    add-int/lit8 v17, v17, 0x1

    .line 2000
    const/16 v25, 0x0

    .line 2001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v69, v0

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;
    invoke-static/range {v69 .. v69}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildAt(I)Landroid/view/View;

    move-result-object v68

    .line 2002
    .local v68, "view_pager_survey":Landroid/view/View;
    sget v69, Lcom/bzbs/lib/survey/R$id;->layoutRootSurvey:I

    invoke-virtual/range {v68 .. v69}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/LinearLayout;

    .line 2003
    .local v40, "layoutRootSurvey":Landroid/widget/LinearLayout;
    if-eqz v40, :cond_bee

    .line 2004
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "{check_box:["

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    .line 2005
    .local v56, "str_checkbox_prefix":Ljava/lang/String;
    const-string/jumbo v53, ""

    .line 2006
    .local v53, "str_checkbox_comma":Ljava/lang/String;
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "{check_box:["

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    .line 2007
    .local v55, "str_checkbox_input_prefix":Ljava/lang/String;
    const-string/jumbo v54, ""

    .line 2008
    .local v54, "str_checkbox_input_comma":Ljava/lang/String;
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "{info_choice_with_others:["

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    .line 2009
    .local v58, "str_choice_input_prefix":Ljava/lang/String;
    const-string/jumbo v57, ""

    .line 2010
    .local v57, "str_choice_input_comma":Ljava/lang/String;
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "{inputs:["

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    .line 2011
    .local v62, "str_input_prefix":Ljava/lang/String;
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "{image_url:["

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    .line 2012
    .local v60, "str_image_prefix":Ljava/lang/String;
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "{scan_code:["

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    .line 2013
    .local v63, "str_scan_prefix":Ljava/lang/String;
    const-string/jumbo v61, ""

    .line 2014
    .local v61, "str_input_comma":Ljava/lang/String;
    const/16 v19, 0x0

    .line 2015
    const/16 v26, 0x0

    .local v26, "j":I
    :goto_e3
    invoke-virtual/range {v40 .. v40}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v69

    move/from16 v0, v26

    move/from16 v1, v69

    if-ge v0, v1, :cond_b2a

    .line 2016
    move-object/from16 v0, v40

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v67

    .line 2017
    .local v67, "view_field_row":Landroid/view/View;
    sget v69, Lcom/bzbs/lib/survey/R$id;->layoutQuestion:I

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/RelativeLayout;

    .line 2018
    .local v38, "layoutQuestion":Landroid/widget/RelativeLayout;
    if-eqz v38, :cond_212

    .line 2020
    sget v69, Lcom/bzbs/lib/survey/R$id;->layoutInfoChoice:I

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/RelativeLayout;

    .line 2021
    .local v31, "layoutInfoChoice":Landroid/widget/RelativeLayout;
    sget v69, Lcom/bzbs/lib/survey/R$id;->layoutInfoCheckbox:I

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/RelativeLayout;

    .line 2022
    .local v30, "layoutInfoCheckbox":Landroid/widget/RelativeLayout;
    sget v69, Lcom/bzbs/lib/survey/R$id;->layoutInfoInput:I

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout;

    .line 2023
    .local v34, "layoutInfoInput":Landroid/widget/RelativeLayout;
    sget v69, Lcom/bzbs/lib/survey/R$id;->layoutDate:I

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/RelativeLayout;

    .line 2024
    .local v27, "layoutDate":Landroid/widget/RelativeLayout;
    sget v69, Lcom/bzbs/lib/survey/R$id;->layoutTime:I

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/RelativeLayout;

    .line 2025
    .local v43, "layoutTime":Landroid/widget/RelativeLayout;
    sget v69, Lcom/bzbs/lib/survey/R$id;->layoutInfoTextArea:I

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/RelativeLayout;

    .line 2026
    .local v37, "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    sget v69, Lcom/bzbs/lib/survey/R$id;->layoutQuestionwithBox:I

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/RelativeLayout;

    .line 2027
    .local v39, "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    sget v69, Lcom/bzbs/lib/survey/R$id;->layoutScanCodeInput:I

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/RelativeLayout;

    .line 2028
    .local v42, "layoutScanCodeInput":Landroid/widget/RelativeLayout;
    sget v69, Lcom/bzbs/lib/survey/R$id;->layoutScanCodeContinuousInput:I

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/RelativeLayout;

    .line 2029
    .local v41, "layoutScanCodeContinuousInput":Landroid/widget/RelativeLayout;
    sget v69, Lcom/bzbs/lib/survey/R$id;->layoutImageInput:I

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/RelativeLayout;

    .line 2030
    .local v28, "layoutImageInput":Landroid/widget/RelativeLayout;
    sget v69, Lcom/bzbs/lib/survey/R$id;->layoutInfoRate:I

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/LinearLayout;

    .line 2031
    .local v36, "layoutInfoRate":Landroid/widget/LinearLayout;
    sget v69, Lcom/bzbs/lib/survey/R$id;->layoutInfoEmotion:I

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/LinearLayout;

    .line 2032
    .local v33, "layoutInfoEmotion":Landroid/widget/LinearLayout;
    sget v69, Lcom/bzbs/lib/survey/R$id;->layoutInfoLocation:I

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/LinearLayout;

    .line 2033
    .local v35, "layoutInfoLocation":Landroid/widget/LinearLayout;
    invoke-virtual/range {v42 .. v42}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v69

    if-nez v69, :cond_261

    .line 2034
    sget v69, Lcom/bzbs/lib/survey/R$id;->etFieldInputCode:I

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 2036
    .local v11, "etFieldInputCode":Landroid/widget/TextView;
    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v69

    invoke-interface/range {v69 .. v69}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v69

    const-string/jumbo v70, ""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-nez v69, :cond_216

    .line 2037
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "\""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v70

    invoke-interface/range {v70 .. v70}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "\""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2038
    const-string/jumbo v63, ""

    .line 2039
    const-string/jumbo v61, ","

    .line 2040
    const-string/jumbo v59, ","

    .line 2041
    const/16 v46, 0x0

    .line 2042
    const/16 v19, 0x1

    .line 2015
    .end local v11    # "etFieldInputCode":Landroid/widget/TextView;
    .end local v27    # "layoutDate":Landroid/widget/RelativeLayout;
    .end local v28    # "layoutImageInput":Landroid/widget/RelativeLayout;
    .end local v30    # "layoutInfoCheckbox":Landroid/widget/RelativeLayout;
    .end local v31    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .end local v33    # "layoutInfoEmotion":Landroid/widget/LinearLayout;
    .end local v34    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .end local v35    # "layoutInfoLocation":Landroid/widget/LinearLayout;
    .end local v36    # "layoutInfoRate":Landroid/widget/LinearLayout;
    .end local v37    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    .end local v39    # "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    .end local v41    # "layoutScanCodeContinuousInput":Landroid/widget/RelativeLayout;
    .end local v42    # "layoutScanCodeInput":Landroid/widget/RelativeLayout;
    .end local v43    # "layoutTime":Landroid/widget/RelativeLayout;
    :cond_212
    :goto_212
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_e3

    .line 2044
    .restart local v11    # "etFieldInputCode":Landroid/widget/TextView;
    .restart local v27    # "layoutDate":Landroid/widget/RelativeLayout;
    .restart local v28    # "layoutImageInput":Landroid/widget/RelativeLayout;
    .restart local v30    # "layoutInfoCheckbox":Landroid/widget/RelativeLayout;
    .restart local v31    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .restart local v33    # "layoutInfoEmotion":Landroid/widget/LinearLayout;
    .restart local v34    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .restart local v35    # "layoutInfoLocation":Landroid/widget/LinearLayout;
    .restart local v36    # "layoutInfoRate":Landroid/widget/LinearLayout;
    .restart local v37    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    .restart local v39    # "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    .restart local v41    # "layoutScanCodeContinuousInput":Landroid/widget/RelativeLayout;
    .restart local v42    # "layoutScanCodeInput":Landroid/widget/RelativeLayout;
    .restart local v43    # "layoutTime":Landroid/widget/RelativeLayout;
    :cond_216
    const/16 v46, 0x0

    .line 2045
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "\""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v70

    invoke-interface/range {v70 .. v70}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "\""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2046
    const-string/jumbo v63, ""

    .line 2047
    const-string/jumbo v61, ","

    .line 2048
    const-string/jumbo v59, ","

    goto :goto_212

    .line 2050
    .end local v11    # "etFieldInputCode":Landroid/widget/TextView;
    :cond_261
    invoke-virtual/range {v41 .. v41}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v69

    if-nez v69, :cond_2a8

    .line 2051
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, ",{answer:"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    new-instance v70, Lcom/google/gson/Gson;

    invoke-direct/range {v70 .. v70}, Lcom/google/gson/Gson;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v71, v0

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->continueDataModels:Ljava/util/ArrayList;
    invoke-static/range {v71 .. v71}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1700(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/ArrayList;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "}"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2052
    sget-object v69, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v69

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_212

    .line 2053
    :cond_2a8
    invoke-virtual/range {v28 .. v28}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v69

    if-nez v69, :cond_369

    .line 2054
    sget v69, Lcom/bzbs/lib/survey/R$id;->etFieldInputImage:I

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 2056
    .local v12, "etFieldInputImage":Landroid/widget/TextView;
    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v69

    invoke-interface/range {v69 .. v69}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v69

    const-string/jumbo v70, ""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-nez v69, :cond_31d

    .line 2057
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "\""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v70

    invoke-interface/range {v70 .. v70}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "\""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2058
    const-string/jumbo v60, ""

    .line 2059
    const-string/jumbo v61, ","

    .line 2060
    const-string/jumbo v59, ","

    .line 2061
    const/16 v46, 0x0

    .line 2062
    const/16 v19, 0x1

    goto/16 :goto_212

    .line 2064
    :cond_31d
    const/16 v46, 0x0

    .line 2065
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "\""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v70

    invoke-interface/range {v70 .. v70}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "\""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2066
    const-string/jumbo v60, ""

    .line 2067
    const-string/jumbo v61, ","

    .line 2068
    const-string/jumbo v59, ","

    goto/16 :goto_212

    .line 2070
    .end local v12    # "etFieldInputImage":Landroid/widget/TextView;
    :cond_369
    invoke-virtual/range {v36 .. v36}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v69

    if-nez v69, :cond_3e1

    .line 2071
    sget v69, Lcom/bzbs/lib/survey/R$id;->etFieldInputRateValue:I

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 2072
    .local v15, "etFieldInputRateValue":Landroid/widget/TextView;
    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v69

    invoke-interface/range {v69 .. v69}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v69

    const-string/jumbo v70, ""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-nez v69, :cond_3de

    .line 2073
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "{answer:"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, ""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v70

    invoke-interface/range {v70 .. v70}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, ""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "}"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2074
    const-string/jumbo v59, ","

    .line 2075
    const/16 v46, 0x0

    .line 2076
    const/16 v19, 0x1

    .line 2080
    :goto_3d8
    invoke-virtual/range {v40 .. v40}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v26

    .line 2081
    goto/16 :goto_212

    .line 2078
    :cond_3de
    const/16 v46, 0x1

    goto :goto_3d8

    .line 2081
    .end local v15    # "etFieldInputRateValue":Landroid/widget/TextView;
    :cond_3e1
    invoke-virtual/range {v33 .. v33}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v69

    if-nez v69, :cond_459

    .line 2082
    sget v69, Lcom/bzbs/lib/survey/R$id;->etFieldInputMode:I

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 2083
    .local v14, "etFieldInputMode":Landroid/widget/TextView;
    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v69

    invoke-interface/range {v69 .. v69}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v69

    const-string/jumbo v70, ""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-nez v69, :cond_456

    .line 2084
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "{answer:"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, ""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v70

    invoke-interface/range {v70 .. v70}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, ""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "}"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2085
    const-string/jumbo v59, ","

    .line 2086
    const/16 v46, 0x0

    .line 2087
    const/16 v19, 0x1

    .line 2091
    :goto_450
    invoke-virtual/range {v40 .. v40}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v26

    .line 2092
    goto/16 :goto_212

    .line 2089
    :cond_456
    const/16 v46, 0x1

    goto :goto_450

    .line 2092
    .end local v14    # "etFieldInputMode":Landroid/widget/TextView;
    :cond_459
    invoke-virtual/range {v35 .. v35}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v69

    if-nez v69, :cond_4e9

    .line 2093
    sget v69, Lcom/bzbs/lib/survey/R$id;->etFieldInputLocation:I

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 2094
    .local v13, "etFieldInputLocation":Landroid/widget/TextView;
    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v69

    invoke-interface/range {v69 .. v69}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v69

    const-string/jumbo v70, ""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-nez v69, :cond_4e5

    .line 2095
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "{latitude:"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    iget-wide v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->lat:D

    move-wide/from16 v70, v0

    invoke-virtual/range {v69 .. v71}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, ","

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "longitude:"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    iget-wide v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->lng:D

    move-wide/from16 v70, v0

    invoke-virtual/range {v69 .. v71}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, ""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "}"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2096
    const-string/jumbo v59, ","

    .line 2097
    const/16 v46, 0x0

    .line 2098
    const/16 v19, 0x1

    goto/16 :goto_212

    .line 2100
    :cond_4e5
    const/16 v46, 0x1

    goto/16 :goto_212

    .line 2102
    .end local v13    # "etFieldInputLocation":Landroid/widget/TextView;
    :cond_4e9
    invoke-virtual/range {v38 .. v38}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v69

    if-nez v69, :cond_57b

    .line 2103
    sget v69, Lcom/bzbs/lib/survey/R$id;->tvFieldAnswer:I

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 2104
    .local v6, "chkFieldChoice":Landroid/widget/CheckBox;
    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v69

    if-eqz v69, :cond_577

    .line 2105
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "{answer:"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, ""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    add-int/lit8 v71, v17, -0x1

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v69

    check-cast v69, Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    move-object/from16 v0, v69

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    add-int/lit8 v71, v26, -0x3

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v69

    check-cast v69, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v69

    iget v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->index:I

    move/from16 v69, v0

    move-object/from16 v0, v70

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, ""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "}"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2106
    const-string/jumbo v59, ","

    .line 2107
    const/16 v46, 0x0

    .line 2108
    const/16 v19, 0x1

    goto/16 :goto_212

    .line 2110
    :cond_577
    const/16 v46, 0x1

    goto/16 :goto_212

    .line 2113
    .end local v6    # "chkFieldChoice":Landroid/widget/CheckBox;
    :cond_57b
    invoke-virtual/range {v39 .. v39}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v69

    if-nez v69, :cond_6c0

    .line 2115
    sget v69, Lcom/bzbs/lib/survey/R$id;->tvFieldAnswerBox:I

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v64

    check-cast v64, Landroid/widget/CheckBox;

    .line 2116
    .local v64, "tvFieldAnswerBox":Landroid/widget/CheckBox;
    sget v69, Lcom/bzbs/lib/survey/R$id;->layoutInfoAnswerEdt:I

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/RelativeLayout;

    .line 2117
    .local v29, "layoutInfoAnswerEdt":Landroid/widget/RelativeLayout;
    invoke-virtual/range {v64 .. v64}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v69

    if-eqz v69, :cond_613

    .line 2118
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "{answer:"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    add-int/lit8 v71, v17, -0x1

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v69

    check-cast v69, Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    move-object/from16 v0, v69

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    add-int/lit8 v71, v26, -0x3

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v69

    check-cast v69, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v69

    iget v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->index:I

    move/from16 v69, v0

    move-object/from16 v0, v70

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, ", choice_input :\""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, ""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "\"}"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2119
    const-string/jumbo v59, ","

    .line 2120
    const/16 v46, 0x0

    .line 2121
    const/16 v19, 0x1

    .line 2123
    :cond_613
    invoke-virtual/range {v29 .. v29}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v69

    if-nez v69, :cond_6b0

    .line 2124
    sget v69, Lcom/bzbs/lib/survey/R$id;->etFieldInputAnswer:I

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 2125
    .local v9, "etFieldInputAnswer":Landroid/widget/EditText;
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/String;->length()I

    move-result v69

    if-lez v69, :cond_6b0

    .line 2126
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "{answer:"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    add-int/lit8 v71, v17, -0x1

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v69

    check-cast v69, Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    move-object/from16 v0, v69

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    add-int/lit8 v71, v26, -0x3

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v69

    check-cast v69, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v69

    iget v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->index:I

    move/from16 v69, v0

    move-object/from16 v0, v70

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, ", choice_input :\""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "\"}"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2127
    const-string/jumbo v59, ","

    .line 2128
    const/16 v46, 0x0

    .line 2129
    const/16 v19, 0x1

    .line 2132
    .end local v9    # "etFieldInputAnswer":Landroid/widget/EditText;
    :cond_6b0
    invoke-virtual/range {v64 .. v64}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v69

    if-nez v69, :cond_212

    invoke-virtual/range {v29 .. v29}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v69

    if-eqz v69, :cond_212

    .line 2133
    const/16 v46, 0x1

    goto/16 :goto_212

    .line 2136
    .end local v29    # "layoutInfoAnswerEdt":Landroid/widget/RelativeLayout;
    .end local v64    # "tvFieldAnswerBox":Landroid/widget/CheckBox;
    :cond_6c0
    invoke-virtual/range {v31 .. v31}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v69

    if-nez v69, :cond_79d

    .line 2137
    sget v69, Lcom/bzbs/lib/survey/R$id;->chkFieldChoice:I

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 2138
    .restart local v6    # "chkFieldChoice":Landroid/widget/CheckBox;
    sget v69, Lcom/bzbs/lib/survey/R$id;->layoutInfoChoiceEdt:I

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/RelativeLayout;

    .line 2139
    .local v32, "layoutInfoChoiceEdt":Landroid/widget/RelativeLayout;
    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v69

    if-eqz v69, :cond_75a

    .line 2140
    const/16 v25, 0x1

    .line 2141
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, ""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    add-int/lit8 v71, v17, -0x1

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v69

    check-cast v69, Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    move-object/from16 v0, v69

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    add-int/lit8 v71, v26, -0x3

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v69

    check-cast v69, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v69

    iget v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->index:I

    move/from16 v69, v0

    move-object/from16 v0, v70

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, ""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2142
    const-string/jumbo v55, ""

    .line 2143
    const-string/jumbo v54, ","

    .line 2144
    const-string/jumbo v59, ","

    .line 2145
    const/16 v46, 0x0

    .line 2146
    const/16 v19, 0x1

    .line 2148
    :cond_75a
    invoke-virtual/range {v32 .. v32}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v69

    if-nez v69, :cond_78d

    .line 2149
    sget v69, Lcom/bzbs/lib/survey/R$id;->etFieldInputChoice:I

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 2150
    .local v10, "etFieldInputChoice":Landroid/widget/EditText;
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/String;->length()I

    move-result v69

    if-lez v69, :cond_78d

    .line 2151
    const-string/jumbo v55, ""

    .line 2152
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2153
    const/16 v46, 0x0

    .line 2154
    const/16 v19, 0x1

    .line 2157
    .end local v10    # "etFieldInputChoice":Landroid/widget/EditText;
    :cond_78d
    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v69

    if-nez v69, :cond_212

    invoke-virtual/range {v32 .. v32}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v69

    if-eqz v69, :cond_212

    .line 2158
    const/16 v46, 0x1

    goto/16 :goto_212

    .line 2160
    .end local v6    # "chkFieldChoice":Landroid/widget/CheckBox;
    .end local v32    # "layoutInfoChoiceEdt":Landroid/widget/RelativeLayout;
    :cond_79d
    invoke-virtual/range {v30 .. v30}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v69

    if-nez v69, :cond_82f

    .line 2161
    sget v69, Lcom/bzbs/lib/survey/R$id;->chkFieldCheckbox:I

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 2162
    .local v5, "chkFieldCheckbox":Landroid/widget/CheckBox;
    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v69

    if-eqz v69, :cond_82b

    .line 2163
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, ""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    add-int/lit8 v71, v17, -0x1

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v69

    check-cast v69, Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    move-object/from16 v0, v69

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    add-int/lit8 v71, v26, -0x3

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v69

    check-cast v69, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v69

    iget v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->index:I

    move/from16 v69, v0

    move-object/from16 v0, v70

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, ""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2164
    const-string/jumbo v56, ""

    .line 2165
    const-string/jumbo v53, ","

    .line 2166
    const-string/jumbo v59, ","

    .line 2167
    const/16 v46, 0x0

    .line 2168
    const/16 v19, 0x1

    goto/16 :goto_212

    .line 2170
    :cond_82b
    const/16 v46, 0x1

    goto/16 :goto_212

    .line 2173
    .end local v5    # "chkFieldCheckbox":Landroid/widget/CheckBox;
    :cond_82f
    invoke-virtual/range {v34 .. v34}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v69

    if-nez v69, :cond_8e7

    .line 2174
    sget v69, Lcom/bzbs/lib/survey/R$id;->etFieldInput:I

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 2175
    .local v8, "etFieldInput":Landroid/widget/EditText;
    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v69

    const-string/jumbo v70, ""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-nez v69, :cond_8a4

    .line 2176
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "\""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "\""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2177
    const-string/jumbo v62, ""

    .line 2178
    const-string/jumbo v61, ","

    .line 2179
    const-string/jumbo v59, ","

    .line 2180
    const/16 v46, 0x0

    .line 2181
    const/16 v19, 0x1

    goto/16 :goto_212

    .line 2183
    :cond_8a4
    const/16 v46, 0x0

    .line 2184
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "\""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, ""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "\""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2185
    const-string/jumbo v62, ""

    .line 2186
    const-string/jumbo v61, ","

    .line 2187
    const-string/jumbo v59, ","

    goto/16 :goto_212

    .line 2189
    .end local v8    # "etFieldInput":Landroid/widget/EditText;
    :cond_8e7
    invoke-virtual/range {v43 .. v43}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v69

    if-nez v69, :cond_9a8

    .line 2190
    sget v69, Lcom/bzbs/lib/survey/R$id;->etFieldInputTime:I

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 2191
    .local v8, "etFieldInput":Landroid/widget/TextView;
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v69

    invoke-interface/range {v69 .. v69}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v69

    const-string/jumbo v70, ""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-nez v69, :cond_95c

    .line 2192
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "\""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v70

    invoke-interface/range {v70 .. v70}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "\""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2193
    const-string/jumbo v62, ""

    .line 2194
    const-string/jumbo v61, ","

    .line 2195
    const-string/jumbo v59, ","

    .line 2196
    const/16 v46, 0x0

    .line 2197
    const/16 v19, 0x1

    goto/16 :goto_212

    .line 2199
    :cond_95c
    const/16 v46, 0x0

    .line 2200
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "\""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v70

    invoke-interface/range {v70 .. v70}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "\""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2201
    const-string/jumbo v62, ""

    .line 2202
    const-string/jumbo v61, ","

    .line 2203
    const-string/jumbo v59, ","

    goto/16 :goto_212

    .line 2205
    .end local v8    # "etFieldInput":Landroid/widget/TextView;
    :cond_9a8
    invoke-virtual/range {v27 .. v27}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v69

    if-nez v69, :cond_a69

    .line 2206
    sget v69, Lcom/bzbs/lib/survey/R$id;->etFieldInputDate:I

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 2207
    .restart local v8    # "etFieldInput":Landroid/widget/TextView;
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v69

    invoke-interface/range {v69 .. v69}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v69

    const-string/jumbo v70, ""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-nez v69, :cond_a1d

    .line 2208
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "\""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v70

    invoke-interface/range {v70 .. v70}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "\""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2209
    const-string/jumbo v62, ""

    .line 2210
    const-string/jumbo v61, ","

    .line 2211
    const-string/jumbo v59, ","

    .line 2212
    const/16 v46, 0x0

    .line 2213
    const/16 v19, 0x1

    goto/16 :goto_212

    .line 2215
    :cond_a1d
    const/16 v46, 0x0

    .line 2216
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "\""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v70

    invoke-interface/range {v70 .. v70}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "\""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2217
    const-string/jumbo v62, ""

    .line 2218
    const-string/jumbo v61, ","

    .line 2219
    const-string/jumbo v59, ","

    goto/16 :goto_212

    .line 2221
    .end local v8    # "etFieldInput":Landroid/widget/TextView;
    :cond_a69
    invoke-virtual/range {v37 .. v37}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v69

    if-nez v69, :cond_212

    .line 2222
    sget v69, Lcom/bzbs/lib/survey/R$id;->etFieldTextArea:I

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/EditText;

    .line 2223
    .local v16, "etFieldTextArea":Landroid/widget/EditText;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v69

    const-string/jumbo v70, ""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-nez v69, :cond_ade

    .line 2224
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "\""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v16 .. v16}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "\""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2225
    const-string/jumbo v62, ""

    .line 2226
    const-string/jumbo v61, ","

    .line 2227
    const-string/jumbo v59, ","

    .line 2228
    const/16 v46, 0x0

    .line 2229
    const/16 v19, 0x1

    goto/16 :goto_212

    .line 2231
    :cond_ade
    const/16 v46, 0x0

    .line 2232
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "\""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v16 .. v16}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "\""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2233
    const-string/jumbo v62, ""

    .line 2234
    const-string/jumbo v61, ","

    .line 2235
    const-string/jumbo v59, ","

    goto/16 :goto_212

    .line 2240
    .end local v16    # "etFieldTextArea":Landroid/widget/EditText;
    .end local v27    # "layoutDate":Landroid/widget/RelativeLayout;
    .end local v28    # "layoutImageInput":Landroid/widget/RelativeLayout;
    .end local v30    # "layoutInfoCheckbox":Landroid/widget/RelativeLayout;
    .end local v31    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .end local v33    # "layoutInfoEmotion":Landroid/widget/LinearLayout;
    .end local v34    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .end local v35    # "layoutInfoLocation":Landroid/widget/LinearLayout;
    .end local v36    # "layoutInfoRate":Landroid/widget/LinearLayout;
    .end local v37    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    .end local v38    # "layoutQuestion":Landroid/widget/RelativeLayout;
    .end local v39    # "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    .end local v41    # "layoutScanCodeContinuousInput":Landroid/widget/RelativeLayout;
    .end local v42    # "layoutScanCodeInput":Landroid/widget/RelativeLayout;
    .end local v43    # "layoutTime":Landroid/widget/RelativeLayout;
    .end local v67    # "view_field_row":Landroid/view/View;
    :cond_b2a
    const-string/jumbo v69, ""

    move-object/from16 v0, v56

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_b4f

    .line 2241
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "]}"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2243
    :cond_b4f
    const-string/jumbo v69, ""

    move-object/from16 v0, v55

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_b7f

    .line 2244
    const-string/jumbo v69, ""

    move-object/from16 v0, v69

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_c21

    .line 2245
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "]}"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2252
    :cond_b7f
    :goto_b7f
    const-string/jumbo v69, ""

    move-object/from16 v0, v62

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_ba4

    .line 2253
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "]}"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2255
    :cond_ba4
    const-string/jumbo v69, ""

    move-object/from16 v0, v60

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_bc9

    .line 2256
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "]}"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2258
    :cond_bc9
    const-string/jumbo v69, ""

    move-object/from16 v0, v63

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_bee

    .line 2259
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "]}"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2263
    .end local v26    # "j":I
    .end local v53    # "str_checkbox_comma":Ljava/lang/String;
    .end local v54    # "str_checkbox_input_comma":Ljava/lang/String;
    .end local v55    # "str_checkbox_input_prefix":Ljava/lang/String;
    .end local v56    # "str_checkbox_prefix":Ljava/lang/String;
    .end local v57    # "str_choice_input_comma":Ljava/lang/String;
    .end local v58    # "str_choice_input_prefix":Ljava/lang/String;
    .end local v60    # "str_image_prefix":Ljava/lang/String;
    .end local v61    # "str_input_comma":Ljava/lang/String;
    .end local v62    # "str_input_prefix":Ljava/lang/String;
    .end local v63    # "str_scan_prefix":Ljava/lang/String;
    :cond_bee
    const/16 v69, 0x1

    move/from16 v0, v46

    move/from16 v1, v69

    if-ne v0, v1, :cond_c1d

    if-nez v19, :cond_c1d

    .line 2264
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "{survey_pass:true}"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2265
    const-string/jumbo v59, ","

    .line 2266
    const/16 v46, 0x0

    .line 1992
    :cond_c1d
    add-int/lit8 v21, v21, -0x1

    goto/16 :goto_21

    .line 2246
    .restart local v26    # "j":I
    .restart local v53    # "str_checkbox_comma":Ljava/lang/String;
    .restart local v54    # "str_checkbox_input_comma":Ljava/lang/String;
    .restart local v55    # "str_checkbox_input_prefix":Ljava/lang/String;
    .restart local v56    # "str_checkbox_prefix":Ljava/lang/String;
    .restart local v57    # "str_choice_input_comma":Ljava/lang/String;
    .restart local v58    # "str_choice_input_prefix":Ljava/lang/String;
    .restart local v60    # "str_image_prefix":Ljava/lang/String;
    .restart local v61    # "str_input_comma":Ljava/lang/String;
    .restart local v62    # "str_input_prefix":Ljava/lang/String;
    .restart local v63    # "str_scan_prefix":Ljava/lang/String;
    :cond_c21
    const-string/jumbo v69, ""

    move-object/from16 v0, v69

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-nez v69, :cond_c5b

    const/16 v69, 0x1

    move/from16 v0, v25

    move/from16 v1, v69

    if-ne v0, v1, :cond_c5b

    .line 2247
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "],check_box_input :\""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "\"}"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_b7f

    .line 2249
    :cond_c5b
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, ",{check_box:[],check_box_input :\""

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "\"}"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_b7f

    .line 2270
    .end local v26    # "j":I
    .end local v40    # "layoutRootSurvey":Landroid/widget/LinearLayout;
    .end local v53    # "str_checkbox_comma":Ljava/lang/String;
    .end local v54    # "str_checkbox_input_comma":Ljava/lang/String;
    .end local v55    # "str_checkbox_input_prefix":Ljava/lang/String;
    .end local v56    # "str_checkbox_prefix":Ljava/lang/String;
    .end local v57    # "str_choice_input_comma":Ljava/lang/String;
    .end local v58    # "str_choice_input_prefix":Ljava/lang/String;
    .end local v60    # "str_image_prefix":Ljava/lang/String;
    .end local v61    # "str_input_comma":Ljava/lang/String;
    .end local v62    # "str_input_prefix":Ljava/lang/String;
    .end local v63    # "str_scan_prefix":Ljava/lang/String;
    .end local v68    # "view_pager_survey":Landroid/view/View;
    :cond_c82
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "]"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2271
    const-string/jumbo v69, "OAT"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v71, "JSON ANSWER:= "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->calEndDate:Ljava/util/Calendar;

    move-object/from16 v69, v0

    if-nez v69, :cond_cec

    .line 2281
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 2282
    .local v7, "d2":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v69, v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v69

    iput-object v0, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->calEndDate:Ljava/util/Calendar;

    .line 2283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->calEndDate:Ljava/util/Calendar;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2286
    .end local v7    # "d2":Ljava/util/Date;
    :cond_cec
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->calEndDate:Ljava/util/Calendar;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->calStartDate:Ljava/util/Calendar;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v72

    sub-long v70, v70, v72

    const-wide/32 v72, 0x5265c00

    div-long v70, v70, v72

    move-wide/from16 v0, v70

    long-to-int v0, v0

    move/from16 v47, v0

    .line 2287
    .local v47, "presumedDays":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->calEndDate:Ljava/util/Calendar;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->calStartDate:Ljava/util/Calendar;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v72

    sub-long v70, v70, v72

    const-wide/32 v72, 0x36ee80

    div-long v70, v70, v72

    move-wide/from16 v0, v70

    long-to-int v0, v0

    move/from16 v48, v0

    .line 2288
    .local v48, "presumedHours":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->calEndDate:Ljava/util/Calendar;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->calStartDate:Ljava/util/Calendar;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v72

    sub-long v70, v70, v72

    const-wide/32 v72, 0xea60

    div-long v70, v70, v72

    move-wide/from16 v0, v70

    long-to-int v0, v0

    move/from16 v49, v0

    .line 2289
    .local v49, "presumedMins":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->calEndDate:Ljava/util/Calendar;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->calStartDate:Ljava/util/Calendar;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v72

    sub-long v70, v70, v72

    const-wide/16 v72, 0x3e8

    div-long v70, v70, v72

    move-wide/from16 v0, v70

    long-to-int v0, v0

    move/from16 v50, v0

    .line 2290
    .local v50, "presumedSec":I
    const-string/jumbo v69, "OAT"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v71, "presumedDays= "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string/jumbo v71, ", presumedHours= "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string/jumbo v71, ", presumedMins= "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string/jumbo v71, ", presumedSec= "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    move/from16 v0, v50

    div-int/lit16 v0, v0, 0xe10

    move/from16 v20, v0

    .line 2293
    .local v20, "hours":I
    move/from16 v0, v50

    rem-int/lit16 v0, v0, 0xe10

    move/from16 v69, v0

    div-int/lit8 v44, v69, 0x3c

    .line 2294
    .local v44, "minutes":I
    rem-int/lit8 v51, v50, 0x3c

    .line 2295
    .local v51, "seconds":I
    const-string/jumbo v52, ""

    .line 2305
    .local v52, "strAcc":Ljava/lang/String;
    const-string/jumbo v23, ""

    .line 2306
    .local v23, "info2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v69, v0

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;
    invoke-static/range {v69 .. v69}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v69

    move-object/from16 v0, v69

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->Type:Ljava/lang/String;

    move-object/from16 v69, v0

    const-string/jumbo v70, "6"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_f97

    .line 2307
    move-object/from16 v23, v52

    .line 2311
    :goto_e17
    const-string/jumbo v69, "OAT"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v71, "TIMES:= "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v70, v0

    const-string/jumbo v71, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v72, v0

    sget v73, Lcom/bzbs/lib/survey/R$string;->please_wait:I

    invoke-virtual/range {v72 .. v73}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v72

    const/16 v73, 0x1

    const/16 v74, 0x1

    invoke-static/range {v70 .. v74}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v70

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v69 .. v70}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$3402(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 2316
    new-instance v18, Lcom/bzbs/lib/survey/util/GPSTracker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v69, v0

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->mActivity:Landroid/app/Activity;
    invoke-static/range {v69 .. v69}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$2700(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/app/Activity;

    move-result-object v69

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Lcom/bzbs/lib/survey/util/GPSTracker;-><init>(Landroid/content/Context;)V

    .line 2317
    .local v18, "gpsTracker":Lcom/bzbs/lib/survey/util/GPSTracker;
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v70, Lcom/bzbs/lib/survey/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "api/campaign/"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v70, v0

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;
    invoke-static/range {v70 .. v70}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v70

    move-object/from16 v0, v70

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->ID:Ljava/lang/String;

    move-object/from16 v70, v0

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, "/redeem"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    .line 2319
    .local v66, "url":Ljava/lang/String;
    const-string/jumbo v69, "campaign.adbuzz"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v71, "redeem url="

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    new-instance v45, Lcom/loopj/android/http/RequestParams;

    invoke-direct/range {v45 .. v45}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 2322
    .local v45, "params":Lcom/loopj/android/http/RequestParams;
    const-string/jumbo v69, "token"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v70, v0

    invoke-virtual/range {v70 .. v70}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v70

    invoke-static/range {v70 .. v70}, Lcom/bzbs/lib/survey/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v70

    move-object/from16 v0, v45

    move-object/from16 v1, v69

    move-object/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2323
    const-string/jumbo v69, "info1"

    move-object/from16 v0, v45

    move-object/from16 v1, v69

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2324
    const-string/jumbo v69, "info2"

    move-object/from16 v0, v45

    move-object/from16 v1, v69

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2325
    const-string/jumbo v69, "latitude"

    invoke-virtual/range {v18 .. v18}, Lcom/bzbs/lib/survey/util/GPSTracker;->getLatitude()D

    move-result-wide v70

    invoke-static/range {v70 .. v71}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v70

    move-object/from16 v0, v45

    move-object/from16 v1, v69

    move-object/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2326
    const-string/jumbo v69, "longtitude"

    invoke-virtual/range {v18 .. v18}, Lcom/bzbs/lib/survey/util/GPSTracker;->getLongitude()D

    move-result-wide v70

    invoke-static/range {v70 .. v71}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v70

    move-object/from16 v0, v45

    move-object/from16 v1, v69

    move-object/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v69, v0

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->mActivity:Landroid/app/Activity;
    invoke-static/range {v69 .. v69}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$2700(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/app/Activity;

    move-result-object v69

    invoke-static/range {v69 .. v69}, Lcom/bzbs/lib/survey/LibUserLogin;->GetAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v69

    const-string/jumbo v70, "1408708652720704"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_fc8

    .line 2328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v69, v0

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v69 .. v69}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$3400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/app/ProgressDialog;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2329
    const-string/jumbo v69, "content://someURI"

    invoke-static/range {v69 .. v69}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v65

    .line 2330
    .local v65, "uri":Landroid/net/Uri;
    new-instance v24, Landroid/content/Intent;

    const/16 v69, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v69

    move-object/from16 v2, v65

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2331
    .local v24, "intent":Landroid/content/Intent;
    const-string/jumbo v69, "url"

    move-object/from16 v0, v24

    move-object/from16 v1, v69

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2332
    const-string/jumbo v69, "paramCampaignName"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v70, v0

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;
    invoke-static/range {v70 .. v70}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v70

    move-object/from16 v0, v70

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->Name:Ljava/lang/String;

    move-object/from16 v70, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v69

    move-object/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v69, v0

    const/16 v70, -0x1

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 2334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->finish()V

    .line 2338
    .end local v24    # "intent":Landroid/content/Intent;
    .end local v65    # "uri":Landroid/net/Uri;
    :goto_f96
    return-void

    .line 2309
    .end local v18    # "gpsTracker":Lcom/bzbs/lib/survey/util/GPSTracker;
    .end local v45    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v66    # "url":Ljava/lang/String;
    :cond_f97
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, ":"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string/jumbo v70, ":"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_e17

    .line 2336
    .restart local v18    # "gpsTracker":Lcom/bzbs/lib/survey/util/GPSTracker;
    .restart local v45    # "params":Lcom/loopj/android/http/RequestParams;
    .restart local v66    # "url":Ljava/lang/String;
    :cond_fc8
    new-instance v69, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v70, v0

    invoke-direct/range {v69 .. v70}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    move-object/from16 v0, v66

    move-object/from16 v1, v45

    move-object/from16 v2, v69

    invoke-static {v0, v1, v2}, Lcom/bzbs/lib/survey/util/http/BuzzbeesRestClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto :goto_f96
.end method

.method public actionSubmitValid(I)Ljava/lang/String;
    .registers 46
    .param p1, "position"    # I

    .prologue
    .line 2342
    const-string/jumbo v5, ""

    .line 2343
    .local v5, "alertText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;
    invoke-static/range {v40 .. v40}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildAt(I)Landroid/view/View;

    move-result-object v39

    .line 2344
    .local v39, "view_pager_survey":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    sub-int v41, v41, p1

    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    .line 2345
    .local v4, "adBuzzItem":Lcom/bzbs/lib/survey/bean/AdBuzzItem;
    sget v40, Lcom/bzbs/lib/survey/R$id;->layoutRootSurvey:I

    invoke-virtual/range {v39 .. v40}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/LinearLayout;

    .line 2346
    .local v32, "layoutRootSurvey":Landroid/widget/LinearLayout;
    if-eqz v32, :cond_150

    .line 2347
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_39
    invoke-virtual/range {v32 .. v32}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v40

    move/from16 v0, v19

    move/from16 v1, v40

    if-ge v0, v1, :cond_150

    .line 2348
    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    .line 2349
    .local v38, "view_field_row":Landroid/view/View;
    sget v40, Lcom/bzbs/lib/survey/R$id;->layoutQuestion:I

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/RelativeLayout;

    .line 2350
    .local v30, "layoutQuestion":Landroid/widget/RelativeLayout;
    if-eqz v30, :cond_15c

    .line 2351
    sget v40, Lcom/bzbs/lib/survey/R$id;->layoutInfoChoice:I

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/RelativeLayout;

    .line 2352
    .local v23, "layoutInfoChoice":Landroid/widget/RelativeLayout;
    sget v40, Lcom/bzbs/lib/survey/R$id;->layoutInfoCheckbox:I

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout;

    .line 2353
    .local v22, "layoutInfoCheckbox":Landroid/widget/RelativeLayout;
    sget v40, Lcom/bzbs/lib/survey/R$id;->layoutInfoInput:I

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/RelativeLayout;

    .line 2354
    .local v26, "layoutInfoInput":Landroid/widget/RelativeLayout;
    sget v40, Lcom/bzbs/lib/survey/R$id;->layoutDate:I

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout;

    .line 2355
    .local v20, "layoutDate":Landroid/widget/RelativeLayout;
    sget v40, Lcom/bzbs/lib/survey/R$id;->layoutTime:I

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/RelativeLayout;

    .line 2356
    .local v35, "layoutTime":Landroid/widget/RelativeLayout;
    sget v40, Lcom/bzbs/lib/survey/R$id;->layoutScanCodeInput:I

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout;

    .line 2357
    .local v34, "layoutScanCodeInput":Landroid/widget/RelativeLayout;
    sget v40, Lcom/bzbs/lib/survey/R$id;->layoutScanCodeContinuousInput:I

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/RelativeLayout;

    .line 2358
    .local v33, "layoutScanCodeContinuousInput":Landroid/widget/RelativeLayout;
    sget v40, Lcom/bzbs/lib/survey/R$id;->layoutImageInput:I

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/RelativeLayout;

    .line 2359
    .local v21, "layoutImageInput":Landroid/widget/RelativeLayout;
    sget v40, Lcom/bzbs/lib/survey/R$id;->layoutInfoTextArea:I

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/RelativeLayout;

    .line 2360
    .local v29, "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    sget v40, Lcom/bzbs/lib/survey/R$id;->layoutQuestionwithBox:I

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/RelativeLayout;

    .line 2361
    .local v31, "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    sget v40, Lcom/bzbs/lib/survey/R$id;->layoutInfoRate:I

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout;

    .line 2362
    .local v28, "layoutInfoRate":Landroid/widget/LinearLayout;
    sget v40, Lcom/bzbs/lib/survey/R$id;->layoutInfoEmotion:I

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    .line 2363
    .local v25, "layoutInfoEmotion":Landroid/widget/LinearLayout;
    sget v40, Lcom/bzbs/lib/survey/R$id;->layoutInfoLocation:I

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/LinearLayout;

    .line 2364
    .local v27, "layoutInfoLocation":Landroid/widget/LinearLayout;
    invoke-virtual/range {v34 .. v34}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v40

    if-nez v40, :cond_16c

    .line 2365
    sget v40, Lcom/bzbs/lib/survey/R$id;->etFieldInputCode:I

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 2366
    .local v12, "etFieldInputCode":Landroid/widget/TextView;
    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v40

    if-nez v40, :cond_160

    .line 2367
    iget-object v0, v4, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    add-int/lit8 v41, v19, -0x3

    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->required:Z

    move/from16 v40, v0

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_151

    .line 2368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    sget v41, Lcom/bzbs/lib/survey/R$string;->msg_alert_survey:I

    invoke-virtual/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    .line 2614
    .end local v12    # "etFieldInputCode":Landroid/widget/TextView;
    .end local v19    # "j":I
    .end local v20    # "layoutDate":Landroid/widget/RelativeLayout;
    .end local v21    # "layoutImageInput":Landroid/widget/RelativeLayout;
    .end local v22    # "layoutInfoCheckbox":Landroid/widget/RelativeLayout;
    .end local v23    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .end local v25    # "layoutInfoEmotion":Landroid/widget/LinearLayout;
    .end local v26    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .end local v27    # "layoutInfoLocation":Landroid/widget/LinearLayout;
    .end local v28    # "layoutInfoRate":Landroid/widget/LinearLayout;
    .end local v29    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    .end local v30    # "layoutQuestion":Landroid/widget/RelativeLayout;
    .end local v31    # "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    .end local v33    # "layoutScanCodeContinuousInput":Landroid/widget/RelativeLayout;
    .end local v34    # "layoutScanCodeInput":Landroid/widget/RelativeLayout;
    .end local v35    # "layoutTime":Landroid/widget/RelativeLayout;
    .end local v38    # "view_field_row":Landroid/view/View;
    :cond_150
    :goto_150
    return-object v5

    .line 2372
    .restart local v12    # "etFieldInputCode":Landroid/widget/TextView;
    .restart local v19    # "j":I
    .restart local v20    # "layoutDate":Landroid/widget/RelativeLayout;
    .restart local v21    # "layoutImageInput":Landroid/widget/RelativeLayout;
    .restart local v22    # "layoutInfoCheckbox":Landroid/widget/RelativeLayout;
    .restart local v23    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .restart local v25    # "layoutInfoEmotion":Landroid/widget/LinearLayout;
    .restart local v26    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .restart local v27    # "layoutInfoLocation":Landroid/widget/LinearLayout;
    .restart local v28    # "layoutInfoRate":Landroid/widget/LinearLayout;
    .restart local v29    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    .restart local v30    # "layoutQuestion":Landroid/widget/RelativeLayout;
    .restart local v31    # "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    .restart local v33    # "layoutScanCodeContinuousInput":Landroid/widget/RelativeLayout;
    .restart local v34    # "layoutScanCodeInput":Landroid/widget/RelativeLayout;
    .restart local v35    # "layoutTime":Landroid/widget/RelativeLayout;
    .restart local v38    # "view_field_row":Landroid/view/View;
    :cond_151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    .line 2347
    .end local v12    # "etFieldInputCode":Landroid/widget/TextView;
    .end local v20    # "layoutDate":Landroid/widget/RelativeLayout;
    .end local v21    # "layoutImageInput":Landroid/widget/RelativeLayout;
    .end local v22    # "layoutInfoCheckbox":Landroid/widget/RelativeLayout;
    .end local v23    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .end local v25    # "layoutInfoEmotion":Landroid/widget/LinearLayout;
    .end local v26    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .end local v27    # "layoutInfoLocation":Landroid/widget/LinearLayout;
    .end local v28    # "layoutInfoRate":Landroid/widget/LinearLayout;
    .end local v29    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    .end local v31    # "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    .end local v33    # "layoutScanCodeContinuousInput":Landroid/widget/RelativeLayout;
    .end local v34    # "layoutScanCodeInput":Landroid/widget/RelativeLayout;
    .end local v35    # "layoutTime":Landroid/widget/RelativeLayout;
    :cond_15c
    :goto_15c
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_39

    .line 2375
    .restart local v12    # "etFieldInputCode":Landroid/widget/TextView;
    .restart local v20    # "layoutDate":Landroid/widget/RelativeLayout;
    .restart local v21    # "layoutImageInput":Landroid/widget/RelativeLayout;
    .restart local v22    # "layoutInfoCheckbox":Landroid/widget/RelativeLayout;
    .restart local v23    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .restart local v25    # "layoutInfoEmotion":Landroid/widget/LinearLayout;
    .restart local v26    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .restart local v27    # "layoutInfoLocation":Landroid/widget/LinearLayout;
    .restart local v28    # "layoutInfoRate":Landroid/widget/LinearLayout;
    .restart local v29    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    .restart local v31    # "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    .restart local v33    # "layoutScanCodeContinuousInput":Landroid/widget/RelativeLayout;
    .restart local v34    # "layoutScanCodeInput":Landroid/widget/RelativeLayout;
    .restart local v35    # "layoutTime":Landroid/widget/RelativeLayout;
    :cond_160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto :goto_15c

    .line 2377
    .end local v12    # "etFieldInputCode":Landroid/widget/TextView;
    :cond_16c
    invoke-virtual/range {v33 .. v33}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v40

    if-nez v40, :cond_1d2

    .line 2378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->continueDataModels:Ljava/util/ArrayList;
    invoke-static/range {v40 .. v40}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1700(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/ArrayList;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v40

    if-nez v40, :cond_1c6

    .line 2379
    iget-object v0, v4, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    add-int/lit8 v41, v19, -0x3

    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->required:Z

    move/from16 v40, v0

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_1ba

    .line 2380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    sget v41, Lcom/bzbs/lib/survey/R$string;->msg_alert_survey:I

    invoke-virtual/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto :goto_150

    .line 2384
    :cond_1ba
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto :goto_15c

    .line 2387
    :cond_1c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto :goto_15c

    .line 2389
    :cond_1d2
    invoke-virtual/range {v21 .. v21}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v40

    if-nez v40, :cond_249

    .line 2390
    sget v40, Lcom/bzbs/lib/survey/R$id;->etFieldInputImage:I

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 2391
    .local v13, "etFieldInputImage":Landroid/widget/TextView;
    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v40

    if-nez v40, :cond_23c

    .line 2392
    iget-object v0, v4, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    add-int/lit8 v41, v19, -0x3

    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->required:Z

    move/from16 v40, v0

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_22f

    .line 2393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    sget v41, Lcom/bzbs/lib/survey/R$string;->msg_alert_survey:I

    invoke-virtual/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_150

    .line 2397
    :cond_22f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_15c

    .line 2400
    :cond_23c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_15c

    .line 2402
    .end local v13    # "etFieldInputImage":Landroid/widget/TextView;
    :cond_249
    invoke-virtual/range {v28 .. v28}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v40

    if-nez v40, :cond_292

    .line 2403
    sget v40, Lcom/bzbs/lib/survey/R$id;->etFieldInputRate:I

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 2404
    .local v16, "etFieldInputRate":Landroid/widget/TextView;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v40

    const-string/jumbo v41, ""

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_279

    .line 2405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_150

    .line 2408
    :cond_279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    sget v41, Lcom/bzbs/lib/survey/R$string;->msg_alert_survey:I

    invoke-virtual/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_15c

    .line 2411
    .end local v16    # "etFieldInputRate":Landroid/widget/TextView;
    :cond_292
    invoke-virtual/range {v25 .. v25}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v40

    if-nez v40, :cond_2db

    .line 2412
    sget v40, Lcom/bzbs/lib/survey/R$id;->etFieldInputMode:I

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 2413
    .local v15, "etFieldInputMode":Landroid/widget/TextView;
    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v40

    const-string/jumbo v41, ""

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_2c2

    .line 2414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_150

    .line 2417
    :cond_2c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    sget v41, Lcom/bzbs/lib/survey/R$string;->msg_alert_survey:I

    invoke-virtual/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_15c

    .line 2420
    .end local v15    # "etFieldInputMode":Landroid/widget/TextView;
    :cond_2db
    invoke-virtual/range {v27 .. v27}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v40

    if-nez v40, :cond_335

    .line 2421
    sget v40, Lcom/bzbs/lib/survey/R$id;->etFieldInputLocation:I

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 2422
    .local v14, "etFieldInputLocation":Landroid/widget/TextView;
    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v40

    const-string/jumbo v41, ""

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_31c

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v40

    const-string/jumbo v41, "0.0,0.0"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_31c

    .line 2423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_150

    .line 2426
    :cond_31c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    sget v41, Lcom/bzbs/lib/survey/R$string;->msg_alert_survey:I

    invoke-virtual/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_15c

    .line 2429
    .end local v14    # "etFieldInputLocation":Landroid/widget/TextView;
    :cond_335
    invoke-virtual/range {v30 .. v30}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v40

    if-nez v40, :cond_466

    .line 2430
    sget v40, Lcom/bzbs/lib/survey/R$id;->tvFieldAnswer:I

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 2431
    .local v8, "chkFieldChoice":Landroid/widget/CheckBox;
    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v40

    if-eqz v40, :cond_44d

    .line 2432
    iget-object v0, v4, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->force_correct_answer:Z

    move/from16 v40, v0

    if-eqz v40, :cond_40d

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v4, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    add-int/lit8 v42, v19, -0x3

    move-object/from16 v0, v40

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->index:I

    move/from16 v40, v0

    move-object/from16 v0, v41

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, ""

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    iget-object v0, v4, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->answer:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_40d

    .line 2433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    sget v41, Lcom/bzbs/lib/survey/R$string;->survey_wrong_answer:I

    invoke-virtual/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    sget v41, Lcom/bzbs/lib/survey/R$string;->dialog_title_address:I

    invoke-virtual/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2435
    .local v6, "alertTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    # operator++ for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->incorrectTime:I
    invoke-static/range {v40 .. v40}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$908(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    .line 2436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->incorrectTime:I
    invoke-static/range {v40 .. v40}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$900(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;
    invoke-static/range {v41 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v41

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraSurvey:Lcom/bzbs/lib/survey/bean/CampaignExtraSurvey;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurvey;->Incorrect_limit:I

    move/from16 v41, v0

    move/from16 v0, v40

    move/from16 v1, v41

    if-le v0, v1, :cond_3f5

    .line 2437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->reset()V

    goto/16 :goto_150

    .line 2440
    :cond_3f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    # invokes: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->alertDialogMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v6, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$3500(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_150

    .line 2445
    .end local v6    # "alertTitle":Ljava/lang/String;
    :cond_40d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->incorrectTime:I
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$902(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;I)I

    .line 2446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    .line 2447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v41, v0

    iget-object v0, v4, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    add-int/lit8 v42, v19, -0x3

    move-object/from16 v0, v40

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->direct_choice:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->strNextPage:Ljava/lang/String;

    goto/16 :goto_150

    .line 2452
    :cond_44d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    sget v41, Lcom/bzbs/lib/survey/R$string;->msg_alert_survey:I

    invoke-virtual/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_15c

    .line 2456
    .end local v8    # "chkFieldChoice":Landroid/widget/CheckBox;
    :cond_466
    invoke-virtual/range {v22 .. v22}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v40

    if-nez v40, :cond_4ca

    .line 2457
    sget v40, Lcom/bzbs/lib/survey/R$id;->chkFieldCheckbox:I

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 2459
    .local v7, "chkFieldCheckbox":Landroid/widget/CheckBox;
    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v40

    if-eqz v40, :cond_48b

    .line 2460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_150

    .line 2463
    :cond_48b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    sget v41, Lcom/bzbs/lib/survey/R$string;->msg_alert_survey:I

    invoke-virtual/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    .line 2467
    const-string/jumbo v40, "OAT"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " actionSubmitValidtvFieldCheckbox= "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15c

    .line 2468
    .end local v7    # "chkFieldCheckbox":Landroid/widget/CheckBox;
    :cond_4ca
    invoke-virtual/range {v31 .. v31}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v40

    if-nez v40, :cond_5b6

    .line 2469
    sget v40, Lcom/bzbs/lib/survey/R$id;->tvFieldAnswerBox:I

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/CheckBox;

    .line 2470
    .local v37, "tvFieldAnswerBox":Landroid/widget/CheckBox;
    sget v40, Lcom/bzbs/lib/survey/R$id;->etFieldInputAnswer:I

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 2471
    .local v10, "etFieldInputAnswer":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const-string/jumbo v41, "input_method"

    invoke-virtual/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodManager;

    .line 2472
    .local v18, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v10}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v40

    const/16 v41, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2473
    invoke-virtual/range {v37 .. v37}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v40

    if-eqz v40, :cond_541

    .line 2474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v41, v0

    iget-object v0, v4, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    add-int/lit8 v42, v19, -0x3

    move-object/from16 v0, v40

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->direct_choice:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->strNextPage:Ljava/lang/String;

    .line 2475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_150

    .line 2478
    :cond_541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    sget v41, Lcom/bzbs/lib/survey/R$string;->msg_alert_survey:I

    invoke-virtual/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    .line 2481
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v40

    if-lez v40, :cond_577

    .line 2482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_150

    .line 2485
    :cond_577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    sget v41, Lcom/bzbs/lib/survey/R$string;->msg_alert_survey:I

    invoke-virtual/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    .line 2490
    const-string/jumbo v40, "OAT"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " actionSubmitValidtvFieldAnswer= "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15c

    .line 2491
    .end local v10    # "etFieldInputAnswer":Landroid/widget/EditText;
    .end local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v37    # "tvFieldAnswerBox":Landroid/widget/CheckBox;
    :cond_5b6
    invoke-virtual/range {v23 .. v23}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v40

    if-nez v40, :cond_68c

    .line 2492
    sget v40, Lcom/bzbs/lib/survey/R$id;->chkFieldChoice:I

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 2493
    .restart local v8    # "chkFieldChoice":Landroid/widget/CheckBox;
    sget v40, Lcom/bzbs/lib/survey/R$id;->etFieldInputChoice:I

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 2494
    .local v11, "etFieldInputChoice":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const-string/jumbo v41, "input_method"

    invoke-virtual/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodManager;

    .line 2495
    .restart local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v11}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v40

    const/16 v41, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2497
    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v40

    if-eqz v40, :cond_605

    .line 2498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_150

    .line 2501
    :cond_605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    sget v41, Lcom/bzbs/lib/survey/R$string;->msg_alert_survey:I

    invoke-virtual/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    .line 2505
    sget v40, Lcom/bzbs/lib/survey/R$id;->layoutInfoChoiceEdt:I

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/RelativeLayout;

    .line 2506
    .local v24, "layoutInfoChoiceEdt":Landroid/widget/RelativeLayout;
    invoke-virtual/range {v24 .. v24}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v40

    if-nez v40, :cond_664

    .line 2507
    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v40

    if-lez v40, :cond_64d

    .line 2508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_150

    .line 2511
    :cond_64d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    sget v41, Lcom/bzbs/lib/survey/R$string;->msg_alert_survey:I

    invoke-virtual/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    .line 2516
    :cond_664
    const-string/jumbo v40, "OAT"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " actionSubmitValidchkFieldChoice= "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15c

    .line 2517
    .end local v8    # "chkFieldChoice":Landroid/widget/CheckBox;
    .end local v11    # "etFieldInputChoice":Landroid/widget/EditText;
    .end local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v24    # "layoutInfoChoiceEdt":Landroid/widget/RelativeLayout;
    :cond_68c
    invoke-virtual/range {v26 .. v26}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v40

    if-nez v40, :cond_971

    .line 2518
    sget v40, Lcom/bzbs/lib/survey/R$id;->etFieldInput:I

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 2519
    .local v9, "etFieldInput":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const-string/jumbo v41, "input_method"

    invoke-virtual/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodManager;

    .line 2520
    .restart local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v9}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v40

    const/16 v41, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2521
    invoke-virtual {v9}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v40

    if-eqz v40, :cond_790

    invoke-virtual {v9}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v40

    const-string/jumbo v41, "mobile"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_790

    .line 2522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;
    invoke-static/range {v40 .. v40}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v40

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->ID:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->mActivity:Landroid/app/Activity;
    invoke-static/range {v41 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$2700(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/app/Activity;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/bzbs/lib/survey/LibUserLogin;->getCampaignTrueWallet(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_708

    .line 2523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v41

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->contact_number:Ljava/lang/String;
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$3602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2525
    :cond_708
    iget-object v0, v4, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    add-int/lit8 v41, v19, -0x3

    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->required:Z

    move/from16 v40, v0

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_753

    .line 2527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const-string/jumbo v41, "([0\\\\+]+[0-9]{9})"

    const-string/jumbo v42, "invalid phone number"

    const/16 v43, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v0, v9, v1, v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->isValid(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v41

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    .line 2528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    sget v41, Lcom/bzbs/lib/survey/R$string;->msg_alert_invalid_phone:I

    invoke-virtual/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2529
    goto/16 :goto_150

    .line 2530
    :cond_753
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v40

    if-eqz v40, :cond_790

    .line 2531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const-string/jumbo v41, "([0\\\\+]+[0-9]{9})"

    const-string/jumbo v42, "invalid phone number"

    const/16 v43, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v0, v9, v1, v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->isValid(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v41

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    .line 2532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    sget v41, Lcom/bzbs/lib/survey/R$string;->msg_alert_invalid_phone:I

    invoke-virtual/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2533
    goto/16 :goto_150

    .line 2536
    :cond_790
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v40

    if-nez v40, :cond_80e

    .line 2537
    iget-object v0, v4, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    add-int/lit8 v41, v19, -0x3

    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->required:Z

    move/from16 v40, v0

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_7db

    .line 2538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    sget v41, Lcom/bzbs/lib/survey/R$string;->msg_alert_survey:I

    invoke-virtual/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_150

    .line 2542
    :cond_7db
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    .line 2569
    :cond_7e6
    const-string/jumbo v40, "OAT"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " actionSubmitValidetFieldInput= "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15c

    .line 2545
    :cond_80e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    .line 2546
    iget-object v0, v4, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    add-int/lit8 v41, v19, -0x3

    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->type:Ljava/lang/String;

    move-object/from16 v40, v0

    const-string/jumbo v41, "number"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_85a

    .line 2547
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v36

    .line 2548
    .local v36, "mEditText":Ljava/lang/String;
    const-string/jumbo v40, "[0-9]+"

    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_893

    .line 2549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    .line 2556
    .end local v36    # "mEditText":Ljava/lang/String;
    :cond_85a
    invoke-virtual {v9}, Landroid/widget/EditText;->getInputType()I

    move-result v40

    const/16 v41, 0x20

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_8ac

    .line 2557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->validateEmail(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_8ac

    .line 2558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    sget v41, Lcom/bzbs/lib/survey/R$string;->toast_email_invalid:I

    invoke-virtual/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_150

    .line 2551
    .restart local v36    # "mEditText":Ljava/lang/String;
    :cond_893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    sget v41, Lcom/bzbs/lib/survey/R$string;->edt_field_number_only:I

    invoke-virtual/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_150

    .line 2563
    .end local v36    # "mEditText":Ljava/lang/String;
    :cond_8ac
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v41

    iget-object v0, v4, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    add-int/lit8 v42, v19, -0x3

    move-object/from16 v0, v40

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->min_length:I

    move/from16 v40, v0

    move/from16 v0, v41

    move/from16 v1, v40

    if-ge v0, v1, :cond_7e6

    .line 2564
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v41, v0

    sget v42, Lcom/bzbs/lib/survey/R$string;->edt_field_min_max1:I

    invoke-virtual/range {v41 .. v42}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, " "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    iget-object v0, v4, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    add-int/lit8 v42, v19, -0x3

    move-object/from16 v0, v40

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->caption:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, " "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v41, v0

    sget v42, Lcom/bzbs/lib/survey/R$string;->edt_field_min_max2:I

    invoke-virtual/range {v41 .. v42}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, " "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    iget-object v0, v4, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    add-int/lit8 v42, v19, -0x3

    move-object/from16 v0, v40

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->min_length:I

    move/from16 v40, v0

    move-object/from16 v0, v41

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_150

    .line 2570
    .end local v9    # "etFieldInput":Landroid/widget/EditText;
    .end local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_971
    invoke-virtual/range {v35 .. v35}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v40

    if-nez v40, :cond_a06

    .line 2571
    sget v40, Lcom/bzbs/lib/survey/R$id;->etFieldInputTime:I

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 2572
    .local v9, "etFieldInput":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const-string/jumbo v41, "input_method"

    invoke-virtual/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodManager;

    .line 2573
    .restart local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v9}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v40

    const/16 v41, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2574
    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v40

    if-nez v40, :cond_9f9

    .line 2575
    iget-object v0, v4, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    add-int/lit8 v41, v19, -0x3

    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->required:Z

    move/from16 v40, v0

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_9ec

    .line 2576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    sget v41, Lcom/bzbs/lib/survey/R$string;->msg_alert_survey:I

    invoke-virtual/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_150

    .line 2580
    :cond_9ec
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_15c

    .line 2583
    :cond_9f9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_15c

    .line 2585
    .end local v9    # "etFieldInput":Landroid/widget/TextView;
    .end local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_a06
    invoke-virtual/range {v20 .. v20}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v40

    if-nez v40, :cond_a9b

    .line 2586
    sget v40, Lcom/bzbs/lib/survey/R$id;->etFieldInputDate:I

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 2587
    .restart local v9    # "etFieldInput":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const-string/jumbo v41, "input_method"

    invoke-virtual/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodManager;

    .line 2588
    .restart local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v9}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v40

    const/16 v41, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2589
    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v40

    if-nez v40, :cond_a8e

    .line 2590
    iget-object v0, v4, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    add-int/lit8 v41, v19, -0x3

    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->required:Z

    move/from16 v40, v0

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_a81

    .line 2591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    sget v41, Lcom/bzbs/lib/survey/R$string;->msg_alert_survey:I

    invoke-virtual/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_150

    .line 2595
    :cond_a81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_15c

    .line 2598
    :cond_a8e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_15c

    .line 2600
    .end local v9    # "etFieldInput":Landroid/widget/TextView;
    .end local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_a9b
    invoke-virtual/range {v29 .. v29}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v40

    if-nez v40, :cond_15c

    .line 2601
    sget v40, Lcom/bzbs/lib/survey/R$id;->etFieldTextArea:I

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    .line 2602
    .local v17, "etFieldTextArea":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const-string/jumbo v41, "input_method"

    invoke-virtual/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodManager;

    .line 2603
    .restart local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v40

    const/16 v41, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2604
    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v40

    if-nez v40, :cond_aea

    .line 2605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_15c

    .line 2607
    :cond_aea
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static/range {v40 .. v41}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    goto/16 :goto_15c
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 1021
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 977
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasText(Landroid/widget/EditText;)Z
    .registers 4
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 1954
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1955
    .local v0, "text":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1958
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_18

    .line 1960
    const/4 v1, 0x0

    .line 1963
    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x1

    goto :goto_17
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 10
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 987
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq p2, v4, :cond_61

    .line 988
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    .line 989
    .local v0, "adBuzzItem":Lcom/bzbs/lib/survey/bean/AdBuzzItem;
    iget-object v4, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraAdItem:Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;

    if-eqz v4, :cond_57

    .line 990
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v4, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->listCampaignExtra:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->incorrectTime:I
    invoke-static {v4, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$902(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;I)I

    .line 992
    iget-object v4, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraAdItem:Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;->Content_type:Ljava/lang/String;

    const-string/jumbo v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 993
    invoke-direct {p0, v0, p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->initialViewVideo(Lcom/bzbs/lib/survey/bean/AdBuzzItem;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 994
    .local v3, "viewVideo":Landroid/view/View;
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    invoke-virtual {p1, v3, v6}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 997
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/bzbs/lib/survey/control/CustomPager;->setPagingEnabled(Z)V

    .line 1015
    .end local v3    # "viewVideo":Landroid/view/View;
    :goto_41
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->gViewRoot:Landroid/view/View;

    return-object v4

    .line 1000
    .restart local p1    # "container":Landroid/view/ViewGroup;
    :cond_44
    invoke-direct {p0, v0, p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->initialViewPhoto(Lcom/bzbs/lib/survey/bean/AdBuzzItem;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1001
    .local v1, "viewPhoto":Landroid/view/View;
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    invoke-virtual {p1, v1, v6}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 1002
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/bzbs/lib/survey/control/CustomPager;->setPagingEnabled(Z)V

    goto :goto_41

    .line 1006
    .end local v1    # "viewPhoto":Landroid/view/View;
    .restart local p1    # "container":Landroid/view/ViewGroup;
    :cond_57
    invoke-direct {p0, v0, p1, p2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->initialViewSurvey(Lcom/bzbs/lib/survey/bean/AdBuzzItem;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v2

    .line 1007
    .local v2, "viewSurvey":Landroid/view/View;
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    invoke-virtual {p1, v2, v6}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    goto :goto_41

    .line 1010
    .end local v0    # "adBuzzItem":Lcom/bzbs/lib/survey/bean/AdBuzzItem;
    .end local v2    # "viewSurvey":Landroid/view/View;
    .restart local p1    # "container":Landroid/view/ViewGroup;
    :cond_61
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    .line 1011
    .restart local v0    # "adBuzzItem":Lcom/bzbs/lib/survey/bean/AdBuzzItem;
    invoke-direct {p0, v0, p1, p2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->initialViewDescription(Lcom/bzbs/lib/survey/bean/AdBuzzItem;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v2

    .line 1012
    .restart local v2    # "viewSurvey":Landroid/view/View;
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    invoke-virtual {p1, v2, v6}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    goto :goto_41
.end method

.method public isValid(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 8
    .param p1, "editText"    # Landroid/widget/EditText;
    .param p2, "regex"    # Ljava/lang/String;
    .param p3, "errMsg"    # Ljava/lang/String;
    .param p4, "required"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1933
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1935
    .local v0, "text":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1938
    if-eqz p4, :cond_1a

    invoke-virtual {p0, p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->hasText(Landroid/widget/EditText;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1947
    :cond_19
    :goto_19
    return v1

    .line 1941
    :cond_1a
    if-eqz p4, :cond_22

    invoke-static {p2, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1947
    :cond_22
    const/4 v1, 0x1

    goto :goto_19
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 982
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public resetSurveyKeyboard(I)V
    .registers 21
    .param p1, "position"    # I

    .prologue
    .line 2765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;
    invoke-static/range {v17 .. v17}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 2766
    .local v16, "view_pager_survey":Landroid/view/View;
    sget v17, Lcom/bzbs/lib/survey/R$id;->layoutRootSurvey:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 2767
    .local v14, "layoutRootSurvey":Landroid/widget/LinearLayout;
    if-eqz v14, :cond_126

    .line 2769
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1d
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_126

    .line 2770
    invoke-virtual {v14, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 2771
    .local v15, "view_field_row":Landroid/view/View;
    sget v17, Lcom/bzbs/lib/survey/R$id;->layoutQuestion:I

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 2772
    .local v12, "layoutQuestion":Landroid/widget/RelativeLayout;
    if-eqz v12, :cond_63

    .line 2773
    sget v17, Lcom/bzbs/lib/survey/R$id;->layoutInfoChoice:I

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 2774
    .local v9, "layoutInfoChoice":Landroid/widget/RelativeLayout;
    sget v17, Lcom/bzbs/lib/survey/R$id;->layoutInfoInput:I

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 2775
    .local v10, "layoutInfoInput":Landroid/widget/RelativeLayout;
    sget v17, Lcom/bzbs/lib/survey/R$id;->layoutInfoTextArea:I

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 2776
    .local v11, "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    sget v17, Lcom/bzbs/lib/survey/R$id;->layoutQuestionwithBox:I

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    .line 2778
    .local v13, "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    invoke-virtual {v12}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v17

    if-nez v17, :cond_66

    .line 2769
    .end local v9    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .end local v10    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .end local v11    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    .end local v13    # "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    :cond_63
    :goto_63
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    .line 2780
    .restart local v9    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .restart local v10    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .restart local v11    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    .restart local v13    # "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    :cond_66
    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v17

    if-nez v17, :cond_9d

    .line 2781
    sget v17, Lcom/bzbs/lib/survey/R$id;->chkFieldChoice:I

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 2782
    .local v2, "chkFieldChoice":Landroid/widget/CheckBox;
    sget v17, Lcom/bzbs/lib/survey/R$id;->etFieldInputChoice:I

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 2783
    .local v5, "etFieldInputChoice":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v17, v0

    const-string/jumbo v18, "input_method"

    invoke-virtual/range {v17 .. v18}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodManager;

    .line 2784
    .local v7, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v5}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_63

    .line 2785
    .end local v2    # "chkFieldChoice":Landroid/widget/CheckBox;
    .end local v5    # "etFieldInputChoice":Landroid/widget/EditText;
    .end local v7    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_9d
    invoke-virtual {v13}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v17

    if-nez v17, :cond_ca

    .line 2786
    sget v17, Lcom/bzbs/lib/survey/R$id;->etFieldInputAnswer:I

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 2787
    .local v4, "etFieldInputAnswer":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v17, v0

    const-string/jumbo v18, "input_method"

    invoke-virtual/range {v17 .. v18}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodManager;

    .line 2788
    .restart local v7    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_63

    .line 2789
    .end local v4    # "etFieldInputAnswer":Landroid/widget/EditText;
    .end local v7    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_ca
    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v17

    if-nez v17, :cond_f8

    .line 2790
    sget v17, Lcom/bzbs/lib/survey/R$id;->etFieldInput:I

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 2791
    .local v3, "etFieldInput":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v17, v0

    const-string/jumbo v18, "input_method"

    invoke-virtual/range {v17 .. v18}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodManager;

    .line 2792
    .restart local v7    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_63

    .line 2793
    .end local v3    # "etFieldInput":Landroid/widget/EditText;
    .end local v7    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_f8
    invoke-virtual {v11}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v17

    if-nez v17, :cond_63

    .line 2794
    sget v17, Lcom/bzbs/lib/survey/R$id;->etFieldTextArea:I

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 2795
    .local v6, "etFieldTextArea":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v17, v0

    const-string/jumbo v18, "input_method"

    invoke-virtual/range {v17 .. v18}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodManager;

    .line 2796
    .restart local v7    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v6}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_63

    .line 2801
    .end local v6    # "etFieldTextArea":Landroid/widget/EditText;
    .end local v7    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v8    # "j":I
    .end local v9    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .end local v10    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .end local v11    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    .end local v12    # "layoutQuestion":Landroid/widget/RelativeLayout;
    .end local v13    # "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    .end local v15    # "view_field_row":Landroid/view/View;
    :cond_126
    return-void
.end method
