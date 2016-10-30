.class public Lcom/samsung/privilege/util/DialogSearch;
.super Ljava/lang/Object;
.source "DialogSearch.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Landroid/content/Context;

.field private static c:Landroid/support/v7/widget/RecyclerView;

.field private static d:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private static e:Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;

.field private static f:Z

.field private static g:Z

.field private static h:I

.field private static i:I

.field private static j:I

.field private static k:I

.field private static l:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 61
    const-class v0, Lcom/samsung/privilege/util/DialogSearch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/util/DialogSearch;->a:Ljava/lang/String;

    .line 69
    sput-boolean v1, Lcom/samsung/privilege/util/DialogSearch;->f:Z

    .line 70
    sput-boolean v1, Lcom/samsung/privilege/util/DialogSearch;->g:Z

    .line 72
    const/16 v0, 0x19

    sput v0, Lcom/samsung/privilege/util/DialogSearch;->k:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(I)I
    .registers 1

    .prologue
    .line 59
    sput p0, Lcom/samsung/privilege/util/DialogSearch;->i:I

    return p0
.end method

.method static synthetic a()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/samsung/privilege/util/DialogSearch;->d:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;)Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;
    .registers 1

    .prologue
    .line 59
    sput-object p0, Lcom/samsung/privilege/util/DialogSearch;->e:Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x2

    .line 76
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_f4

    .line 77
    sput-object p0, Lcom/samsung/privilege/util/DialogSearch;->b:Landroid/content/Context;

    .line 79
    invoke-static {p0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 82
    :try_start_10
    sget-object v0, Lcom/samsung/privilege/util/DialogSearch;->l:Landroid/app/Dialog;

    if-eqz v0, :cond_19

    .line 83
    sget-object v0, Lcom/samsung/privilege/util/DialogSearch;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_19} :catch_102

    .line 88
    :cond_19
    :goto_19
    new-instance v0, Landroid/app/Dialog;

    const v2, 0x7f0d00ff

    invoke-direct {v0, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/samsung/privilege/util/DialogSearch;->l:Landroid/app/Dialog;

    .line 90
    sget-object v0, Lcom/samsung/privilege/util/DialogSearch;->l:Landroid/app/Dialog;

    const v2, 0x7f040122

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 93
    sget-object v0, Lcom/samsung/privilege/util/DialogSearch;->l:Landroid/app/Dialog;

    const v2, 0x7f1000b5

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 95
    sget-object v0, Lcom/samsung/privilege/util/DialogSearch;->l:Landroid/app/Dialog;

    const v2, 0x7f100137

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 96
    new-instance v2, Lcom/samsung/privilege/util/DialogSearch$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/privilege/util/DialogSearch$1;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    .line 121
    packed-switch v2, :pswitch_data_106

    move v2, v1

    .line 138
    :goto_68
    sget-object v1, Lcom/samsung/privilege/util/DialogSearch;->l:Landroid/app/Dialog;

    const v3, 0x7f1005eb

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    sput-object v1, Lcom/samsung/privilege/util/DialogSearch;->c:Landroid/support/v7/widget/RecyclerView;

    .line 139
    sget-object v1, Lcom/samsung/privilege/util/DialogSearch;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 140
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    sget-object v3, Lcom/samsung/privilege/util/DialogSearch;->b:Landroid/content/Context;

    invoke-direct {v1, v3, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/samsung/privilege/util/DialogSearch;->d:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 141
    sget-object v1, Lcom/samsung/privilege/util/DialogSearch;->c:Landroid/support/v7/widget/RecyclerView;

    sget-object v2, Lcom/samsung/privilege/util/DialogSearch;->d:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 143
    sget-object v1, Lcom/samsung/privilege/util/DialogSearch;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/samsung/privilege/util/DialogSearch$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/privilege/util/DialogSearch$2;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 159
    sget-object v0, Lcom/samsung/privilege/util/DialogSearch;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bzbs/event/RecyclerItemClickListener;

    sget-object v2, Lcom/samsung/privilege/util/DialogSearch;->b:Landroid/content/Context;

    new-instance v3, Lcom/samsung/privilege/util/DialogSearch$3;

    invoke-direct {v3}, Lcom/samsung/privilege/util/DialogSearch$3;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/bzbs/event/RecyclerItemClickListener;-><init>(Landroid/content/Context;Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 196
    sget-object v0, Lcom/samsung/privilege/util/DialogSearch;->l:Landroid/app/Dialog;

    const v1, 0x7f1005c6

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 197
    new-instance v1, Lcom/samsung/privilege/util/DialogSearch$4;

    invoke-direct {v1}, Lcom/samsung/privilege/util/DialogSearch$4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    sget-object v0, Lcom/samsung/privilege/util/DialogSearch;->l:Landroid/app/Dialog;

    const v1, 0x7f1005c7

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 205
    sget-object v1, Lcom/samsung/privilege/util/DialogSearch;->b:Landroid/content/Context;

    const v2, 0x7f05003e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 206
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 207
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 209
    sget-object v0, Lcom/samsung/privilege/util/DialogSearch;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 210
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 211
    sget-object v1, Lcom/samsung/privilege/util/DialogSearch;->l:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 213
    sget-object v0, Lcom/samsung/privilege/util/DialogSearch;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 215
    const-string/jumbo v0, "Search"

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;)V

    .line 217
    :cond_f4
    return-void

    .line 123
    :pswitch_f5
    const/4 v1, 0x3

    move v2, v1

    .line 124
    goto/16 :goto_68

    :pswitch_f9
    move v2, v1

    .line 127
    goto/16 :goto_68

    :pswitch_fc
    move v2, v1

    .line 130
    goto/16 :goto_68

    :pswitch_ff
    move v2, v1

    .line 133
    goto/16 :goto_68

    .line 85
    :catch_102
    move-exception v0

    goto/16 :goto_19

    .line 121
    nop

    :pswitch_data_106
    .packed-switch 0x1
        :pswitch_ff
        :pswitch_fc
        :pswitch_f9
        :pswitch_f5
    .end packed-switch
.end method

.method static synthetic a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 59
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/privilege/util/DialogSearch;->b(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Z)Z
    .registers 1

    .prologue
    .line 59
    sput-boolean p0, Lcom/samsung/privilege/util/DialogSearch;->g:Z

    return p0
.end method

.method static synthetic b(I)I
    .registers 1

    .prologue
    .line 59
    sput p0, Lcom/samsung/privilege/util/DialogSearch;->j:I

    return p0
.end method

.method private static b(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V
    .registers 8

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/campaign"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&device_app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&byConfig=true&config=campaign_all"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 225
    if-eqz v1, :cond_6d

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 228
    :cond_6d
    if-lez p3, :cond_87

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&$skip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    :cond_87
    sget-object v1, Lcom/samsung/privilege/util/DialogSearch;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performSearch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 234
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/content/Context;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 235
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 236
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 237
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 238
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogSearch$5;

    invoke-direct {v1, p1, p3, p0}, Lcom/samsung/privilege/util/DialogSearch$5;-><init>(Landroid/os/Handler;ILandroid/content/Context;)V

    .line 239
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 289
    return-void
.end method

.method static synthetic b()Z
    .registers 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/samsung/privilege/util/DialogSearch;->f:Z

    return v0
.end method

.method static synthetic b(Z)Z
    .registers 1

    .prologue
    .line 59
    sput-boolean p0, Lcom/samsung/privilege/util/DialogSearch;->f:Z

    return p0
.end method

.method static synthetic c(I)I
    .registers 1

    .prologue
    .line 59
    sput p0, Lcom/samsung/privilege/util/DialogSearch;->h:I

    return p0
.end method

.method static synthetic c()Z
    .registers 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/samsung/privilege/util/DialogSearch;->g:Z

    return v0
.end method

.method static synthetic d()I
    .registers 1

    .prologue
    .line 59
    sget v0, Lcom/samsung/privilege/util/DialogSearch;->i:I

    return v0
.end method

.method static synthetic e()I
    .registers 1

    .prologue
    .line 59
    sget v0, Lcom/samsung/privilege/util/DialogSearch;->h:I

    return v0
.end method

.method static synthetic f()I
    .registers 1

    .prologue
    .line 59
    sget v0, Lcom/samsung/privilege/util/DialogSearch;->j:I

    return v0
.end method

.method static synthetic g()Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/samsung/privilege/util/DialogSearch;->e:Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;

    return-object v0
.end method

.method static synthetic h()Landroid/content/Context;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/samsung/privilege/util/DialogSearch;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i()Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/samsung/privilege/util/DialogSearch;->l:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic j()Ljava/lang/String;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/samsung/privilege/util/DialogSearch;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k()I
    .registers 1

    .prologue
    .line 59
    sget v0, Lcom/samsung/privilege/util/DialogSearch;->k:I

    return v0
.end method

.method static synthetic l()Landroid/support/v7/widget/RecyclerView;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/samsung/privilege/util/DialogSearch;->c:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method
