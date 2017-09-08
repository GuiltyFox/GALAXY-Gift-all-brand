.class public Lcom/bzbs/marketplace/fragment/ReviewFragment;
.super Lcom/bzbs/marketplace/base/BaseFragment;
.source "ReviewFragment.java"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field private C:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

.field private D:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

.field btnAddPicture:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1004fe
    .end annotation
.end field

.field btnAddSticker:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100501
    .end annotation
.end field

.field contentImagePost:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1004f1
    .end annotation
.end field

.field contentPager:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100502
    .end annotation
.end field

.field contentPost:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1004ee
    .end annotation
.end field

.field edtTextComment:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1004f4
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

.field private h:Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;

.field private i:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

.field imagePost:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1004f2
    .end annotation
.end field

.field private j:Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;

.field private k:Lcom/bzbs/marketplace/adapter/pager/StickerPagerAdapter;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/sticker/StickerModel;",
            ">;"
        }
    .end annotation
.end field

.field listViewHorizontal:Lit/sephiroth/android/library/widget/HListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100503
    .end annotation
.end field

.field private m:Z

.field mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10049d
    .end annotation
.end field

.field private n:Z

.field private o:Landroid/support/v7/widget/LinearLayoutManager;

.field private p:Z

.field pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1004f0
    .end annotation
.end field

.field private q:I

.field private r:I

.field recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1004ff
    .end annotation
.end field

.field recyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1004ef
    .end annotation
.end field

.field private s:I

.field private t:Ljava/lang/String;

.field tvNoData:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100500
    .end annotation
.end field

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field viewPager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100313
    .end annotation
.end field

.field private w:Landroid/net/Uri;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Lcom/bzbs/marketplace/base/BaseFragment;-><init>()V

    .line 136
    iput-boolean v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->n:Z

    .line 138
    iput-boolean v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->p:Z

    .line 146
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->v:Ljava/lang/String;

    .line 148
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->x:Ljava/lang/String;

    .line 149
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->y:Ljava/lang/String;

    .line 150
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->z:Ljava/lang/String;

    .line 151
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->A:Ljava/lang/String;

    .line 152
    iput-boolean v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->B:Z

    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/ReviewFragment;I)I
    .registers 2

    .prologue
    .line 83
    iput p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->r:I

    return p1
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/ReviewFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->w:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Landroid/support/v7/widget/LinearLayoutManager;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->o:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/model/review/ReviewModel;
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 381
    new-instance v0, Lcom/bzbs/marketplace/model/review/ReviewModel;

    invoke-direct {v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;-><init>()V

    .line 382
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setUserId(Ljava/lang/String;)V

    .line 383
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setName(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0, p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setMessage(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v0, v2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setCommentCount(I)V

    .line 386
    invoke-virtual {v0, v2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setLikes(I)V

    .line 387
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 388
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 389
    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setCreatedTime(J)V

    .line 390
    invoke-virtual {v0, p4}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setSticker(Ljava/lang/String;)V

    .line 391
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setImageUrl(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v0, p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setHeader(Z)V

    .line 393
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setFile(Ljava/io/File;)V

    .line 395
    return-object v0
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/ReviewFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->x:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/ReviewFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->g:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(I)V
    .registers 4

    .prologue
    .line 636
    packed-switch p1, :pswitch_data_12

    .line 645
    :pswitch_3
    if-eqz p1, :cond_10

    .line 646
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/util/KeyboardStatus;->a(Landroid/view/View;Landroid/app/Activity;)V

    .line 648
    :cond_10
    return-void

    .line 636
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method private synthetic a(IILandroid/content/Intent;Ljava/lang/Boolean;)V
    .registers 8

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 314
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 315
    sparse-switch p1, :sswitch_data_4a

    .line 331
    :cond_b
    :goto_b
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/bzbs/marketplace/fragment/ReviewFragment$6;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment$6;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    invoke-static {p1, p2, p3, v0, v1}, Lpl/aprilapps/easyphotopicker/EasyImage;->a(IILandroid/content/Intent;Landroid/app/Activity;Lpl/aprilapps/easyphotopicker/EasyImage$Callbacks;)V

    .line 348
    :cond_17
    return-void

    .line 317
    :sswitch_18
    if-ne p2, v1, :cond_b

    .line 318
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/util/OutputMediaFile;->a(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/marketplace/util/BitmapScale;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->v:Ljava/lang/String;

    .line 320
    invoke-direct {p0, v2, v2}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a(ZZ)V

    goto :goto_b

    .line 324
    :sswitch_32
    if-ne p2, v1, :cond_b

    .line 325
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->w:Landroid/net/Uri;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/util/OutputMediaFile;->a(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/marketplace/util/BitmapScale;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->v:Ljava/lang/String;

    .line 326
    invoke-direct {p0, v2, v2}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a(ZZ)V

    goto :goto_b

    .line 315
    :sswitch_data_4a
    .sparse-switch
        0x1f40 -> :sswitch_18
        0x2328 -> :sswitch_32
    .end sparse-switch
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/ReviewFragment;IILandroid/content/Intent;Ljava/lang/Boolean;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a(IILandroid/content/Intent;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/ReviewFragment;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/ReviewFragment;ZZ)V
    .registers 3

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a(ZZ)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Boolean;)V
    .registers 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 421
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->W:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/buzz?token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 423
    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v2}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 425
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->edtTextComment:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_ce

    .line 426
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->edtTextComment:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->z:Ljava/lang/String;

    .line 427
    const-string/jumbo v0, "message"

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->z:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iput-boolean v7, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->B:Z

    .line 434
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->v:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xa

    if-le v0, v3, :cond_e0

    .line 435
    iput-boolean v6, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->B:Z

    .line 437
    :try_start_74
    const-string/jumbo v0, "source"

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->v:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/File;)V
    :try_end_81
    .catch Ljava/io/FileNotFoundException; {:try_start_74 .. :try_end_81} :catch_db

    .line 445
    :cond_81
    :goto_81
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->edtTextComment:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->A:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 447
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_93

    .line 448
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/RecyclerView;->setVerticalScrollbarPosition(I)V

    .line 451
    :cond_93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 452
    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->z:Ljava/lang/String;

    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->v:Ljava/lang/String;

    iget-object v5, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->y:Ljava/lang/String;

    invoke-direct {p0, v6, v3, v4, v5}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/model/review/ReviewModel;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 454
    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->g:Ljava/util/ArrayList;

    .line 455
    invoke-direct {p0, v7, v6}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a(ZZ)V

    .line 456
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->f()V

    .line 458
    invoke-direct {p0, v6}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a(Z)V

    .line 460
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->k()V

    .line 462
    new-instance v0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    sget-object v4, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->b:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->D:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    .line 463
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->D:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    new-instance v1, Lcom/bzbs/marketplace/fragment/ReviewFragment$7;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment$7;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V

    .line 514
    :cond_cd
    :goto_cd
    return-void

    .line 429
    :cond_ce
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    const v1, 0x7f090219

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto :goto_cd

    .line 438
    :catch_db
    move-exception v0

    .line 439
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_81

    .line 441
    :cond_e0
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->x:Ljava/lang/String;

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->A:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    .line 442
    const-string/jumbo v0, "sticker"

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->y:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_81
.end method

.method private a(Z)V
    .registers 4

    .prologue
    .line 399
    if-eqz p1, :cond_14

    .line 400
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rey/material/widget/ProgressView;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rey/material/widget/ProgressView;->setProgress(F)V

    .line 402
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    invoke-virtual {v0}, Lcom/rey/material/widget/ProgressView;->a()V

    .line 406
    :goto_13
    return-void

    .line 404
    :cond_14
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/rey/material/widget/ProgressView;->setVisibility(I)V

    goto :goto_13
.end method

.method private a(ZZ)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 352
    if-nez p1, :cond_22

    .line 353
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->A:Ljava/lang/String;

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->y:Ljava/lang/String;

    .line 354
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->A:Ljava/lang/String;

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->x:Ljava/lang/String;

    .line 355
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->A:Ljava/lang/String;

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->v:Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->contentImagePost:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/util/KeyboardStatus;->a(Landroid/view/View;Landroid/app/Activity;)V

    .line 365
    :goto_21
    return-void

    .line 360
    :cond_22
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->contentImagePost:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 361
    if-eqz p2, :cond_50

    .line 362
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->a(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->v:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    sget-object v1, Lcom/squareup/picasso/MemoryPolicy;->a:Lcom/squareup/picasso/MemoryPolicy;

    new-array v2, v3, [Lcom/squareup/picasso/MemoryPolicy;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/RequestCreator;->a(Lcom/squareup/picasso/MemoryPolicy;[Lcom/squareup/picasso/MemoryPolicy;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    sget-object v1, Lcom/squareup/picasso/NetworkPolicy;->a:Lcom/squareup/picasso/NetworkPolicy;

    new-array v2, v3, [Lcom/squareup/picasso/NetworkPolicy;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/RequestCreator;->a(Lcom/squareup/picasso/NetworkPolicy;[Lcom/squareup/picasso/NetworkPolicy;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->imagePost:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->a(Landroid/widget/ImageView;)V

    goto :goto_21

    .line 364
    :cond_50
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->a(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->imagePost:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->a(Landroid/widget/ImageView;)V

    goto :goto_21
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/ReviewFragment;Z)Z
    .registers 2

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/bzbs/marketplace/fragment/ReviewFragment;I)I
    .registers 2

    .prologue
    .line 83
    iput p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->s:I

    return p1
.end method

.method static synthetic b(Lcom/bzbs/marketplace/fragment/ReviewFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->y:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .registers 3

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "ReviewActivity::Data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->t:Ljava/lang/String;

    .line 176
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "ReviewActivity::Type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->u:Ljava/lang/String;

    .line 177
    return-void
.end method

.method static synthetic b(Lcom/bzbs/marketplace/fragment/ReviewFragment;Z)V
    .registers 2

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .registers 4

    .prologue
    .line 768
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/bzbs/marketplace/activity/ReviewActivity;

    if-eqz v0, :cond_10

    .line 769
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/activity/ReviewActivity;

    if-eqz p1, :cond_11

    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/activity/ReviewActivity;->c(I)V

    .line 771
    :cond_10
    return-void

    .line 769
    :cond_11
    const/16 v1, 0x8

    goto :goto_d
.end method

.method static synthetic b(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->p:Z

    return v0
.end method

.method static synthetic c(Lcom/bzbs/marketplace/fragment/ReviewFragment;)I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->r:I

    return v0
.end method

.method static synthetic c(Lcom/bzbs/marketplace/fragment/ReviewFragment;I)I
    .registers 2

    .prologue
    .line 83
    iput p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->q:I

    return p1
.end method

.method static synthetic c(Lcom/bzbs/marketplace/fragment/ReviewFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->v:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .registers 4

    .prologue
    .line 180
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->o:Landroid/support/v7/widget/LinearLayoutManager;

    .line 181
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->u:Ljava/lang/String;

    const-string/jumbo v1, "type_gift"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 182
    new-instance v0, Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->u:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->i:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    .line 187
    :goto_1f
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->o:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 188
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->i:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 190
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bzbs/marketplace/fragment/ReviewFragment$1;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment$1;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 210
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->i:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    new-instance v1, Lcom/bzbs/marketplace/fragment/ReviewFragment$2;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment$2;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->a(Lcom/bzbs/marketplace/listener/OnTabItemListener;)V

    .line 221
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/bzbs/marketplace/fragment/ReviewFragment$3;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment$3;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 228
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->u:Ljava/lang/String;

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->u:Ljava/lang/String;

    const-string/jumbo v1, "type_gift"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 229
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->contentPost:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 231
    :cond_61
    return-void

    .line 184
    :cond_62
    new-instance v0, Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->i:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    goto :goto_1f
.end method

.method static synthetic c(Lcom/bzbs/marketplace/fragment/ReviewFragment;Z)Z
    .registers 2

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->n:Z

    return p1
.end method

.method static synthetic d(Lcom/bzbs/marketplace/fragment/ReviewFragment;)I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->q:I

    return v0
.end method

.method private d()V
    .registers 5

    .prologue
    .line 234
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->b(Z)V

    .line 235
    const/4 v0, 0x0

    .line 236
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_21

    .line 237
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/review/ReviewModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getRowKey()Ljava/lang/String;

    move-result-object v0

    .line 239
    :cond_21
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->t:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlReview(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    new-instance v1, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->C:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    .line 241
    const-string/jumbo v1, "OATE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "urlReviewF:= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->C:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    new-instance v1, Lcom/bzbs/marketplace/fragment/ReviewFragment$4;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment$4;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;->a(Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$CallbackList;)V

    .line 277
    return-void
.end method

.method static synthetic d(Lcom/bzbs/marketplace/fragment/ReviewFragment;Z)V
    .registers 2

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a(Z)V

    return-void
.end method

.method static synthetic e(Lcom/bzbs/marketplace/fragment/ReviewFragment;)I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->s:I

    return v0
.end method

.method private e()V
    .registers 2

    .prologue
    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->n:Z

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->g:Ljava/util/ArrayList;

    .line 283
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->d()V

    .line 284
    return-void
.end method

.method static synthetic e(Lcom/bzbs/marketplace/fragment/ReviewFragment;Z)Z
    .registers 2

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->B:Z

    return p1
.end method

.method private f()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 288
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->i:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->a(Ljava/util/ArrayList;)V

    .line 290
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_21

    .line 291
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 298
    :goto_1c
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->edtTextComment:Landroid/widget/EditText;

    if-nez v0, :cond_2c

    .line 307
    :goto_20
    return-void

    .line 294
    :cond_21
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_1c

    .line 301
    :cond_2c
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->edtTextComment:Landroid/widget/EditText;

    new-instance v1, Lcom/bzbs/marketplace/fragment/ReviewFragment$5;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment$5;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_20
.end method

.method static synthetic f(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->d()V

    return-void
.end method

.method static synthetic g(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Lcom/bzbs/marketplace/adapter/ReviewAdapter;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->i:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    return-object v0
.end method

.method private g()V
    .registers 3

    .prologue
    .line 374
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_a

    .line 375
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 377
    :cond_a
    return-void
.end method

.method private h()V
    .registers 4

    .prologue
    .line 591
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->contentPager:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 592
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 594
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bzbs/marketplace/sticker/StickerUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/bzbs/marketplace/fragment/ReviewFragment$8;

    invoke-direct {v2, p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment$8;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    .line 595
    invoke-virtual {v2}, Lcom/bzbs/marketplace/fragment/ReviewFragment$8;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 594
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->l:Ljava/util/ArrayList;

    .line 597
    new-instance v0, Lcom/bzbs/marketplace/adapter/pager/StickerPagerAdapter;

    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->l:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/bzbs/marketplace/adapter/pager/StickerPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->k:Lcom/bzbs/marketplace/adapter/pager/StickerPagerAdapter;

    .line 598
    new-instance v0, Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->l:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->h:Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;

    .line 600
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->k:Lcom/bzbs/marketplace/adapter/pager/StickerPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/PagerAdapter;)V

    .line 601
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->listViewHorizontal:Lit/sephiroth/android/library/widget/HListView;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->h:Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/widget/ListAdapter;)V

    .line 602
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->listViewHorizontal:Lit/sephiroth/android/library/widget/HListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->setSmoothScrollbarEnabled(Z)V

    .line 604
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/bzbs/marketplace/fragment/ReviewFragment$9;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment$9;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 620
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->listViewHorizontal:Lit/sephiroth/android/library/widget/HListView;

    new-instance v1, Lcom/bzbs/marketplace/fragment/ReviewFragment$10;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment$10;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->a(Lit/sephiroth/android/library/widget/AdapterView$OnItemClickListener;)V

    .line 629
    return-void
.end method

.method static synthetic h(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->e()V

    return-void
.end method

.method private i()V
    .registers 5

    .prologue
    .line 652
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->contentPager:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 653
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 654
    new-instance v0, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->j:Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;

    .line 655
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 656
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->j:Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 658
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->j:Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;

    new-instance v1, Lcom/bzbs/marketplace/fragment/ReviewFragment$11;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment$11;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;->a(Lcom/bzbs/marketplace/listener/OnTabItemListener;)V

    .line 702
    return-void
.end method

.method static synthetic i(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->g()V

    return-void
.end method

.method static synthetic j(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method private j()Z
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 706
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->contentPager:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_27

    .line 707
    :cond_14
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 708
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->contentPager:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 709
    invoke-direct {p0, v1}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a(I)V

    .line 710
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    move v0, v1

    .line 713
    :cond_27
    return v0
.end method

.method private k()V
    .registers 3

    .prologue
    .line 717
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/util/KeyboardStatus;->a(Landroid/view/View;Landroid/app/Activity;)V

    .line 718
    return-void
.end method

.method static synthetic k(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->n:Z

    return v0
.end method

.method static synthetic l(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->f()V

    return-void
.end method

.method static synthetic m(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Z
    .registers 2

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->j()Z

    move-result v0

    return v0
.end method

.method static synthetic n(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic o(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic p(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->h:Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;

    return-object v0
.end method

.method static synthetic q(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Landroid/net/Uri;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->w:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic r(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->B:Z

    return v0
.end method


# virtual methods
.method protected a()I
    .registers 3

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 161
    const v0, 0x7f0400fa

    return v0
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->k()V

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->g:Ljava/util/ArrayList;

    .line 169
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->b()V

    .line 170
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->c()V

    .line 171
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->d()V

    .line 172
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    .prologue
    .line 311
    invoke-super {p0, p1, p2, p3}, Lcom/bzbs/marketplace/base/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 312
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->J:Lcom/tbruyelle/rxpermissions/RxPermissions;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->a([Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lcom/bzbs/marketplace/fragment/ReviewFragment$$Lambda$1;->a(Lcom/bzbs/marketplace/fragment/ReviewFragment;IILandroid/content/Intent;)Lrx/functions/Action1;

    move-result-object v1

    .line 313
    invoke-virtual {v0, v1}, Lrx/Observable;->a(Lrx/functions/Action1;)Lrx/Subscription;

    .line 349
    return-void
.end method

.method public onClickAdd(Landroid/view/View;)V
    .registers 5
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1004fe,
            0x7f100501
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 573
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 575
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_22

    .line 587
    :goto_e
    :pswitch_e
    return-void

    .line 577
    :pswitch_f
    iput-boolean v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->m:Z

    .line 578
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->i()V

    .line 579
    invoke-direct {p0, v2}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a(I)V

    goto :goto_e

    .line 582
    :pswitch_18
    iput-boolean v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->m:Z

    .line 583
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->h()V

    .line 584
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a(I)V

    goto :goto_e

    .line 575
    :pswitch_data_22
    .packed-switch 0x7f1004fe
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_18
    .end packed-switch
.end method

.method public onClickCancel(Landroid/view/View;)V
    .registers 4
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1004f3
        }
    .end annotation

    .prologue
    .line 369
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a(ZZ)V

    .line 370
    return-void
.end method

.method public onClickPost(Landroid/view/View;)V
    .registers 8
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1004f5
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 411
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 412
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 413
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    const v1, 0x7f0900d1

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 519
    :goto_1e
    return-void

    .line 417
    :cond_1f
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_4b

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 419
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->J:Lcom/tbruyelle/rxpermissions/RxPermissions;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.READ_PHONE_STATE"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->a([Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment$$Lambda$2;->a(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Lrx/functions/Action1;

    move-result-object v1

    .line 420
    invoke-virtual {v0, v1}, Lrx/Observable;->a(Lrx/functions/Action1;)Lrx/Subscription;

    goto :goto_1e

    .line 516
    :cond_4b
    new-instance v0, Lcom/bzbs/marketplace/fragment/ReviewFragment$UserLoginListener;

    invoke-direct {v0, p0, v5}, Lcom/bzbs/marketplace/fragment/ReviewFragment$UserLoginListener;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;Lcom/bzbs/marketplace/fragment/ReviewFragment$1;)V

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->a(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 517
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->f:Landroid/os/Handler;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    check-cast v2, Lcom/bzbs/marketplace/activity/ReviewActivity;

    iget-object v2, v2, Lcom/bzbs/marketplace/activity/ReviewActivity;->F:Lcom/facebook/CallbackManager;

    const-string/jumbo v3, "BZB Campaign Review"

    const-string/jumbo v4, "send_review"

    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1e
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 760
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseFragment;->onDestroyView()V

    .line 761
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->D:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    if-eqz v0, :cond_c

    .line 762
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->D:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b()V

    .line 763
    :cond_c
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->C:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    if-eqz v0, :cond_15

    .line 764
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->C:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;->a()V

    .line 765
    :cond_15
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 729
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseFragment;->onPause()V

    .line 730
    invoke-static {}, Lcom/bzbs/marketplace/util/StickerEvents;->a()V

    .line 731
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 723
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseFragment;->onResume()V

    .line 724
    new-instance v0, Lcom/bzbs/marketplace/fragment/ReviewFragment$CheckListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bzbs/marketplace/fragment/ReviewFragment$CheckListener;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;Lcom/bzbs/marketplace/fragment/ReviewFragment$1;)V

    invoke-static {v0}, Lcom/bzbs/marketplace/util/StickerEvents;->a(Lcom/bzbs/marketplace/util/StickerEvents$EventsListener;)V

    .line 725
    return-void
.end method
