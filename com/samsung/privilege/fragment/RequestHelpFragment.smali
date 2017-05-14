.class public Lcom/samsung/privilege/fragment/RequestHelpFragment;
.super Lcom/bzbs/marketplace/base/BaseFragment;
.source "RequestHelpFragment.java"


# instance fields
.field btnAddPicture:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006cf
    .end annotation
.end field

.field contentImagePost:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006c3
    .end annotation
.end field

.field edtTextComment:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006c6
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/review/ReviewModel;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/samsung/privilege/adapter/RequestHelpAdapter;

.field private i:Z

.field imagePost:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006c4
    .end annotation
.end field

.field private j:Landroid/support/v7/widget/LinearLayoutManager;

.field private k:Z

.field private l:I

.field private m:I

.field mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10066e
    .end annotation
.end field

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Landroid/net/Uri;

.field pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006c2
    .end annotation
.end field

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006d0
    .end annotation
.end field

.field recyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006c1
    .end annotation
.end field

.field private s:Ljava/lang/String;

.field private t:Z

.field tvResult:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006ad
    .end annotation
.end field

.field private u:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

.field private v:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Lcom/bzbs/marketplace/base/BaseFragment;-><init>()V

    .line 103
    iput-boolean v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->i:Z

    .line 105
    iput-boolean v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->k:Z

    .line 110
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->o:Ljava/lang/String;

    .line 112
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->q:Ljava/lang/String;

    .line 113
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->r:Ljava/lang/String;

    .line 114
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->s:Ljava/lang/String;

    .line 115
    iput-boolean v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->t:Z

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/RequestHelpFragment;I)I
    .registers 2

    .prologue
    .line 69
    iput p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->m:I

    return p1
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/RequestHelpFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2

    .prologue
    .line 69
    iput-object p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->p:Landroid/net/Uri;

    return-object p1
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/model/review/ReviewModel;
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 475
    new-instance v0, Lcom/bzbs/marketplace/model/review/ReviewModel;

    invoke-direct {v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;-><init>()V

    .line 476
    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setUserId(Ljava/lang/String;)V

    .line 477
    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setName(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v0, p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setMessage(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v0, v2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setCommentCount(I)V

    .line 480
    invoke-virtual {v0, v2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setLikes(I)V

    .line 481
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 482
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 483
    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setCreatedTime(J)V

    .line 484
    invoke-virtual {v0, p4}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setSticker(Ljava/lang/String;)V

    .line 485
    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setImageUrl(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v0, p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setHeader(Z)V

    .line 487
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setFile(Ljava/io/File;)V

    .line 489
    return-object v0
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/RequestHelpFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iput-object p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->o:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/RequestHelpFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 69
    iput-object p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->g:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(I)V
    .registers 4

    .prologue
    .line 269
    if-eqz p1, :cond_d

    .line 270
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/util/KeyboardStatus;->a(Landroid/view/View;Landroid/app/Activity;)V

    .line 272
    :cond_d
    return-void
.end method

.method private synthetic a(IILandroid/content/Intent;Ljava/lang/Boolean;)V
    .registers 8

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 510
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 511
    sparse-switch p1, :sswitch_data_4a

    .line 527
    :cond_b
    :goto_b
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/fragment/RequestHelpFragment$8;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment$8;-><init>(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V

    invoke-static {p1, p2, p3, v0, v1}, Lpl/aprilapps/easyphotopicker/EasyImage;->a(IILandroid/content/Intent;Landroid/app/Activity;Lpl/aprilapps/easyphotopicker/EasyImage$Callbacks;)V

    .line 544
    :cond_17
    return-void

    .line 513
    :sswitch_18
    if-ne p2, v1, :cond_b

    .line 514
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 515
    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/util/OutputMediaFile;->a(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/marketplace/util/BitmapScale;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->o:Ljava/lang/String;

    .line 516
    invoke-direct {p0, v2, v2}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(ZZ)V

    goto :goto_b

    .line 520
    :sswitch_32
    if-ne p2, v1, :cond_b

    .line 521
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->p:Landroid/net/Uri;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/util/OutputMediaFile;->a(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/marketplace/util/BitmapScale;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->o:Ljava/lang/String;

    .line 522
    invoke-direct {p0, v2, v2}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(ZZ)V

    goto :goto_b

    .line 511
    :sswitch_data_4a
    .sparse-switch
        0x1f40 -> :sswitch_18
        0x2328 -> :sswitch_32
    .end sparse-switch
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->e()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/RequestHelpFragment;IILandroid/content/Intent;Ljava/lang/Boolean;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(IILandroid/content/Intent;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/RequestHelpFragment;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/RequestHelpFragment;Z)V
    .registers 2

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->b(Z)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/RequestHelpFragment;ZZ)V
    .registers 3

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(ZZ)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Boolean;)V
    .registers 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 369
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_189

    .line 371
    new-instance v0, Lcom/bzbs/util/DeviceHelper;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 372
    invoke-virtual {v0}, Lcom/bzbs/util/DeviceHelper;->d()Ljava/lang/String;

    move-result-object v0

    .line 373
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "samsung"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SM-G935F"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 376
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UserId= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Name= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Surname= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "IMEI= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "osVersion= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Platform= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 377
    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->edtTextComment:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "api/buzz/f-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/buzz?token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 380
    new-instance v3, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v3}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 382
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "------------------------"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 384
    const-string/jumbo v0, "message"

    invoke-virtual {v3, v0, v1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iput-boolean v7, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->t:Z

    .line 387
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0xa

    if-le v0, v4, :cond_14a

    .line 388
    iput-boolean v6, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->t:Z

    .line 390
    :try_start_13d
    const-string/jumbo v0, "source"

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->o:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/File;)V
    :try_end_14a
    .catch Ljava/io/FileNotFoundException; {:try_start_13d .. :try_end_14a} :catch_18a

    .line 396
    :cond_14a
    :goto_14a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 397
    iget-object v4, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->o:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->r:Ljava/lang/String;

    invoke-direct {p0, v6, v1, v4, v5}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/model/review/ReviewModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 399
    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->g:Ljava/util/ArrayList;

    .line 400
    invoke-direct {p0, v7, v6}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(ZZ)V

    .line 401
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->f()V

    .line 403
    invoke-direct {p0, v6}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(Z)V

    .line 404
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->edtTextComment:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 405
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->i()V

    .line 407
    new-instance v0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    sget-object v4, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->b:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->v:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    .line 408
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->v:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    new-instance v1, Lcom/samsung/privilege/fragment/RequestHelpFragment$7;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment$7;-><init>(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V

    .line 459
    :cond_189
    return-void

    .line 391
    :catch_18a
    move-exception v0

    .line 392
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_14a
.end method

.method private a(Z)V
    .registers 4

    .prologue
    .line 464
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    if-eqz v0, :cond_17

    .line 465
    if-eqz p1, :cond_18

    .line 466
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rey/material/widget/ProgressView;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rey/material/widget/ProgressView;->setProgress(F)V

    .line 468
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    invoke-virtual {v0}, Lcom/rey/material/widget/ProgressView;->a()V

    .line 472
    :cond_17
    :goto_17
    return-void

    .line 470
    :cond_18
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/rey/material/widget/ProgressView;->setVisibility(I)V

    goto :goto_17
.end method

.method private a(ZZ)V
    .registers 6

    .prologue
    .line 275
    if-nez p1, :cond_29

    .line 276
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->r:Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->q:Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->o:Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->btnAddPicture:Landroid/widget/ImageView;

    const v1, 0x7f02026d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 280
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->contentImagePost:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/util/KeyboardStatus;->a(Landroid/view/View;Landroid/app/Activity;)V

    .line 290
    :goto_28
    return-void

    .line 284
    :cond_29
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->contentImagePost:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 285
    if-eqz p2, :cond_52

    .line 286
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->a(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->o:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/io/File;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->c()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->b:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->imagePost:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_28

    .line 288
    :cond_52
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->a(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->c()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->imagePost:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_28
.end method

.method static synthetic b(Lcom/samsung/privilege/fragment/RequestHelpFragment;I)I
    .registers 2

    .prologue
    .line 69
    iput p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->n:I

    return p1
.end method

.method private b()V
    .registers 4

    .prologue
    .line 145
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->b(Z)V

    .line 146
    const/4 v0, 0x0

    .line 147
    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_21

    .line 148
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/review/ReviewModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getRowKey()Ljava/lang/String;

    move-result-object v0

    .line 150
    :cond_21
    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlRequestHelp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    new-instance v1, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->u:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    .line 152
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->u:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    new-instance v1, Lcom/samsung/privilege/fragment/RequestHelpFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment$1;-><init>(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;->a(Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$CallbackList;)V

    .line 183
    return-void
.end method

.method private b(Z)V
    .registers 4

    .prologue
    .line 561
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/privilege/activity/RequestHelpActivity;

    if-eqz v0, :cond_10

    .line 562
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/privilege/activity/RequestHelpActivity;

    if-eqz p1, :cond_11

    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/RequestHelpActivity;->c(I)V

    .line 564
    :cond_10
    return-void

    .line 562
    :cond_11
    const/16 v1, 0x8

    goto :goto_d
.end method

.method static synthetic b(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Z
    .registers 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/samsung/privilege/fragment/RequestHelpFragment;Z)Z
    .registers 2

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->k:Z

    return p1
.end method

.method static synthetic c(Lcom/samsung/privilege/fragment/RequestHelpFragment;I)I
    .registers 2

    .prologue
    .line 69
    iput p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->l:I

    return p1
.end method

.method static synthetic c(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method private c()V
    .registers 3

    .prologue
    .line 186
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->j:Landroid/support/v7/widget/LinearLayoutManager;

    .line 187
    new-instance v0, Lcom/samsung/privilege/adapter/RequestHelpAdapter;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/privilege/adapter/RequestHelpAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->h:Lcom/samsung/privilege/adapter/RequestHelpAdapter;

    .line 188
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->j:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 189
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->h:Lcom/samsung/privilege/adapter/RequestHelpAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 191
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/samsung/privilege/fragment/RequestHelpFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment$2;-><init>(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 211
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->h:Lcom/samsung/privilege/adapter/RequestHelpAdapter;

    new-instance v1, Lcom/samsung/privilege/fragment/RequestHelpFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment$3;-><init>(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/adapter/RequestHelpAdapter;->a(Lcom/bzbs/marketplace/listener/OnTabItemListener;)V

    .line 222
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/samsung/privilege/fragment/RequestHelpFragment$4;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment$4;-><init>(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 228
    return-void
.end method

.method static synthetic c(Lcom/samsung/privilege/fragment/RequestHelpFragment;Z)Z
    .registers 2

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->i:Z

    return p1
.end method

.method private d()V
    .registers 2

    .prologue
    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->i:Z

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->g:Ljava/util/ArrayList;

    .line 233
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->b()V

    .line 234
    return-void
.end method

.method static synthetic d(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->f()V

    return-void
.end method

.method static synthetic d(Lcom/samsung/privilege/fragment/RequestHelpFragment;Z)V
    .registers 2

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(Z)V

    return-void
.end method

.method static synthetic e(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Landroid/support/v7/widget/LinearLayoutManager;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->j:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method private e()V
    .registers 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_a

    .line 238
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 240
    :cond_a
    return-void
.end method

.method static synthetic e(Lcom/samsung/privilege/fragment/RequestHelpFragment;Z)Z
    .registers 2

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->t:Z

    return p1
.end method

.method private f()V
    .registers 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->h:Lcom/samsung/privilege/adapter/RequestHelpAdapter;

    if-eqz v0, :cond_b

    .line 244
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->h:Lcom/samsung/privilege/adapter/RequestHelpAdapter;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/adapter/RequestHelpAdapter;->a(Ljava/util/ArrayList;)V

    .line 246
    :cond_b
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->edtTextComment:Landroid/widget/EditText;

    if-eqz v0, :cond_19

    .line 247
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->edtTextComment:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/privilege/fragment/RequestHelpFragment$5;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment$5;-><init>(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    :cond_19
    return-void
.end method

.method static synthetic f(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Z
    .registers 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->k:Z

    return v0
.end method

.method static synthetic g(Lcom/samsung/privilege/fragment/RequestHelpFragment;)I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->m:I

    return v0
.end method

.method private g()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 256
    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v2, :cond_22

    .line 257
    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_22

    .line 258
    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 259
    invoke-direct {p0, v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(I)V

    .line 260
    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 263
    :goto_21
    return v0

    :cond_22
    move v0, v1

    goto :goto_21
.end method

.method static synthetic h(Lcom/samsung/privilege/fragment/RequestHelpFragment;)I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->l:I

    return v0
.end method

.method private h()V
    .registers 6

    .prologue
    .line 293
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 294
    new-instance v0, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;-><init>(Landroid/app/Activity;)V

    .line 295
    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 296
    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 298
    new-instance v1, Lcom/samsung/privilege/fragment/RequestHelpFragment$6;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment$6;-><init>(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;->a(Lcom/bzbs/marketplace/listener/OnTabItemListener;)V

    .line 341
    return-void
.end method

.method static synthetic i(Lcom/samsung/privilege/fragment/RequestHelpFragment;)I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->n:I

    return v0
.end method

.method private i()V
    .registers 3

    .prologue
    .line 548
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/util/KeyboardStatus;->a(Landroid/view/View;Landroid/app/Activity;)V

    .line 549
    return-void
.end method

.method static synthetic j(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->b()V

    return-void
.end method

.method static synthetic k(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Lcom/samsung/privilege/adapter/RequestHelpAdapter;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->h:Lcom/samsung/privilege/adapter/RequestHelpAdapter;

    return-object v0
.end method

.method static synthetic l(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->d()V

    return-void
.end method

.method static synthetic m(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Z
    .registers 2

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic n(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Landroid/net/Uri;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->p:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic o(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Z
    .registers 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->t:Z

    return v0
.end method


# virtual methods
.method protected a()I
    .registers 3

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 131
    const v0, 0x7f04015a

    return v0
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->i()V

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->g:Ljava/util/ArrayList;

    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(Z)V

    .line 140
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->c()V

    .line 141
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->b()V

    .line 142
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    .prologue
    .line 507
    invoke-super {p0, p1, p2, p3}, Lcom/bzbs/marketplace/base/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 508
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->I:Lcom/tbruyelle/rxpermissions/RxPermissions;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->a([Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/privilege/fragment/RequestHelpFragment$$Lambda$2;->a(Lcom/samsung/privilege/fragment/RequestHelpFragment;IILandroid/content/Intent;)Lrx/functions/Action1;

    move-result-object v1

    .line 509
    invoke-virtual {v0, v1}, Lrx/Observable;->a(Lrx/functions/Action1;)Lrx/Subscription;

    .line 545
    return-void
.end method

.method public onClickAdd(Landroid/view/View;)V
    .registers 4
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1006cf
        }
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 347
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->h()V

    .line 348
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(I)V

    .line 349
    return-void
.end method

.method public onClickCancel(Landroid/view/View;)V
    .registers 6
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1006c5,
            0x7f100446
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 353
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1006c5

    if-ne v0, v1, :cond_f

    .line 354
    invoke-direct {p0, v3, v2}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(ZZ)V

    .line 461
    :cond_e
    :goto_e
    return-void

    .line 357
    :cond_f
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 358
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 359
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    const v1, 0x7f090252

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_e

    .line 363
    :cond_2d
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->edtTextComment:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_e

    .line 367
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->I:Lcom/tbruyelle/rxpermissions/RxPermissions;

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->a([Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment$$Lambda$1;->a(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Lrx/functions/Action1;

    move-result-object v1

    .line 368
    invoke-virtual {v0, v1}, Lrx/Observable;->a(Lrx/functions/Action1;)Lrx/Subscription;

    goto :goto_e
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 553
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseFragment;->onDestroyView()V

    .line 554
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->v:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    if-eqz v0, :cond_c

    .line 555
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->v:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b()V

    .line 556
    :cond_c
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->u:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    if-eqz v0, :cond_15

    .line 557
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->u:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;->a()V

    .line 558
    :cond_15
    return-void
.end method
