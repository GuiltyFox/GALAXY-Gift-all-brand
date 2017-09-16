.class public Lcom/samsung/privilege/activity/StampBranchActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "StampBranchActivity.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/bzbs/bean/StampAgency;

.field private c:Landroid/os/Handler;

.field private d:Landroid/app/ProgressDialog;

.field private e:Landroid/support/v7/widget/RecyclerView;

.field private f:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private g:Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private n:Ljava/lang/String;

.field private o:J

.field private p:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 60
    const-class v0, Lcom/samsung/privilege/activity/StampBranchActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->a:Ljava/lang/String;

    .line 71
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->h:Z

    .line 72
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->i:Z

    .line 77
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->n:Ljava/lang/String;

    .line 79
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->o:J

    .line 80
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->p:J

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/StampBranchActivity;I)I
    .registers 2

    .prologue
    .line 57
    iput p1, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->k:I

    return p1
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/StampBranchActivity;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->m:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/StampBranchActivity;Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;)Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->g:Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/StampBranchActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->n:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/StampBranchActivity;Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/StampBranchActivity;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 177
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->c:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/StampBranchActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/StampBranchActivity$2;-><init>(Lcom/samsung/privilege/activity/StampBranchActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 184
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 247
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->h:Z

    if-ne v0, v4, :cond_6

    .line 345
    :goto_5
    return-void

    .line 251
    :cond_6
    const-string/jumbo v0, ""

    const v1, 0x7f0900e6

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/StampBranchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->d:Landroid/app/ProgressDialog;

    .line 254
    :try_start_16
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->d:Landroid/app/ProgressDialog;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 255
    if-eqz v0, :cond_41

    .line 256
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampBranchActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampBranchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 257
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 258
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampBranchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_41} :catch_12f

    .line 264
    :cond_41
    :goto_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->W:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/api/place"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?agencyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->b:Lcom/bzbs/bean/StampAgency;

    iget-object v1, v1, Lcom/bzbs/bean/StampAgency;->agencyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&require_campaign=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&mode=nearby"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&distance=10000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&center="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    if-lez p2, :cond_e1

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&$skip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    :cond_e1
    iget-object v1, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iput-boolean v4, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->h:Z

    .line 277
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 278
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->V:Z

    .line 279
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 280
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 281
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampBranchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 282
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/StampBranchActivity$5;

    invoke-direct {v1, p0, p2}, Lcom/samsung/privilege/activity/StampBranchActivity$5;-><init>(Lcom/samsung/privilege/activity/StampBranchActivity;I)V

    .line 283
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_5

    .line 260
    :catch_12f
    move-exception v0

    goto/16 :goto_41
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/StampBranchActivity;Z)Z
    .registers 2

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/StampBranchActivity;I)I
    .registers 2

    .prologue
    .line 57
    iput p1, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->l:I

    return p1
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/StampBranchActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/StampBranchActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/StampBranchActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/StampBranchActivity;Z)Z
    .registers 2

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/StampBranchActivity;I)I
    .registers 2

    .prologue
    .line 57
    iput p1, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->j:I

    return p1
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/StampBranchActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/samsung/privilege/activity/StampBranchActivity;)Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->f:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method static synthetic e(Lcom/samsung/privilege/activity/StampBranchActivity;)Z
    .registers 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->h:Z

    return v0
.end method

.method private f()V
    .registers 3

    .prologue
    .line 187
    const v0, 0x7f1001f1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampBranchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->e:Landroid/support/v7/widget/RecyclerView;

    .line 188
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->e:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 190
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->f:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 191
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->f:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 193
    const v0, 0x7f1001ee

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampBranchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->b:Lcom/bzbs/bean/StampAgency;

    iget-object v1, v1, Lcom/bzbs/bean/StampAgency;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    const v0, 0x7f1001f0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampBranchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->b:Lcom/bzbs/bean/StampAgency;

    iget-object v1, v1, Lcom/bzbs/bean/StampAgency;->stampImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    const v0, 0x7f1001ed

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampBranchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 197
    return-void
.end method

.method static synthetic f(Lcom/samsung/privilege/activity/StampBranchActivity;)Z
    .registers 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->i:Z

    return v0
.end method

.method static synthetic g(Lcom/samsung/privilege/activity/StampBranchActivity;)I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->k:I

    return v0
.end method

.method private g()V
    .registers 8

    .prologue
    const v6, 0x7f0900e9

    .line 200
    const v0, 0x7f1000dd

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampBranchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 201
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v2, "###,###,###"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampBranchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->D(Landroid/content/Context;)J

    move-result-wide v2

    .line 203
    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampBranchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 205
    if-eqz v4, :cond_a5

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a5

    .line 206
    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6f

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/StampBranchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " <font color=\'#ffffff\'><big>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</big></font> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0900eb

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/StampBranchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :goto_6e
    return-void

    .line 209
    :cond_6f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/StampBranchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " <font color=\'#ffffff\'><big>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</big></font> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0900ea

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/StampBranchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6e

    .line 212
    :cond_a5
    const v1, 0x7f0900ed

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/StampBranchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6e
.end method

.method static synthetic h(Lcom/samsung/privilege/activity/StampBranchActivity;)I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->j:I

    return v0
.end method

.method private h()V
    .registers 3

    .prologue
    .line 221
    const v0, 0x7f10011d

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampBranchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 222
    new-instance v1, Lcom/samsung/privilege/activity/StampBranchActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/StampBranchActivity$3;-><init>(Lcom/samsung/privilege/activity/StampBranchActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 229
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->e:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/samsung/privilege/activity/StampBranchActivity$4;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/StampBranchActivity$4;-><init>(Lcom/samsung/privilege/activity/StampBranchActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 244
    return-void
.end method

.method static synthetic i(Lcom/samsung/privilege/activity/StampBranchActivity;)I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->l:I

    return v0
.end method

.method static synthetic j(Lcom/samsung/privilege/activity/StampBranchActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->d:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic k(Lcom/samsung/privilege/activity/StampBranchActivity;)Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->g:Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;

    return-object v0
.end method

.method static synthetic l(Lcom/samsung/privilege/activity/StampBranchActivity;)Landroid/support/v7/widget/RecyclerView;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->e:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic m(Lcom/samsung/privilege/activity/StampBranchActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .registers 2

    .prologue
    .line 159
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 120
    new-instance v0, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;

    invoke-direct {v0}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;-><init>()V

    .line 121
    invoke-virtual {v0, p0}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->a(Landroid/content/Context;)Lcom/samsung/privilege/util/RxPermissionUtils$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0, v4}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->a(Z)Lcom/samsung/privilege/util/RxPermissionUtils$Builder;

    move-result-object v0

    const-string/jumbo v1, "PERMISSION READ_PHONE_STATE Denied"

    .line 123
    invoke-virtual {v0, v1}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->a(Ljava/lang/String;)Lcom/samsung/privilege/util/RxPermissionUtils$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v1, v2

    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v1, v4

    .line 124
    invoke-virtual {v0, v1}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->a([Ljava/lang/String;)Lcom/samsung/privilege/util/RxPermissionUtils$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/StampBranchActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/StampBranchActivity$1;-><init>(Lcom/samsung/privilege/activity/StampBranchActivity;)V

    .line 125
    invoke-virtual {v0, v1}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->a(Lcom/samsung/privilege/util/AddOnPermissions;)Lcom/samsung/privilege/util/RxPermissionUtils$Builder;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->a()Lcom/samsung/privilege/util/RxPermissionUtils;

    .line 154
    return-void
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 2

    .prologue
    .line 164
    return-void
.end method

.method public doBack(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampBranchActivity;->finish()V

    .line 218
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v0, 0x7f04004c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampBranchActivity;->setContentView(I)V

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->c:Landroid/os/Handler;

    .line 89
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampBranchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "stamp_agency"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/StampAgency;

    iput-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->b:Lcom/bzbs/bean/StampAgency;

    .line 91
    invoke-direct {p0}, Lcom/samsung/privilege/activity/StampBranchActivity;->f()V

    .line 92
    invoke-direct {p0}, Lcom/samsung/privilege/activity/StampBranchActivity;->h()V

    .line 95
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->a:Lcom/google/android/gms/common/api/Api;

    .line 96
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->a(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->a(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->a(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->b()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->m:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 100
    const-string/jumbo v0, "Stamp Branch"

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 168
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 170
    invoke-direct {p0}, Lcom/samsung/privilege/activity/StampBranchActivity;->g()V

    .line 174
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 104
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 106
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->m:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b()V

    .line 107
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->m:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_9

    .line 112
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity;->m:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->c()V

    .line 114
    :cond_9
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 115
    return-void
.end method
