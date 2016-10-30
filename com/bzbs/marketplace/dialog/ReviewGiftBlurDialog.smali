.class public Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;
.super Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;
.source "ReviewGiftBlurDialog.java"


# static fields
.field private static b:Landroid/app/Activity;


# instance fields
.field a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

.field private c:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:F

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;-><init>()V

    .line 60
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->d:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->e:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/bzbs/bean/Campaign;IFZZ)Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;
    .registers 10

    .prologue
    .line 76
    new-instance v0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    invoke-direct {v0}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;-><init>()V

    .line 77
    sput-object p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->b:Landroid/app/Activity;

    .line 78
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 80
    const-string/jumbo v2, "bundle_key_blur_radius"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    const-string/jumbo v2, "bundle_key_down_scale_factor"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 82
    const-string/jumbo v2, "bundle_key_dimming_effect"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    const-string/jumbo v2, "bundle_key_debug_effect"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 84
    const-string/jumbo v2, ":data"

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->setArguments(Landroid/os/Bundle;)V

    .line 88
    return-object v0
.end method

.method static synthetic a(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->d:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;)V
    .registers 7

    .prologue
    .line 144
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->c:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlReviewSurvey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    new-instance v1, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    sget-object v2, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->b:Landroid/app/Activity;

    const/4 v3, 0x0

    sget-object v4, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->a:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V

    iput-object v1, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    .line 146
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    new-instance v1, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2;

    invoke-direct {v1, p0, p1}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2;-><init>(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V

    .line 209
    return-void
.end method

.method static synthetic b(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;)Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->c:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    return-object v0
.end method

.method static synthetic b(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 57
    sget-object v0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->b:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected a(F)I
    .registers 4

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 305
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public a(Landroid/view/View;)V
    .registers 7

    .prologue
    .line 403
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->f:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 404
    const v0, 0x7f0901d3

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->e:Ljava/lang/String;

    .line 418
    :goto_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->c:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/buzz?token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 419
    const-string/jumbo v1, "PONG"

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

    .line 420
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 421
    const-string/jumbo v2, "message"

    iget-object v3, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string/jumbo v2, "PONG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string/jumbo v2, "rating"

    iget-object v3, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string/jumbo v2, "PONG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rating="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    new-instance v2, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    sget-object v3, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->b:Landroid/app/Activity;

    sget-object v4, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->b:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V

    .line 426
    new-instance v0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$3;

    invoke-direct {v0, p0}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$3;-><init>(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;)V

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V

    .line 462
    return-void

    .line 405
    :cond_be
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->f:Ljava/lang/String;

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 406
    const v0, 0x7f0901d4

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->e:Ljava/lang/String;

    goto/16 :goto_14

    .line 407
    :cond_d4
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->f:Ljava/lang/String;

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 408
    const v0, 0x7f0901d5

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->e:Ljava/lang/String;

    goto/16 :goto_14

    .line 409
    :cond_ea
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->f:Ljava/lang/String;

    const-string/jumbo v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    .line 410
    const v0, 0x7f0901d6

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->e:Ljava/lang/String;

    goto/16 :goto_14

    .line 411
    :cond_100
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->f:Ljava/lang/String;

    const-string/jumbo v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_116

    .line 412
    const v0, 0x7f0901d7

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->e:Ljava/lang/String;

    goto/16 :goto_14

    .line 414
    :cond_116
    const-string/jumbo v0, "N/A"

    iput-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->e:Ljava/lang/String;

    goto/16 :goto_14
.end method

.method protected a()Z
    .registers 2

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->j:Z

    return v0
.end method

.method protected b()Z
    .registers 2

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->i:Z

    return v0
.end method

.method protected c()Z
    .registers 2

    .prologue
    .line 288
    const/4 v0, 0x1

    return v0
.end method

.method protected d()F
    .registers 2

    .prologue
    .line 293
    iget v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->h:F

    return v0
.end method

.method protected e()I
    .registers 2

    .prologue
    .line 298
    iget v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->g:I

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 6

    .prologue
    .line 94
    invoke-super {p0, p1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 96
    invoke-virtual {p0}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 97
    const-string/jumbo v1, "bundle_key_blur_radius"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->g:I

    .line 98
    const-string/jumbo v1, "bundle_key_down_scale_factor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->h:F

    .line 99
    const-string/jumbo v1, "bundle_key_dimming_effect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->i:Z

    .line 100
    const-string/jumbo v1, "bundle_key_debug_effect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->j:Z

    .line 102
    const-string/jumbo v1, "PONG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BUNDLE_KEY_DATA="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":data"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-string/jumbo v2, ":data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    iput-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->c:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    .line 105
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 109
    invoke-super {p0, p1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 116
    new-instance v0, Landroid/app/Dialog;

    sget-object v1, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->b:Landroid/app/Activity;

    const v2, 0x7f0d0102

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 117
    sget-object v1, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->b:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040121

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    new-instance v2, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;

    invoke-direct {v2, p0, v1, v5}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;-><init>(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;Landroid/view/View;Z)V

    .line 121
    invoke-direct {p0, v2}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->a(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;)V

    .line 122
    iget-object v3, v2, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->imgClose:Landroid/widget/ImageView;

    new-instance v4, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$1;

    invoke-direct {v4, p0}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$1;-><init>(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v3, v2, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->imgRating1:Landroid/widget/ImageView;

    new-instance v4, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;

    invoke-direct {v4, p0, v2, v5}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;-><init>(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v3, v2, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->imgRating2:Landroid/widget/ImageView;

    new-instance v4, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v2, v5}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;-><init>(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v3, v2, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->imgRating3:Landroid/widget/ImageView;

    new-instance v4, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;

    const/4 v5, 0x3

    invoke-direct {v4, p0, v2, v5}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;-><init>(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v3, v2, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->imgRating4:Landroid/widget/ImageView;

    new-instance v4, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;

    const/4 v5, 0x4

    invoke-direct {v4, p0, v2, v5}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;-><init>(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v3, v2, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->imgRating5:Landroid/widget/ImageView;

    new-instance v4, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;

    const/4 v5, 0x5

    invoke-direct {v4, p0, v2, v5}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;-><init>(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 137
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 138
    return-object v0
.end method
