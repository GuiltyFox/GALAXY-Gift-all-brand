.class public Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;


# static fields
.field private static ai:Ljava/io/File;

.field private static aj:Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/lib/survey/models/ContinueDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private D:I

.field private E:Landroid/app/Activity;

.field private F:Lcom/bzbs/lib/survey/util/GPSTracker;

.field private G:Lcom/bzbs/lib/survey/bean/Campaign;

.field private H:Ljava/lang/String;

.field private I:Landroid/graphics/Typeface;

.field private J:Landroid/app/ProgressDialog;

.field private K:Landroid/os/Handler;

.field private L:Lcom/bzbs/lib/survey/util/ConnectionDetector;

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:Z

.field private R:Lcom/bzbs/lib/survey/control/CustomPager;

.field private S:Landroid/widget/ImageView;

.field private T:Landroid/widget/ImageView;

.field private U:Landroid/widget/TextView;

.field private V:I

.field private W:I

.field private X:Z

.field private Y:Ljava/lang/String;

.field private Z:I

.field a:Landroid/view/View;

.field private aA:I

.field private aB:Ljava/lang/String;

.field private aC:Ljava/lang/String;

.field private aD:J

.field private aE:Ljava/lang/String;

.field private aF:Ljava/lang/String;

.field private aG:Lorg/json/JSONArray;

.field private aH:Lorg/json/JSONArray;

.field private aa:I

.field private ab:Landroid/view/SurfaceView;

.field private ac:Landroid/media/MediaPlayer;

.field private ad:Lcom/bzbs/lib/survey/control/VideoControllerView;

.field private ae:Lcom/bzbs/lib/survey/bean/StackModel;

.field private af:Z

.field private ag:Lcom/bzbs/lib/survey/util/async/PostData;

.field private ah:Landroid/net/Uri;

.field private ak:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private al:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private am:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private an:I

.field private ao:I

.field private ap:I

.field private aq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private ar:Landroid/widget/TextView;

.field private as:Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;

.field private final at:I

.field private final au:I

.field private final av:I

.field private final aw:I

.field private final ax:I

.field private final ay:I

.field private az:I

.field b:Landroid/widget/ProgressBar;

.field c:Z

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;",
            ">;"
        }
    .end annotation
.end field

.field k:I

.field l:Landroid/widget/ScrollView;

.field m:D

.field n:D

.field o:I

.field p:Z

.field q:I

.field r:Landroid/widget/LinearLayout$LayoutParams;

.field s:Ljava/util/Calendar;

.field t:Ljava/util/Calendar;

.field u:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

.field v:Ljava/lang/String;

.field w:Ljava/lang/String;

.field x:Ljava/lang/String;

.field y:Ljava/lang/String;

.field z:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 147
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->A:Ljava/lang/String;

    .line 152
    iput v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->D:I

    .line 153
    iput-object p0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->E:Landroid/app/Activity;

    .line 156
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->H:Ljava/lang/String;

    .line 169
    iput-boolean v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->Q:Z

    .line 175
    iput v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->V:I

    .line 176
    iput v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->W:I

    .line 177
    iput-boolean v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->X:Z

    .line 178
    const-class v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->Y:Ljava/lang/String;

    .line 179
    iput v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->Z:I

    .line 181
    iput v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aa:I

    .line 194
    iput-boolean v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->c:Z

    .line 195
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d:Ljava/lang/String;

    .line 196
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->e:Ljava/lang/String;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->f:Ljava/util/ArrayList;

    .line 198
    new-instance v0, Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-direct {v0}, Lcom/bzbs/lib/survey/bean/StackModel;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ae:Lcom/bzbs/lib/survey/bean/StackModel;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->g:Ljava/util/ArrayList;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->i:Ljava/util/ArrayList;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->j:Ljava/util/ArrayList;

    .line 203
    iput v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->k:I

    .line 208
    iput v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->o:I

    .line 209
    iput-boolean v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->p:Z

    .line 210
    iput-boolean v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->af:Z

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ak:Ljava/util/List;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->al:Ljava/util/List;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->am:Ljava/util/List;

    .line 225
    iput v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->q:I

    .line 228
    const/16 v0, 0x7b

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->an:I

    .line 229
    const/16 v0, 0x270f

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ao:I

    .line 230
    const/16 v0, 0x270e

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ap:I

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aq:Ljava/util/List;

    .line 625
    iput v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->at:I

    .line 626
    iput v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->au:I

    .line 627
    const/4 v0, 0x2

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->av:I

    .line 628
    const/4 v0, 0x3

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aw:I

    .line 629
    const/4 v0, 0x4

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ax:I

    .line 630
    const/4 v0, 0x5

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ay:I

    .line 631
    const/16 v0, -0x63

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->az:I

    .line 632
    const/16 v0, -0x64

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aA:I

    .line 820
    const-string/jumbo v0, "Update => \"None\""

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->v:Ljava/lang/String;

    .line 821
    const-string/jumbo v0, "Remove => \"None\""

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->w:Ljava/lang/String;

    .line 822
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->x:Ljava/lang/String;

    .line 823
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->y:Ljava/lang/String;

    .line 3869
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->z:J

    .line 4403
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aB:Ljava/lang/String;

    .line 4404
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aC:Ljava/lang/String;

    return-void
.end method

.method static synthetic A(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I
    .registers 3

    .prologue
    .line 145
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->V:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->V:I

    return v0
.end method

.method private A()V
    .registers 7

    .prologue
    .line 4476
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->q()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 4477
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->q()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 4478
    const/4 v2, 0x0

    .line 4480
    :try_start_12
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->q()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_19} :catch_31

    move-result-object v1

    .line 4484
    :goto_1a
    if-eqz v1, :cond_37

    .line 4485
    new-instance v0, Lcom/bzbs/lib/survey/bean/MissionAlert;

    invoke-direct {v0, v1}, Lcom/bzbs/lib/survey/bean/MissionAlert;-><init>(Lorg/json/JSONObject;)V

    .line 4486
    iget-object v1, v0, Lcom/bzbs/lib/survey/bean/MissionAlert;->a:Ljava/lang/String;

    iget v2, v0, Lcom/bzbs/lib/survey/bean/MissionAlert;->c:I

    iget-object v3, v0, Lcom/bzbs/lib/survey/bean/MissionAlert;->b:Ljava/lang/String;

    const-string/jumbo v4, ""

    sget-object v5, Lcom/bzbs/lib/survey/bean/StatusAlertDialog;->a:Lcom/bzbs/lib/survey/bean/StatusAlertDialog;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/bzbs/lib/survey/bean/StatusAlertDialog;)V

    .line 4491
    :cond_30
    return-void

    .line 4481
    :catch_31
    move-exception v1

    .line 4482
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v2

    goto :goto_1a

    .line 4477
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method static synthetic B(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I
    .registers 2

    .prologue
    .line 145
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aA:I

    return v0
.end method

.method private B()Landroid/view/View;
    .registers 18

    .prologue
    .line 4745
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->R:Lcom/bzbs/lib/survey/control/CustomPager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->R:Lcom/bzbs/lib/survey/control/CustomPager;

    invoke-virtual {v2}, Lcom/bzbs/lib/survey/control/CustomPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4746
    sget v2, Lcom/bzbs/lib/survey/R$id;->layoutRootSurvey:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 4747
    if-eqz v1, :cond_106

    .line 4748
    const/4 v2, 0x0

    move v15, v2

    :goto_1c
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v15, v2, :cond_106

    .line 4749
    invoke-virtual {v1, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 4750
    sget v2, Lcom/bzbs/lib/survey/R$id;->layoutQuestion:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 4751
    if-eqz v2, :cond_101

    .line 4752
    sget v2, Lcom/bzbs/lib/survey/R$id;->layoutInfoChoice:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 4753
    sget v3, Lcom/bzbs/lib/survey/R$id;->layoutInfoCheckbox:I

    invoke-virtual {v14, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 4754
    sget v4, Lcom/bzbs/lib/survey/R$id;->layoutInfoInput:I

    invoke-virtual {v14, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 4755
    sget v5, Lcom/bzbs/lib/survey/R$id;->layoutDate:I

    invoke-virtual {v14, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 4756
    sget v6, Lcom/bzbs/lib/survey/R$id;->layoutTime:I

    invoke-virtual {v14, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 4757
    sget v7, Lcom/bzbs/lib/survey/R$id;->layoutInfoTextArea:I

    invoke-virtual {v14, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 4758
    sget v8, Lcom/bzbs/lib/survey/R$id;->layoutQuestionwithBox:I

    invoke-virtual {v14, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 4759
    sget v9, Lcom/bzbs/lib/survey/R$id;->layoutScanCodeInput:I

    invoke-virtual {v14, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 4760
    sget v10, Lcom/bzbs/lib/survey/R$id;->layoutScanCodeContinuousInput:I

    invoke-virtual {v14, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 4761
    sget v11, Lcom/bzbs/lib/survey/R$id;->layoutImageInput:I

    invoke-virtual {v14, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 4762
    sget v12, Lcom/bzbs/lib/survey/R$id;->layoutInfoRate:I

    invoke-virtual {v14, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 4763
    sget v13, Lcom/bzbs/lib/survey/R$id;->layoutInfoEmotion:I

    invoke-virtual {v14, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 4764
    sget v16, Lcom/bzbs/lib/survey/R$id;->layoutInfoLocation:I

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 4766
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v16

    if-nez v16, :cond_a1

    .line 4796
    :goto_a0
    return-object v2

    .line 4768
    :cond_a1
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_a9

    move-object v2, v3

    .line 4769
    goto :goto_a0

    .line 4770
    :cond_a9
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_b1

    move-object v2, v4

    .line 4771
    goto :goto_a0

    .line 4772
    :cond_b1
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_b9

    move-object v2, v5

    .line 4773
    goto :goto_a0

    .line 4774
    :cond_b9
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_c1

    move-object v2, v6

    .line 4775
    goto :goto_a0

    .line 4776
    :cond_c1
    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_c9

    move-object v2, v7

    .line 4777
    goto :goto_a0

    .line 4778
    :cond_c9
    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_d1

    move-object v2, v8

    .line 4779
    goto :goto_a0

    .line 4780
    :cond_d1
    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_d9

    move-object v2, v9

    .line 4781
    goto :goto_a0

    .line 4782
    :cond_d9
    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_e1

    move-object v2, v10

    .line 4783
    goto :goto_a0

    .line 4784
    :cond_e1
    invoke-virtual {v11}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_e9

    move-object v2, v11

    .line 4785
    goto :goto_a0

    .line 4786
    :cond_e9
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_f1

    move-object v2, v12

    .line 4787
    goto :goto_a0

    .line 4788
    :cond_f1
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_f9

    move-object v2, v13

    .line 4789
    goto :goto_a0

    .line 4790
    :cond_f9
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_101

    move-object v2, v14

    .line 4791
    goto :goto_a0

    .line 4748
    :cond_101
    add-int/lit8 v2, v15, 0x1

    move v15, v2

    goto/16 :goto_1c

    .line 4796
    :cond_106
    const/4 v2, 0x0

    goto :goto_a0
.end method

.method static synthetic C(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->J:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic D(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I
    .registers 3

    .prologue
    .line 145
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->W:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->W:I

    return v0
.end method

.method static synthetic E(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I
    .registers 2

    .prologue
    .line 145
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->W:I

    return v0
.end method

.method static synthetic F(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->H:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic G(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I
    .registers 2

    .prologue
    .line 145
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->P:I

    return v0
.end method

.method static synthetic H(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/view/SurfaceView;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ab:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic I(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/VideoControllerView;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ad:Lcom/bzbs/lib/survey/control/VideoControllerView;

    return-object v0
.end method

.method static synthetic J(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/media/MediaPlayer;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic K(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->Y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic L(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->K:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic M(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic N(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/util/async/PostData;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    return-object v0
.end method

.method static synthetic O(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aB:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic P(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V
    .registers 1

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->A()V

    return-void
.end method

.method static synthetic Q(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V
    .registers 1

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->z()V

    return-void
.end method

.method static synthetic a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;I)I
    .registers 2

    .prologue
    .line 145
    iput p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->W:I

    return p1
.end method

.method static synthetic a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 145
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->J:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2

    .prologue
    .line 145
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Landroid/view/SurfaceView;)Landroid/view/SurfaceView;
    .registers 2

    .prologue
    .line 145
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ab:Landroid/view/SurfaceView;

    return-object p1
.end method

.method static synthetic a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 145
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ar:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Lcom/bzbs/lib/survey/bean/Campaign;)Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;
    .registers 3

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/bean/Campaign;)Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/bzbs/lib/survey/bean/Campaign;)Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;
    .registers 12

    .prologue
    const-wide/16 v8, 0x6270

    const-wide/16 v6, 0x3e8

    .line 4407
    sget-object v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

    .line 4408
    iget-wide v2, p1, Lcom/bzbs/lib/survey/bean/Campaign;->H:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_a8

    .line 4409
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p1, Lcom/bzbs/lib/survey/bean/Campaign;->H:J

    sub-long/2addr v2, v8

    mul-long/2addr v2, v6

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 4410
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 4412
    invoke-virtual {v2, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 4413
    iget v1, p1, Lcom/bzbs/lib/survey/bean/Campaign;->s:I

    if-eqz v1, :cond_46

    iget v1, p1, Lcom/bzbs/lib/survey/bean/Campaign;->aa:I

    iget v2, p1, Lcom/bzbs/lib/survey/bean/Campaign;->s:I

    if-lt v1, v2, :cond_46

    .line 4414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\n\n*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/bzbs/lib/survey/bean/Campaign;->ad:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aB:Ljava/lang/String;

    .line 4415
    sget-object v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

    .line 4435
    :cond_46
    :goto_46
    return-object v0

    .line 4418
    :cond_47
    sget-object v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

    .line 4420
    iget v1, p1, Lcom/bzbs/lib/survey/bean/Campaign;->s:I

    if-eqz v1, :cond_6e

    iget v1, p1, Lcom/bzbs/lib/survey/bean/Campaign;->aa:I

    iget v2, p1, Lcom/bzbs/lib/survey/bean/Campaign;->s:I

    if-lt v1, v2, :cond_6e

    .line 4422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\n\n*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/bzbs/lib/survey/bean/Campaign;->ad:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aB:Ljava/lang/String;

    .line 4423
    sget-object v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

    goto :goto_46

    .line 4426
    :cond_6e
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "dd MMM yyyy HH:mm"

    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/lib/survey/util/LanguageSetting;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p1, Lcom/bzbs/lib/survey/bean/Campaign;->H:J

    sub-long/2addr v4, v8

    mul-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 4427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aB:Ljava/lang/String;

    goto :goto_46

    .line 4431
    :cond_a8
    iget v1, p1, Lcom/bzbs/lib/survey/bean/Campaign;->s:I

    if-eqz v1, :cond_46

    iget v1, p1, Lcom/bzbs/lib/survey/bean/Campaign;->aa:I

    iget v2, p1, Lcom/bzbs/lib/survey/bean/Campaign;->s:I

    if-lt v1, v2, :cond_46

    .line 4432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\n\n*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/bzbs/lib/survey/bean/Campaign;->ad:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aB:Ljava/lang/String;

    .line 4433
    sget-object v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

    goto/16 :goto_46
.end method

.method static synthetic a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    return-object v0
.end method

.method static synthetic a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Lcom/bzbs/lib/survey/control/VideoControllerView;)Lcom/bzbs/lib/survey/control/VideoControllerView;
    .registers 2

    .prologue
    .line 145
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ad:Lcom/bzbs/lib/survey/control/VideoControllerView;

    return-object p1
.end method

.method static synthetic a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;)Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;
    .registers 2

    .prologue
    .line 145
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->as:Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;

    return-object p1
.end method

.method static synthetic a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Lcom/bzbs/lib/survey/util/GPSTracker;)Lcom/bzbs/lib/survey/util/GPSTracker;
    .registers 2

    .prologue
    .line 145
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->F:Lcom/bzbs/lib/survey/util/GPSTracker;

    return-object p1
.end method

.method static synthetic a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 145
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->B:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(ILcom/bzbs/lib/survey/bean/StackModel$PagesEntity;I)V
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 826
    if-eqz p2, :cond_cb

    .line 827
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    :cond_9
    :goto_9
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ae:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/bean/StackModel;->b()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_109

    move v1, v2

    .line 847
    :goto_12
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ae:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/bean/StackModel;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_109

    .line 848
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ae:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/bean/StackModel;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->a()I

    move-result v0

    if-ne v0, p1, :cond_101

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Update Page -> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->a()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", Stack => "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2}, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->b()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->v:Ljava/lang/String;

    .line 850
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ae:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/bean/StackModel;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    .line 856
    :goto_6c
    if-nez v0, :cond_75

    .line 857
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ae:Lcom/bzbs/lib/survey/bean/StackModel;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/bean/StackModel;->b(Ljava/util/ArrayList;)V

    .line 860
    :cond_75
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ae:Lcom/bzbs/lib/survey/bean/StackModel;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ae:Lcom/bzbs/lib/survey/bean/StackModel;

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ae:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v3}, Lcom/bzbs/lib/survey/bean/StackModel;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bzbs/lib/survey/bean/StackModel;->c(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/bean/StackModel;->a(Ljava/util/ArrayList;)V

    .line 861
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ae:Lcom/bzbs/lib/survey/bean/StackModel;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ae:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v1}, Lcom/bzbs/lib/survey/bean/StackModel;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/bean/StackModel;->c(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    .line 863
    :goto_94
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_ca

    .line 864
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, p1, :cond_106

    .line 865
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->az:I

    .line 866
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->az:I

    if-le v0, p3, :cond_106

    .line 867
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->az:I

    .line 872
    :cond_ca
    return-void

    .line 829
    :cond_cb
    new-instance p2, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;

    invoke-direct {p2}, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;-><init>()V

    .line 830
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->a(Ljava/util/ArrayList;)V

    .line 831
    invoke-virtual {p2, p1}, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->a(I)V

    move v1, v2

    .line 833
    :goto_d9
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_10c

    .line 834
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->a()I

    move-result v0

    invoke-virtual {p2}, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->a()I

    move-result v4

    if-ne v0, v4, :cond_fd

    move v0, v3

    .line 839
    :goto_f4
    if-nez v0, :cond_9

    .line 840
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 833
    :cond_fd
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d9

    .line 847
    :cond_101
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_12

    .line 863
    :cond_106
    add-int/lit8 v2, v2, 0x1

    goto :goto_94

    :cond_109
    move v0, v2

    goto/16 :goto_6c

    :cond_10c
    move v0, v2

    goto :goto_f4
.end method

.method private a(Landroid/widget/LinearLayout;)V
    .registers 10

    .prologue
    .line 4800
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->E:Landroid/app/Activity;

    const-string/jumbo v1, "layout_inflater"

    .line 4801
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 4802
    const/4 v1, 0x0

    move v5, v1

    :goto_d
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_59

    .line 4803
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->B:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/lib/survey/models/ContinueDataModel;

    .line 4805
    sget v2, Lcom/bzbs/lib/survey/R$layout;->bz_survey_continue_row:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 4807
    sget v2, Lcom/bzbs/lib/survey/R$id;->tv_model:I

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4808
    sget v3, Lcom/bzbs/lib/survey/R$id;->tv_serial:I

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 4809
    sget v4, Lcom/bzbs/lib/survey/R$id;->img_delete:I

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 4811
    invoke-virtual {v1}, Lcom/bzbs/lib/survey/models/ContinueDataModel;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4812
    invoke-virtual {v1}, Lcom/bzbs/lib/survey/models/ContinueDataModel;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4815
    new-instance v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;

    invoke-direct {v1, p0, v5, p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;ILandroid/widget/LinearLayout;)V

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4860
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4802
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_d

    .line 4862
    :cond_59
    return-void
.end method

.method static synthetic a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Landroid/widget/LinearLayout;)V
    .registers 2

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;ZZ)V
    .registers 3

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(ZZ)V

    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/bzbs/lib/survey/bean/StatusAlertDialog;)V
    .registers 14

    .prologue
    .line 4494
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p5

    move v4, p2

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;Lcom/bzbs/lib/survey/bean/StatusAlertDialog;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4560
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 4188
    new-instance v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$18;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$18;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4197
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 3543
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3544
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3545
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "No"

    new-instance v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$14;

    invoke-direct {v3, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$14;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "Yes"

    new-instance v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$13;

    invoke-direct {v3, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$13;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    .line 3550
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3557
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3558
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3559
    return-void
.end method

.method private a(Z)V
    .registers 13

    .prologue
    const/4 v10, 0x0

    .line 4590
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->m()J

    move-result-wide v0

    .line 4591
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->n()Ljava/lang/String;

    move-result-object v2

    .line 4592
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->o()Ljava/lang/String;

    move-result-object v3

    .line 4595
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4596
    new-instance v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$23;

    invoke-direct {v5, p0, p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$23;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)V

    .line 4629
    new-instance v6, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$24;

    invoke-direct {v6, p0, p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$24;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)V

    .line 4646
    new-instance v7, Ljava/text/DecimalFormat;

    const-string/jumbo v8, "###,###,###"

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 4648
    const-string/jumbo v8, ""

    .line 4649
    iget-object v8, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v8, v8, Lcom/bzbs/lib/survey/bean/Campaign;->G:Ljava/lang/String;

    const-string/jumbo v9, "6"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_57

    .line 4651
    sget v0, Lcom/bzbs/lib/survey/R$string;->survey_dialog_congrats_title:I

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "Yes"

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "No"

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4681
    :goto_4f
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 4682
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 4683
    return-void

    .line 4652
    :cond_57
    iget-object v8, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v8, v8, Lcom/bzbs/lib/survey/bean/Campaign;->G:Ljava/lang/String;

    const-string/jumbo v9, "5"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18f

    .line 4654
    const-string/jumbo v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_179

    .line 4656
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_163

    .line 4657
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/Campaign;->aq:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/CampaignExtra;->c:Lcom/bzbs/lib/survey/bean/CampaignExtraAction;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/CampaignExtraAction;->a:Ljava/lang/String;

    const-string/jumbo v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 4658
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/bzbs/lib/survey/R$string;->survey_dialog_congrats1:I

    invoke-virtual {p0, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/lib/survey/util/BBUtil;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/bzbs/lib/survey/R$string;->market_point:I

    invoke-virtual {p0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4659
    sget v1, Lcom/bzbs/lib/survey/R$string;->survey_dialog_congrats_title:I

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "OK"

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_4f

    .line 4661
    :cond_e8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/bzbs/lib/survey/R$string;->survey_dialog_congrats1:I

    invoke-virtual {p0, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/lib/survey/util/BBUtil;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/bzbs/lib/survey/R$string;->survey_dialog_congrats2:I

    invoke-virtual {p0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/lib/survey/bean/Campaign;->aq:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v1, v1, Lcom/bzbs/lib/survey/bean/CampaignExtra;->c:Lcom/bzbs/lib/survey/bean/CampaignExtraAction;

    iget-object v1, v1, Lcom/bzbs/lib/survey/bean/CampaignExtraAction;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4662
    sget v1, Lcom/bzbs/lib/survey/R$string;->survey_dialog_congrats_title:I

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "Yes"

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "No"

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_4f

    .line 4665
    :cond_163
    sget v0, Lcom/bzbs/lib/survey/R$string;->survey_dialog_congrats_title:I

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "OK"

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_4f

    .line 4668
    :cond_179
    sget v0, Lcom/bzbs/lib/survey/R$string;->survey_dialog_congrats_title:I

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "OK"

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_4f

    .line 4672
    :cond_18f
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/Campaign;->aq:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/CampaignExtra;->c:Lcom/bzbs/lib/survey/bean/CampaignExtraAction;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/CampaignExtraAction;->a:Ljava/lang/String;

    const-string/jumbo v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_201

    .line 4673
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/bzbs/lib/survey/R$string;->survey_dialog_congrats1:I

    invoke-virtual {p0, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/lib/survey/util/BBUtil;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/bzbs/lib/survey/R$string;->market_point:I

    invoke-virtual {p0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4674
    sget v1, Lcom/bzbs/lib/survey/R$string;->survey_dialog_congrats_title:I

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "OK"

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_4f

    .line 4676
    :cond_201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/bzbs/lib/survey/R$string;->survey_dialog_congrats1:I

    invoke-virtual {p0, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/lib/survey/util/BBUtil;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/bzbs/lib/survey/R$string;->survey_dialog_congrats2:I

    invoke-virtual {p0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/lib/survey/bean/Campaign;->aq:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v1, v1, Lcom/bzbs/lib/survey/bean/CampaignExtra;->c:Lcom/bzbs/lib/survey/bean/CampaignExtraAction;

    iget-object v1, v1, Lcom/bzbs/lib/survey/bean/CampaignExtraAction;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4677
    sget v1, Lcom/bzbs/lib/survey/R$string;->survey_dialog_congrats_title:I

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "Yes"

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "No"

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_4f
.end method

.method private a(ZZ)V
    .registers 4

    .prologue
    .line 4254
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(ZZZ)V

    .line 4255
    return-void
.end method

.method private a(ZZZ)V
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 4278
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->c:Ljava/lang/String;

    const-string/jumbo v1, "70"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 4279
    const-string/jumbo v0, "content://someURI"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4280
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4281
    const-string/jumbo v0, "json_redeem"

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->as:Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4282
    invoke-virtual {p0, v4, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 4283
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->finish()V

    .line 4295
    :cond_32
    const-string/jumbo v0, "GalaxyReward"

    const-string/jumbo v1, "GalaxyReward"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 4299
    const-string/jumbo v0, "content://someURI"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4300
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4301
    const-string/jumbo v0, "campaignId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/Campaign;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4302
    const-string/jumbo v0, "OAT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "paramCampaign.ID= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/Campaign;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4303
    invoke-virtual {p0, v4, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 4308
    :cond_89
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->finish()V

    .line 4310
    invoke-direct {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->t()V

    .line 4325
    :try_start_8f
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->aq:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->c:Lcom/bzbs/lib/survey/bean/CampaignExtraAction;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraAction;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "open link"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 4326
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->G:Ljava/lang/String;

    const-string/jumbo v1, "6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 4327
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->aq:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->c:Lcom/bzbs/lib/survey/bean/CampaignExtraAction;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraAction;->d:Ljava/lang/String;

    .line 4328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{token}"

    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/lib/survey/LibUserLogin;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&contace_number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4329
    const-string/jumbo v1, "campaign.adbuzz"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(url and_link)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4339
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$19;

    invoke-direct {v2, p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$19;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4396
    :cond_10b
    :goto_10b
    return-void

    .line 4349
    :cond_10c
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->aq:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->c:Lcom/bzbs/lib/survey/bean/CampaignExtraAction;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraAction;->b:Ljava/lang/String;

    .line 4350
    const-string/jumbo v1, "{token}"

    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/lib/survey/LibUserLogin;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 4351
    const-string/jumbo v1, "campaign.adbuzz"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(url open link)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4361
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$20;

    invoke-direct {v2, p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$20;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_14c
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_14c} :catch_14d

    goto :goto_10b

    .line 4392
    :catch_14d
    move-exception v0

    goto :goto_10b
.end method

.method private a(ILjava/lang/String;)Z
    .registers 11

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 635
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->R:Lcom/bzbs/lib/survey/control/CustomPager;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildCount()I

    .line 636
    iget v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->o:I

    .line 637
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->k:I

    add-int/2addr v0, v4

    .line 638
    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->R:Lcom/bzbs/lib/survey/control/CustomPager;

    invoke-virtual {v3}, Lcom/bzbs/lib/survey/control/CustomPager;->getCurrentItem()I

    move-result v3

    add-int/2addr v3, v4

    sub-int/2addr v0, v3

    .line 639
    iget v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->k:I

    sub-int v5, v3, v0

    .line 641
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->o:I

    if-nez v0, :cond_26

    move v0, v1

    .line 648
    :goto_1f
    invoke-direct {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->u()V

    .line 650
    packed-switch p1, :pswitch_data_3cc

    .line 817
    :cond_25
    :goto_25
    return v1

    .line 643
    :cond_26
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->o:I

    if-le v0, v1, :cond_31

    .line 644
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->o:I

    mul-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_31
    move v0, v2

    .line 646
    goto :goto_1f

    .line 652
    :pswitch_33
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    .line 653
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int v0, v2, v0

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->az:I

    .line 654
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_58

    .line 655
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->R:Lcom/bzbs/lib/survey/control/CustomPager;

    invoke-virtual {v2}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 657
    :cond_58
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    iget v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->az:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 661
    :pswitch_64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    .line 662
    add-int/lit8 v0, v5, 0x1

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->az:I

    .line 663
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    iget v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->az:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 666
    :pswitch_7b
    const-string/jumbo v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_eb

    .line 667
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 668
    const/16 v3, -0xb

    if-ne v2, v3, :cond_a9

    .line 669
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    add-int/lit8 v3, v5, 0x1

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Ljava/util/ArrayList;I)Z

    move-result v2

    if-nez v2, :cond_25

    .line 670
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    add-int/lit8 v3, v5, 0x1

    sub-int v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    invoke-direct {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->u()V

    goto/16 :goto_25

    .line 674
    :cond_a9
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_d1

    .line 675
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->R:Lcom/bzbs/lib/survey/control/CustomPager;

    invoke-virtual {v2}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildCount()I

    move-result v2

    invoke-static {v0, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Ljava/util/ArrayList;I)Z

    move-result v0

    if-nez v0, :cond_25

    .line 676
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->R:Lcom/bzbs/lib/survey/control/CustomPager;

    invoke-virtual {v2}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    invoke-direct {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->u()V

    goto/16 :goto_25

    .line 680
    :cond_d1
    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    sub-int v4, v2, v0

    invoke-static {v3, v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Ljava/util/ArrayList;I)Z

    move-result v3

    if-nez v3, :cond_25

    .line 681
    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    sub-int v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    invoke-direct {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->u()V

    goto/16 :goto_25

    .line 687
    :cond_eb
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    add-int/lit8 v2, v5, 0x1

    invoke-static {v0, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Ljava/util/ArrayList;I)Z

    move-result v0

    if-nez v0, :cond_25

    .line 688
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    add-int/lit8 v2, v5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    invoke-direct {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->u()V

    goto/16 :goto_25

    .line 694
    :pswitch_105
    const-string/jumbo v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16d

    .line 695
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 696
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_147

    .line 697
    :goto_118
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_142

    .line 698
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->R:Lcom/bzbs/lib/survey/control/CustomPager;

    invoke-virtual {v3}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13f

    .line 699
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 697
    :cond_13f
    add-int/lit8 v2, v2, 0x1

    goto :goto_118

    .line 702
    :cond_142
    invoke-direct {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->u()V

    goto/16 :goto_25

    .line 704
    :cond_147
    :goto_147
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_25

    .line 705
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sub-int v5, v3, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16a

    .line 706
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 704
    :cond_16a
    add-int/lit8 v2, v2, 0x1

    goto :goto_147

    .line 711
    :cond_16d
    :goto_16d
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_25

    .line 712
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v5, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    .line 713
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 711
    :cond_190
    add-int/lit8 v2, v2, 0x1

    goto :goto_16d

    .line 719
    :pswitch_193
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1fc

    .line 720
    invoke-direct {p0, v5, v7, v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(ILcom/bzbs/lib/survey/bean/StackModel$PagesEntity;I)V

    .line 743
    :goto_19e
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->az:I

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->R:Lcom/bzbs/lib/survey/control/CustomPager;

    invoke-virtual {v2}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildCount()I

    move-result v2

    if-ne v0, v2, :cond_25c

    .line 744
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->R:Lcom/bzbs/lib/survey/control/CustomPager;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->R:Lcom/bzbs/lib/survey/control/CustomPager;

    invoke-virtual {v2}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildCount()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bzbs/lib/survey/control/CustomPager;->setCurrentItem(I)V

    .line 749
    :goto_1b3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Stack Next All => "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ae:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v3}, Lcom/bzbs/lib/survey/bean/StackModel;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->x:Ljava/lang/String;

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "To page => "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->az:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->y:Ljava/lang/String;

    .line 761
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    .line 762
    invoke-direct {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->v()I

    goto/16 :goto_25

    .line 723
    :cond_1fc
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ae:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/bean/StackModel;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_242

    .line 724
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ae:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/bean/StackModel;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_242

    move v3, v2

    .line 725
    :goto_211
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ae:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/bean/StackModel;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_242

    .line 726
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ae:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/bean/StackModel;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v5, :cond_258

    .line 727
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ae:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/bean/StackModel;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->az:I

    move v2, v1

    .line 735
    :cond_242
    if-nez v2, :cond_248

    .line 736
    add-int/lit8 v0, v5, 0x1

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->az:I

    .line 739
    :cond_248
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    iget v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->az:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    invoke-direct {p0, v5, v7, v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(ILcom/bzbs/lib/survey/bean/StackModel$PagesEntity;I)V

    goto/16 :goto_19e

    .line 725
    :cond_258
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_211

    .line 746
    :cond_25c
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->R:Lcom/bzbs/lib/survey/control/CustomPager;

    iget v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->az:I

    invoke-virtual {v0, v2}, Lcom/bzbs/lib/survey/control/CustomPager;->setCurrentItem(I)V

    goto/16 :goto_1b3

    .line 765
    :pswitch_265
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ae:Lcom/bzbs/lib/survey/bean/StackModel;

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ae:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v3}, Lcom/bzbs/lib/survey/bean/StackModel;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Lcom/bzbs/lib/survey/bean/StackModel;->b(Ljava/util/ArrayList;I)I

    move-result v3

    .line 766
    const/16 v0, -0x63

    if-eq v3, v0, :cond_2c8

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Remove Page -> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ae:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/bean/StackModel;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->a()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " => "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ae:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/bean/StackModel;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->w:Ljava/lang/String;

    .line 768
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ae:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/bean/StackModel;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 771
    :cond_2c8
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ae:Lcom/bzbs/lib/survey/bean/StackModel;

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ae:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v3}, Lcom/bzbs/lib/survey/bean/StackModel;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bzbs/lib/survey/bean/StackModel;->c(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    .line 772
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ae:Lcom/bzbs/lib/survey/bean/StackModel;

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ae:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v3}, Lcom/bzbs/lib/survey/bean/StackModel;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bzbs/lib/survey/bean/StackModel;->d(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->i:Ljava/util/ArrayList;

    .line 773
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ae:Lcom/bzbs/lib/survey/bean/StackModel;

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Lcom/bzbs/lib/survey/bean/StackModel;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->i:Ljava/util/ArrayList;

    .line 775
    invoke-direct {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->u()V

    .line 778
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_2fc
    if-ltz v3, :cond_321

    .line 779
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->R:Lcom/bzbs/lib/survey/control/CustomPager;

    invoke-virtual {v4}, Lcom/bzbs/lib/survey/control/CustomPager;->getCurrentItem()I

    move-result v4

    if-ge v0, v4, :cond_3a4

    .line 781
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->az:I

    move v2, v1

    .line 786
    :cond_321
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ae:Lcom/bzbs/lib/survey/bean/StackModel;

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ae:Lcom/bzbs/lib/survey/bean/StackModel;

    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ae:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v4}, Lcom/bzbs/lib/survey/bean/StackModel;->b()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bzbs/lib/survey/bean/StackModel;->c(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bzbs/lib/survey/bean/StackModel;->a(Ljava/util/ArrayList;)V

    .line 787
    if-eqz v2, :cond_3a9

    .line 788
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ae:Lcom/bzbs/lib/survey/bean/StackModel;

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ae:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v3}, Lcom/bzbs/lib/survey/bean/StackModel;->b()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->az:I

    invoke-virtual {v0, v3, v4}, Lcom/bzbs/lib/survey/bean/StackModel;->a(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    .line 793
    :goto_344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Stack Back All => "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->x:Ljava/lang/String;

    .line 805
    iput-boolean v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->X:Z

    .line 807
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->u:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->b()I

    move-result v0

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->R:Lcom/bzbs/lib/survey/control/CustomPager;

    invoke-virtual {v3}, Lcom/bzbs/lib/survey/control/CustomPager;->getCurrentItem()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-eq v0, v3, :cond_3b2

    .line 808
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->u:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->R:Lcom/bzbs/lib/survey/control/CustomPager;

    invoke-virtual {v2}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    iget v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aa:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->e(I)V

    .line 809
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->u:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->R:Lcom/bzbs/lib/survey/control/CustomPager;

    invoke-virtual {v2}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    iget v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aa:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->b(I)Ljava/lang/String;

    .line 815
    :cond_39b
    :goto_39b
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->R:Lcom/bzbs/lib/survey/control/CustomPager;

    iget v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->az:I

    invoke-virtual {v0, v2}, Lcom/bzbs/lib/survey/control/CustomPager;->setCurrentItem(I)V

    goto/16 :goto_25

    .line 778
    :cond_3a4
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto/16 :goto_2fc

    .line 790
    :cond_3a9
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ae:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/bean/StackModel;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    goto :goto_344

    .line 811
    :cond_3b2
    if-nez v2, :cond_39b

    .line 812
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->az:I

    goto :goto_39b

    .line 650
    nop

    :pswitch_data_3cc
    .packed-switch 0x0
        :pswitch_7b
        :pswitch_105
        :pswitch_193
        :pswitch_265
        :pswitch_33
        :pswitch_64
    .end packed-switch
.end method

.method static synthetic a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;ILjava/lang/String;)Z
    .registers 4

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z
    .registers 2

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->X:Z

    return p1
.end method

.method public static a(Ljava/util/ArrayList;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 922
    .line 925
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 926
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 927
    add-int/lit8 v0, v1, 0x1

    :goto_26
    move v1, v0

    .line 929
    goto :goto_6

    .line 931
    :cond_28
    if-lez v1, :cond_2b

    .line 932
    const/4 v2, 0x1

    .line 935
    :cond_2b
    return v2

    :cond_2c
    move v0, v1

    goto :goto_26
.end method

.method static synthetic b(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;I)I
    .registers 2

    .prologue
    .line 145
    iput p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aa:I

    return p1
.end method

.method private b(I)Landroid/net/Uri;
    .registers 3

    .prologue
    .line 3671
    invoke-direct {p0, p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->c(I)Ljava/io/File;

    move-result-object v0

    .line 3672
    if-eqz v0, :cond_b

    .line 3673
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 3675
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static synthetic b(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->A:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 145
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->C:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic b(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V
    .registers 1

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->r()V

    return-void
.end method

.method static synthetic b(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)V
    .registers 2

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 4563
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$22;

    invoke-direct {v1, p0, p1, p2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$22;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4587
    return-void
.end method

.method static synthetic c(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;I)I
    .registers 2

    .prologue
    .line 145
    iput p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->az:I

    return p1
.end method

.method private c(I)Ljava/io/File;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 3681
    :try_start_1
    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {p0}, Lcom/bzbs/lib/survey/LibConst;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3682
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 3683
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 3703
    :cond_1c
    :goto_1c
    return-object v0

    .line 3688
    :cond_1d
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyyMMdd_HHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 3689
    const/16 v3, 0x64

    if-ne p1, v3, :cond_90

    .line 3690
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "BB_IMG_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aj:Ljava/lang/String;

    .line 3691
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "BB_IMG_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ai:Ljava/io/File;

    .line 3698
    :goto_8d
    sget-object v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ai:Ljava/io/File;

    goto :goto_1c

    .line 3692
    :cond_90
    const/16 v3, 0xc8

    if-ne p1, v3, :cond_1c

    .line 3693
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "VID_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ai:Ljava/io/File;
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c4} :catch_c5

    goto :goto_8d

    .line 3700
    :catch_c5
    move-exception v1

    .line 3701
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1c
.end method

.method static synthetic c(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V
    .registers 1

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->s()V

    return-void
.end method

.method static synthetic c(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;I)I
    .registers 2

    .prologue
    .line 145
    iput p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->V:I

    return p1
.end method

.method static synthetic d(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->R:Lcom/bzbs/lib/survey/control/CustomPager;

    return-object v0
.end method

.method static synthetic d(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aC:Ljava/lang/String;

    return-object p1
.end method

.method private d(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 3307
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->K:Landroid/os/Handler;

    new-instance v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$11;

    invoke-direct {v1, p0, p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$11;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3314
    return-void
.end method

.method static synthetic e(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I
    .registers 2

    .prologue
    .line 145
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->Z:I

    return v0
.end method

.method private e(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 4869
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->E:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4872
    const/4 v2, 0x1

    :try_start_8
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_b} :catch_c

    .line 4877
    :goto_b
    return v0

    .line 4874
    :catch_c
    move-exception v0

    .line 4875
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static synthetic f(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I
    .registers 2

    .prologue
    .line 145
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aa:I

    return v0
.end method

.method static synthetic g(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Z
    .registers 2

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->X:Z

    return v0
.end method

.method static synthetic h(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I
    .registers 2

    .prologue
    .line 145
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->O:I

    return v0
.end method

.method static synthetic i(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->T:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic j(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->S:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic k(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->U:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->I:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic m(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/List;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aq:Ljava/util/List;

    return-object v0
.end method

.method static synthetic n(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I
    .registers 2

    .prologue
    .line 145
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->an:I

    return v0
.end method

.method static synthetic o(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->C:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic p(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I
    .registers 2

    .prologue
    .line 145
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ap:I

    return v0
.end method

.method static synthetic q(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I
    .registers 2

    .prologue
    .line 145
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ao:I

    return v0
.end method

.method static synthetic r(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->B:Ljava/util/ArrayList;

    return-object v0
.end method

.method private r()V
    .registers 4

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 426
    const-string/jumbo v0, "campaign"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 427
    const-string/jumbo v0, "campaign"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/bean/Campaign;

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    .line 428
    const-string/jumbo v0, "ThemePrimary"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->D:I

    .line 429
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ThemePrimary => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->D:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 430
    new-instance v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$3;

    invoke-direct {v0, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$3;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 437
    :cond_45
    return-void
.end method

.method static synthetic s(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/List;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->al:Ljava/util/List;

    return-object v0
.end method

.method private s()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 442
    sget v0, Lcom/bzbs/lib/survey/R$id;->vp_survey_list:I

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/control/CustomPager;

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->R:Lcom/bzbs/lib/survey/control/CustomPager;

    .line 443
    sget v0, Lcom/bzbs/lib/survey/R$id;->imgBack:I

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->S:Landroid/widget/ImageView;

    .line 444
    sget v0, Lcom/bzbs/lib/survey/R$id;->imgNext:I

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->T:Landroid/widget/ImageView;

    .line 445
    sget v0, Lcom/bzbs/lib/survey/R$id;->imgRestart:I

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 446
    sget v1, Lcom/bzbs/lib/survey/R$id;->imgExit:I

    invoke-virtual {p0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 447
    sget v2, Lcom/bzbs/lib/survey/R$id;->tvPage:I

    invoke-virtual {p0, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->U:Landroid/widget/TextView;

    .line 449
    new-instance v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$4;

    invoke-direct {v2, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$4;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    new-instance v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$5;

    invoke-direct {v0, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$5;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->S:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->T:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->aq:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->a:Lcom/bzbs/lib/survey/bean/CampaignExtraAd;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_71

    .line 471
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->aq:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->a:Lcom/bzbs/lib/survey/bean/CampaignExtraAd;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 474
    :cond_71
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->R:Lcom/bzbs/lib/survey/control/CustomPager;

    invoke-virtual {v0, v3}, Lcom/bzbs/lib/survey/control/CustomPager;->setPagingEnabled(Z)V

    .line 475
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->R:Lcom/bzbs/lib/survey/control/CustomPager;

    new-instance v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$6;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$6;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/control/CustomPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 495
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 496
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->aq:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->a:Lcom/bzbs/lib/survey/bean/CampaignExtraAd;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->a:Ljava/lang/String;

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 497
    new-instance v1, Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->aq:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->a:Lcom/bzbs/lib/survey/bean/CampaignExtraAd;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;

    invoke-direct {v1, v0}, Lcom/bzbs/lib/survey/bean/AdBuzzItem;-><init>(Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    iput v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->o:I

    .line 499
    iput-boolean v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->p:Z

    .line 506
    :goto_b0
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->aq:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurvey;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurvey;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_119

    .line 507
    :goto_ba
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->aq:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurvey;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurvey;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_119

    .line 508
    new-instance v1, Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->aq:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurvey;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurvey;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    invoke-direct {v1, v0}, Lcom/bzbs/lib/survey/bean/AdBuzzItem;-><init>(Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    add-int/lit8 v3, v3, 0x1

    goto :goto_ba

    :cond_e1
    move v1, v3

    .line 501
    :goto_e2
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->aq:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->a:Lcom/bzbs/lib/survey/bean/CampaignExtraAd;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_10a

    .line 502
    new-instance v4, Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->aq:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->a:Lcom/bzbs/lib/survey/bean/CampaignExtraAd;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;

    invoke-direct {v4, v0}, Lcom/bzbs/lib/survey/bean/AdBuzzItem;-><init>(Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e2

    .line 504
    :cond_10a
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->aq:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->a:Lcom/bzbs/lib/survey/bean/CampaignExtraAd;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->o:I

    goto :goto_b0

    .line 513
    :cond_119
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14e

    .line 514
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iput-boolean v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->d:Z

    .line 515
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->Z:I

    .line 516
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->U:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Page\n 1/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->Z:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    :cond_14e
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->o:I

    if-nez v0, :cond_16b

    .line 520
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 521
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->s:Ljava/util/Calendar;

    .line 522
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->s:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 523
    const-string/jumbo v0, "OAT"

    const-string/jumbo v1, "START"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_16b
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->aq:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->c:Lcom/bzbs/lib/survey/bean/CampaignExtraAction;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraAction;->h:Ljava/lang/String;

    if-eqz v0, :cond_17f

    .line 527
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->aq:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->c:Lcom/bzbs/lib/survey/bean/CampaignExtraAction;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraAction;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->H:Ljava/lang/String;

    .line 529
    :cond_17f
    new-instance v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    invoke-direct {v0, p0, p0, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->u:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    .line 530
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->R:Lcom/bzbs/lib/survey/control/CustomPager;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->u:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/control/CustomPager;->a(Landroid/support/v4/view/PagerAdapter;)V

    .line 531
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->R:Lcom/bzbs/lib/survey/control/CustomPager;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->u:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    invoke-virtual {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/control/CustomPager;->setOffscreenPageLimit(I)V

    .line 533
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->T:Landroid/widget/ImageView;

    new-instance v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 599
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->S:Landroid/widget/ImageView;

    new-instance v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 621
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->b:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 622
    return-void
.end method

.method static synthetic t(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/List;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->am:Ljava/util/List;

    return-object v0
.end method

.method private t()V
    .registers 5

    .prologue
    .line 875
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d:Ljava/lang/String;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 876
    new-instance v0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;

    invoke-direct {v0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;-><init>()V

    .line 877
    invoke-virtual {v0, p0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->a(Landroid/content/Context;)Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;

    move-result-object v0

    const-string/jumbo v1, "PERMISSION CALL_PHONE Denied"

    .line 878
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.CALL_PHONE"

    aput-object v3, v1, v2

    .line 879
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->a([Ljava/lang/String;)Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;

    move-result-object v0

    new-instance v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$9;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$9;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    .line 880
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->a(Lcom/bzbs/lib/survey/util/AddOnPermissions;)Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;

    move-result-object v0

    .line 894
    invoke-virtual {v0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->a()Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    .line 896
    :cond_38
    return-void
.end method

.method static synthetic u(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/List;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ak:Ljava/util/List;

    return-object v0
.end method

.method private u()V
    .registers 3

    .prologue
    .line 899
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->i:Ljava/util/ArrayList;

    new-instance v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$IntegerComparator;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$IntegerComparator;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 900
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->h:Ljava/util/ArrayList;

    new-instance v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$IntegerComparator;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$IntegerComparator;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 903
    return-void
.end method

.method private v()I
    .registers 2

    .prologue
    .line 914
    const/16 v0, -0x63

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->az:I

    return v0
.end method

.method static synthetic v(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/util/GPSTracker;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->F:Lcom/bzbs/lib/survey/util/GPSTracker;

    return-object v0
.end method

.method static synthetic w(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->E:Landroid/app/Activity;

    return-object v0
.end method

.method private w()Z
    .registers 3

    .prologue
    .line 4144
    const-string/jumbo v0, "location"

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 4145
    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 4146
    invoke-direct {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->x()V

    .line 4147
    const/4 v0, 0x1

    .line 4149
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private x()V
    .registers 4

    .prologue
    .line 4154
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4155
    const-string/jumbo v1, "enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4156
    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 4158
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "location_providers_allowed"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4159
    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 4160
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4161
    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.widget.SettingsAppWidgetProvider"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4162
    const-string/jumbo v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4163
    const-string/jumbo v1, "3"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4164
    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_48

    .line 4169
    :cond_47
    :goto_47
    return-void

    .line 4166
    :catch_48
    move-exception v0

    .line 4167
    const-string/jumbo v0, "This device is not support"

    invoke-direct {p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Ljava/lang/String;)V

    goto :goto_47
.end method

.method static synthetic x(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Z
    .registers 2

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->w()Z

    move-result v0

    return v0
.end method

.method static synthetic y(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ar:Landroid/widget/TextView;

    return-object v0
.end method

.method private y()V
    .registers 4

    .prologue
    .line 4173
    :try_start_0
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "location_providers_allowed"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4174
    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 4175
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4176
    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.widget.SettingsAppWidgetProvider"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4177
    const-string/jumbo v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4178
    const-string/jumbo v1, "3"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4179
    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    .line 4185
    :cond_35
    :goto_35
    return-void

    .line 4182
    :catch_36
    move-exception v0

    goto :goto_35
.end method

.method private z()V
    .registers 7

    .prologue
    .line 4458
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->p()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 4459
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->p()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 4460
    const/4 v2, 0x0

    .line 4462
    :try_start_12
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->p()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_19} :catch_30

    move-result-object v1

    .line 4466
    :goto_1a
    if-eqz v1, :cond_36

    .line 4467
    new-instance v0, Lcom/bzbs/lib/survey/bean/BadgeAlert;

    invoke-direct {v0, v1}, Lcom/bzbs/lib/survey/bean/BadgeAlert;-><init>(Lorg/json/JSONObject;)V

    .line 4468
    iget-object v1, v0, Lcom/bzbs/lib/survey/bean/BadgeAlert;->a:Ljava/lang/String;

    iget v2, v0, Lcom/bzbs/lib/survey/bean/BadgeAlert;->i:I

    iget-object v3, v0, Lcom/bzbs/lib/survey/bean/BadgeAlert;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/bzbs/lib/survey/bean/BadgeAlert;->d:Ljava/lang/String;

    sget-object v5, Lcom/bzbs/lib/survey/bean/StatusAlertDialog;->b:Lcom/bzbs/lib/survey/bean/StatusAlertDialog;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/bzbs/lib/survey/bean/StatusAlertDialog;)V

    .line 4473
    :cond_2f
    return-void

    .line 4463
    :catch_30
    move-exception v1

    .line 4464
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v2

    goto :goto_1a

    .line 4459
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method static synthetic z(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Z
    .registers 2

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->Q:Z

    return v0
.end method


# virtual methods
.method public a(F)I
    .registers 4

    .prologue
    .line 4138
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 4140
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public a()V
    .registers 4

    .prologue
    .line 3317
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->af:Z

    .line 3318
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3319
    const-string/jumbo v1, "campaign"

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3320
    const-string/jumbo v1, "isReset"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3321
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3322
    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 3323
    return-void
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 3359
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 3360
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 3362
    :cond_9
    return-void
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 4697
    iput-wide p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aD:J

    .line 4698
    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .registers 2

    .prologue
    .line 4721
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aG:Lorg/json/JSONArray;

    .line 4722
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 3530
    const-string/jumbo v0, "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

    .line 3531
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 3532
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3533
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 3327
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 3328
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 3330
    :cond_9
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 4705
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aE:Ljava/lang/String;

    .line 4706
    return-void
.end method

.method public b(Lorg/json/JSONArray;)V
    .registers 2

    .prologue
    .line 4729
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aH:Lorg/json/JSONArray;

    .line 4730
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 3334
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 3335
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 3337
    :cond_9
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 4713
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aF:Ljava/lang/String;

    .line 4714
    return-void
.end method

.method public d()I
    .registers 2

    .prologue
    .line 3341
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    .line 3342
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 3344
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public deleteMedia(Landroid/view/View;)V
    .registers 6

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 3648
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    if-eqz v0, :cond_2c

    .line 3649
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/async/PostData;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_22

    .line 3650
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/async/PostData;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3651
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/async/PostData;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3653
    :cond_1e
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    iput-object v2, v0, Lcom/bzbs/lib/survey/util/async/PostData;->f:Landroid/graphics/Bitmap;

    .line 3655
    :cond_22
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/async/PostData;->e:Landroid/net/Uri;

    if-eqz v0, :cond_2c

    .line 3656
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    iput-object v2, v0, Lcom/bzbs/lib/survey/util/async/PostData;->e:Landroid/net/Uri;

    .line 3659
    :cond_2c
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->al:Ljava/util/List;

    iget v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->q:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 3660
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->al:Ljava/util/List;

    iget v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->q:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3661
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->al:Ljava/util/List;

    iget v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->q:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3662
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->am:Ljava/util/List;

    iget v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->q:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3663
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ak:Ljava/util/List;

    iget v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->q:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3664
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->al:Ljava/util/List;

    iget v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->q:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3668
    :cond_7d
    return-void
.end method

.method public e()I
    .registers 2

    .prologue
    .line 3350
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    .line 3351
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 3353
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 3366
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    .line 3367
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 3369
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public g()I
    .registers 2

    .prologue
    .line 3375
    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 3380
    const/4 v0, 0x1

    return v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 3385
    const/4 v0, 0x0

    return v0
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 3390
    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .registers 2

    .prologue
    .line 3395
    const/4 v0, 0x0

    return v0
.end method

.method public l()V
    .registers 1

    .prologue
    .line 3401
    return-void
.end method

.method public m()J
    .registers 3

    .prologue
    .line 4693
    iget-wide v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aD:J

    return-wide v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4701
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aE:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4709
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aF:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 12

    .prologue
    const/4 v7, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 3708
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 3714
    const/16 v0, 0x26b5

    if-ne p1, v0, :cond_1a

    .line 3715
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$15;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$15;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3728
    :cond_1a
    if-ne p2, v2, :cond_e2

    const/16 v0, 0xb

    if-ne p1, v0, :cond_e2

    .line 3730
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/bzbs/lib/survey/util/async/PostData;->e:Landroid/net/Uri;

    .line 3731
    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v0, "_data"

    aput-object v0, v2, v6

    .line 3732
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/async/PostData;->e:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3733
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3734
    aget-object v1, v2, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 3735
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3736
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3738
    invoke-static {v1}, Lcom/bzbs/lib/survey/util/image/Utils;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3739
    if-nez v2, :cond_5d

    .line 3740
    sget v0, Lcom/bzbs/lib/survey/R$string;->post_check_your_picture:I

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Ljava/lang/String;)V

    .line 3867
    :cond_5c
    :goto_5c
    return-void

    .line 3743
    :cond_5d
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    if-eqz v0, :cond_7c

    .line 3744
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/async/PostData;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7c

    .line 3745
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/async/PostData;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 3746
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/async/PostData;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3748
    :cond_78
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    iput-object v3, v0, Lcom/bzbs/lib/survey/util/async/PostData;->f:Landroid/graphics/Bitmap;

    .line 3752
    :cond_7c
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    iput-object v2, v0, Lcom/bzbs/lib/survey/util/async/PostData;->f:Landroid/graphics/Bitmap;

    .line 3753
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->al:Ljava/util/List;

    iget v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->q:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_97

    .line 3754
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->al:Ljava/util/List;

    iget v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->q:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3756
    :cond_97
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->al:Ljava/util/List;

    iget v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->q:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3757
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->al:Ljava/util/List;

    iget v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->q:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3758
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->am:Ljava/util/List;

    iget v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->q:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3759
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->al:Ljava/util/List;

    iget v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->q:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3761
    if-eqz v2, :cond_d6

    .line 3762
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 3763
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 3767
    :cond_d6
    new-instance v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;

    invoke-direct {v0, p0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_5c

    .line 3769
    :cond_e2
    if-ne p2, v2, :cond_19c

    const/16 v0, 0x15

    if-ne p1, v0, :cond_19c

    .line 3770
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/async/PostData;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/lib/survey/util/image/Utils;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3771
    if-eqz v1, :cond_17b

    .line 3772
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    if-eqz v0, :cond_111

    .line 3773
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/async/PostData;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_111

    .line 3774
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/async/PostData;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 3775
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/async/PostData;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3777
    :cond_10d
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    iput-object v3, v0, Lcom/bzbs/lib/survey/util/async/PostData;->f:Landroid/graphics/Bitmap;

    .line 3781
    :cond_111
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    iput-object v1, v0, Lcom/bzbs/lib/survey/util/async/PostData;->f:Landroid/graphics/Bitmap;

    .line 3782
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->al:Ljava/util/List;

    iget v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->q:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12c

    .line 3783
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->al:Ljava/util/List;

    iget v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->q:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3785
    :cond_12c
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->al:Ljava/util/List;

    iget v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->q:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3786
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->al:Ljava/util/List;

    iget v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->q:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3787
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->am:Ljava/util/List;

    iget v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->q:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3788
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->al:Ljava/util/List;

    iget v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->q:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3790
    if-eqz v1, :cond_16b

    .line 3791
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_16b

    .line 3792
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 3797
    :cond_16b
    new-instance v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/async/PostData;->c:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_5c

    .line 3800
    :cond_17b
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    if-eqz v0, :cond_5c

    .line 3801
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/async/PostData;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5c

    .line 3802
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/async/PostData;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_196

    .line 3803
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/async/PostData;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3805
    :cond_196
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    iput-object v3, v0, Lcom/bzbs/lib/survey/util/async/PostData;->f:Landroid/graphics/Bitmap;

    goto/16 :goto_5c

    .line 3809
    :cond_19c
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->an:I

    if-ne p1, v0, :cond_1db

    .line 3810
    if-ne p2, v2, :cond_1d1

    .line 3811
    const-string/jumbo v0, "SCAN_RESULT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3812
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->Y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3813
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aq:Ljava/util/List;

    iget v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->q:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5c

    .line 3815
    :cond_1d1
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->Y:Ljava/lang/String;

    const-string/jumbo v1, "#5"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5c

    .line 3817
    :cond_1db
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ao:I

    if-ne p1, v0, :cond_27f

    .line 3818
    if-ne p2, v2, :cond_5c

    .line 3821
    invoke-direct {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->B()Landroid/view/View;

    move-result-object v1

    .line 3822
    if-eqz v1, :cond_5c

    .line 3823
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/bzbs/lib/survey/R$id;->layoutScanCodeContinuousInput:I

    if-ne v0, v2, :cond_5c

    .line 3824
    const-string/jumbo v0, "SCAN_RESULT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3825
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aq:Ljava/util/List;

    iget v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->q:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3828
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v6, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3831
    sget v0, Lcom/bzbs/lib/survey/R$id;->layout_continue:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move v4, v6

    .line 3832
    :goto_211
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v4, v1, :cond_5c

    .line 3833
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/bzbs/lib/survey/R$id;->etFieldInputCode:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 3835
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/bzbs/lib/survey/R$id;->layoutScanCodeInput:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 3836
    sget v3, Lcom/bzbs/lib/survey/R$id;->btnGetCode:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3837
    sget v3, Lcom/bzbs/lib/survey/R$id;->etFieldInputCode:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 3838
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_27b

    .line 3839
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aq:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->q:I

    .line 3840
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/bzbs/lib/survey/util/zxing/ScannerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3841
    const-string/jumbo v2, "com.google.zxing.client.android.SCAN.SCAN_MODE"

    const-string/jumbo v3, "QR_CODE_MODE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3842
    const-string/jumbo v2, "appName"

    sget v3, Lcom/bzbs/lib/survey/R$string;->my_app_buzzebee:I

    invoke-virtual {p0, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3843
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v0, v4, :cond_5c

    goto/16 :goto_5c

    .line 3832
    :cond_27b
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_211

    .line 3852
    :cond_27f
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ap:I

    if-ne p1, v0, :cond_5c

    .line 3853
    if-ne p2, v2, :cond_5c

    .line 3856
    invoke-direct {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->B()Landroid/view/View;

    move-result-object v0

    .line 3857
    if-eqz v0, :cond_5c

    .line 3858
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/bzbs/lib/survey/R$id;->layoutScanCodeContinuousInput:I

    if-ne v0, v1, :cond_5c

    .line 3859
    const-string/jumbo v0, "SCAN_RESULT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3860
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aq:Ljava/util/List;

    iget v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->q:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3862
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v7, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5c
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 3539
    sget v0, Lcom/bzbs/lib/survey/R$string;->app_name:I

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/bzbs/lib/survey/R$string;->survey_confirm_exit:I

    invoke-virtual {p0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3540
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 6

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x1

    .line 3432
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->af:Z

    if-nez v0, :cond_3d

    .line 3433
    iput-boolean v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->af:Z

    .line 3434
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-boolean v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->Q:Z

    if-ne v0, v2, :cond_64

    .line 3435
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ab:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 3436
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 3437
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->s:Ljava/util/Calendar;

    .line 3438
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->s:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 3441
    const/4 v0, 0x2

    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 3442
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->R:Lcom/bzbs/lib/survey/control/CustomPager;

    invoke-virtual {v1}, Lcom/bzbs/lib/survey/control/CustomPager;->getCurrentItem()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3470
    :cond_3d
    :goto_3d
    return-void

    .line 3447
    :cond_3e
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->R:Lcom/bzbs/lib/survey/control/CustomPager;

    invoke-virtual {v1}, Lcom/bzbs/lib/survey/control/CustomPager;->getCurrentItem()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3448
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->V:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->V:I

    .line 3449
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->R:Lcom/bzbs/lib/survey/control/CustomPager;

    iget v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->V:I

    invoke-virtual {v0, v1, v2}, Lcom/bzbs/lib/survey/control/CustomPager;->setCurrentItem(IZ)V

    .line 3450
    const-string/jumbo v0, "OAT"

    const-string/jumbo v1, "START"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 3452
    :cond_64
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ab:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 3453
    const-string/jumbo v0, ""

    .line 3454
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->ad:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 3455
    sget v0, Lcom/bzbs/lib/survey/R$string;->no_network_connection_toast:I

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3459
    :goto_7f
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3460
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v2, "OK"

    new-instance v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$12;

    invoke-direct {v3, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$12;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3466
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3467
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_3d

    .line 3457
    :cond_a0
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->ad:Ljava/lang/String;

    goto :goto_7f
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 4735
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4737
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 4738
    iput-boolean v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->Q:Z

    .line 4742
    :cond_b
    :goto_b
    return-void

    .line 4739
    :cond_c
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_b

    .line 4740
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->Q:Z

    goto :goto_b
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 327
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 328
    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 329
    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/bean/Campaign;

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    .line 330
    new-instance v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$1;

    invoke-direct {v0, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$1;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 342
    :cond_22
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 343
    invoke-virtual {p0, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->requestWindowFeature(I)Z

    .line 346
    sget v0, Lcom/bzbs/lib/survey/R$layout;->bz_survey_v2_list:I

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->setContentView(I)V

    .line 347
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "isReset"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, v2, :cond_43

    .line 348
    const v0, 0x10a0002

    const v1, 0x10a0003

    invoke-virtual {p0, v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->overridePendingTransition(II)V

    .line 351
    :cond_43
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->E:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/util/AnalyticsSurveyUtils;->a(Landroid/content/Context;)V

    .line 352
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->E:Landroid/app/Activity;

    const-string/jumbo v1, "Survey Screen"

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/AnalyticsSurveyUtils;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/lib/survey/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 361
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "fonts/kit55p.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->I:Landroid/graphics/Typeface;

    .line 363
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->K:Landroid/os/Handler;

    .line 364
    new-instance v0, Lcom/bzbs/lib/survey/util/async/PostData;

    invoke-direct {v0}, Lcom/bzbs/lib/survey/util/async/PostData;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    .line 365
    new-instance v0, Lcom/bzbs/lib/survey/util/ConnectionDetector;

    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bzbs/lib/survey/util/ConnectionDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->L:Lcom/bzbs/lib/survey/util/ConnectionDetector;

    .line 366
    new-instance v0, Lcom/bzbs/lib/survey/util/GPSTracker;

    invoke-direct {v0, p0}, Lcom/bzbs/lib/survey/util/GPSTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->F:Lcom/bzbs/lib/survey/util/GPSTracker;

    .line 370
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 371
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 373
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->O:I

    .line 374
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->P:I

    .line 375
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->O:I

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->M:I

    .line 376
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->M:I

    mul-int/lit16 v0, v0, 0xc8

    div-int/lit16 v0, v0, 0x12c

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->N:I

    .line 379
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 380
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 381
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->P:I

    .line 382
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->O:I

    .line 384
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->O:I

    .line 385
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->P:I

    .line 387
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->O:I

    const/high16 v2, 0x43100000    # 144.0f

    invoke-virtual {p0, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(F)I

    move-result v2

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->r:Landroid/widget/LinearLayout$LayoutParams;

    .line 388
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->r:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 390
    sget v0, Lcom/bzbs/lib/survey/R$id;->pbSurvey:I

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->b:Landroid/widget/ProgressBar;

    .line 391
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->K:Landroid/os/Handler;

    new-instance v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$2;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$2;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 418
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 419
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->s:Ljava/util/Calendar;

    .line 420
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->s:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 421
    const-string/jumbo v0, "OAT"

    const-string/jumbo v1, "START"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 3423
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 3428
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 5

    .prologue
    .line 3474
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_11

    .line 3475
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 3476
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 3477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    .line 3479
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 3405
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 3406
    const-string/jumbo v0, "campaign.adbuzz"

    const-string/jumbo v1, "private void onPause() {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3413
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1d

    .line 3414
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 3415
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 3416
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    .line 3418
    :cond_1d
    invoke-direct {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->y()V

    .line 3419
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4

    .prologue
    .line 3484
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ad:Lcom/bzbs/lib/survey/control/VideoControllerView;

    if-eqz v0, :cond_16

    .line 3485
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ad:Lcom/bzbs/lib/survey/control/VideoControllerView;

    invoke-virtual {v0, p0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->a(Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;)V

    .line 3486
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ad:Lcom/bzbs/lib/survey/control/VideoControllerView;

    sget v0, Lcom/bzbs/lib/survey/R$id;->videoSurfaceContainer:I

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->a(Landroid/view/ViewGroup;)V

    .line 3488
    :cond_16
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1f

    .line 3489
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 3491
    :cond_1f
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 951
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 952
    const-string/jumbo v0, "campaign.adbuzz"

    const-string/jumbo v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 3111
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 3112
    const-string/jumbo v0, "campaign.adbuzz"

    const-string/jumbo v1, "private void onResume() {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->R:Lcom/bzbs/lib/survey/control/CustomPager;

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->R:Lcom/bzbs/lib/survey/control/CustomPager;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/control/CustomPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_9c

    .line 3129
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a:Landroid/view/View;

    if-eqz v0, :cond_9c

    .line 3130
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a:Landroid/view/View;

    sget v1, Lcom/bzbs/lib/survey/R$id;->videoSurface:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ab:Landroid/view/SurfaceView;

    .line 3131
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ab:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 3132
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ab:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 3133
    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 3134
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 3135
    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 3137
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    .line 3138
    new-instance v0, Lcom/bzbs/lib/survey/control/VideoControllerView;

    invoke-direct {v0, p0}, Lcom/bzbs/lib/survey/control/VideoControllerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ad:Lcom/bzbs/lib/survey/control/VideoControllerView;

    .line 3140
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ad:Lcom/bzbs/lib/survey/control/VideoControllerView;

    new-instance v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$10;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$10;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/control/VideoControllerView;->a(Lcom/bzbs/lib/survey/control/VideoControllerView$OnRqExitListener;)V

    .line 3148
    :try_start_57
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 3149
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 3150
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->Y:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uri vdo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/Campaign;->ar:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3151
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/lib/survey/bean/Campaign;->ar:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3152
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 3153
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 3154
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_9c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_57 .. :try_end_9c} :catch_9d
    .catch Ljava/lang/SecurityException; {:try_start_57 .. :try_end_9c} :catch_a8
    .catch Ljava/lang/IllegalStateException; {:try_start_57 .. :try_end_9c} :catch_b3
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_9c} :catch_be

    .line 3173
    :cond_9c
    :goto_9c
    return-void

    .line 3155
    :catch_9d
    move-exception v0

    .line 3156
    const-string/jumbo v1, "IllegalArgumentException"

    invoke-direct {p0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Ljava/lang/String;)V

    .line 3157
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_9c

    .line 3158
    :catch_a8
    move-exception v0

    .line 3159
    const-string/jumbo v1, "SecurityException"

    invoke-direct {p0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Ljava/lang/String;)V

    .line 3160
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_9c

    .line 3161
    :catch_b3
    move-exception v0

    .line 3162
    const-string/jumbo v1, "IllegalStateException"

    invoke-direct {p0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Ljava/lang/String;)V

    .line 3163
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_9c

    .line 3164
    :catch_be
    move-exception v0

    .line 3165
    const-string/jumbo v1, "IOException"

    invoke-direct {p0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Ljava/lang/String;)V

    .line 3166
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9c
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 941
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 942
    const-string/jumbo v0, "campaign.adbuzz"

    const-string/jumbo v1, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const-string/jumbo v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 946
    const-string/jumbo v0, "paramCampaign"

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->G:Lcom/bzbs/lib/survey/bean/Campaign;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 947
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 3495
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ad:Lcom/bzbs/lib/survey/control/VideoControllerView;

    if-eqz v0, :cond_9

    .line 3496
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ad:Lcom/bzbs/lib/survey/control/VideoControllerView;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->b()V

    .line 3498
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public openGallery(Landroid/view/View;)V
    .registers 6

    .prologue
    const/16 v3, 0xc

    .line 3623
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    iput v3, v0, Lcom/bzbs/lib/survey/util/async/PostData;->a:I

    .line 3624
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3625
    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3626
    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3627
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    iput v3, v0, Lcom/bzbs/lib/survey/util/async/PostData;->a:I

    .line 3628
    return-void
.end method

.method public p()Lorg/json/JSONArray;
    .registers 2

    .prologue
    .line 4717
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aG:Lorg/json/JSONArray;

    return-object v0
.end method

.method public q()Lorg/json/JSONArray;
    .registers 2

    .prologue
    .line 4725
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aH:Lorg/json/JSONArray;

    return-object v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 6

    .prologue
    .line 3503
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 3504
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 3506
    :cond_9
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4

    .prologue
    .line 3511
    :try_start_0
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_e

    .line 3512
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 3513
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ac:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 3519
    :cond_e
    :goto_e
    return-void

    .line 3515
    :catch_f
    move-exception v0

    .line 3516
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->Y:Ljava/lang/String;

    const-string/jumbo v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2

    .prologue
    .line 3524
    return-void
.end method

.method public takePicture(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 3631
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    const/16 v1, 0xc

    iput v1, v0, Lcom/bzbs/lib/survey/util/async/PostData;->a:I

    .line 3632
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3633
    const/16 v1, 0x64

    invoke-direct {p0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->b(I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ah:Landroid/net/Uri;

    .line 3634
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ah:Landroid/net/Uri;

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ah:Landroid/net/Uri;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 3635
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ah:Landroid/net/Uri;

    iput-object v2, v1, Lcom/bzbs/lib/survey/util/async/PostData;->e:Landroid/net/Uri;

    .line 3636
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    sget-object v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ai:Ljava/io/File;

    iput-object v2, v1, Lcom/bzbs/lib/survey/util/async/PostData;->d:Ljava/io/File;

    .line 3637
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    sget-object v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->aj:Ljava/lang/String;

    iput-object v2, v1, Lcom/bzbs/lib/survey/util/async/PostData;->c:Ljava/lang/String;

    .line 3638
    const-string/jumbo v1, "output"

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ah:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3639
    const/16 v1, 0x15

    invoke-virtual {p0, v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3641
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ag:Lcom/bzbs/lib/survey/util/async/PostData;

    const/16 v1, 0xb

    iput v1, v0, Lcom/bzbs/lib/survey/util/async/PostData;->a:I

    .line 3645
    :goto_4a
    return-void

    .line 3643
    :cond_4b
    sget v0, Lcom/bzbs/lib/survey/R$string;->post_check_your_memory_card:I

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Ljava/lang/String;)V

    goto :goto_4a
.end method
